class User < ActiveRecord::Base
  has_many :choices
  has_and_belongs_to_many :quinielas

  devise  :database_authenticatable,
          :registerable,
          :recoverable,
          :rememberable,
          :trackable,
          :validatable
end
