class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :authentication_token, uniqueness: true

  before_create :generate_authentication_token!

  has_many :products, dependent: :destroy
  has_many :orders, dependent: :destroy

  def generate_authentication_token!
    begin
      self.authentication_token = Devise.friendly_token
    end while self.class.exists?(authentication_token: authentication_token)
  end
end
