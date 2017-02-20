class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]


  validates_presence_of :first_name, :last_name

  has_one :cart

  after_create :create_cart, :signup_mailer

  def signup_mailer
    SignupMailer.new_signup(self).deliver
  end

  def create_cart
    Cart.create(user_id: self.id)
  end

  def email_display
    email.split('@').first
  end

  def self.from_omniauth(auth)
    where(uid: auth.uid, provider: auth.provider).first_or_create do |user|
      user.email = auth.info.email
      user.first_name = auth.extra.raw_info[:name].split(' ')[0]
      user.last_name = auth.extra.raw_info[:name].split(' ')[1]
      user.password = Devise.friendly_token[0, 20]
    end
  end
end
