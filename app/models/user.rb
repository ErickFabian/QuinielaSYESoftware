class User < ActiveRecord::Base
  has_many :choices
  has_and_belongs_to_many :quinielas

  as_enum :role, [:admin, :general], map: :string

  validates_format_of :email,:with => Devise.email_regexp

  devise  :database_authenticatable,
          :registerable,
          :recoverable,
          :rememberable,
          :trackable,
          :validatable
end
