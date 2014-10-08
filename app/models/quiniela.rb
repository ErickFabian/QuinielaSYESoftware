class Quiniela < ActiveRecord::Base
  has_many :games

  validates :name, :start_at, :end_at, :cost, presence: true

  accepts_nested_attributes_for :games, allow_destroy: true
end