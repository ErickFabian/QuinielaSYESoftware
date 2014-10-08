class User < ActiveRecord::Base
  validates :username, :role, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable       
end
