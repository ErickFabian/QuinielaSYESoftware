class User < ActiveRecord::Base
  validates :username, :role, presence: true

  has_and_belongs_to_many :quinielas

  devise  :database_authenticatable,
          :registerable,
          :recoverable,
          :rememberable,
          :trackable,
          :validatable
end
