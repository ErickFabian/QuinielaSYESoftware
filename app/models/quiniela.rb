class Quiniela < ActiveRecord::Base
  has_many :games
  has_many :choices, through: :games
  has_and_belongs_to_many :users
  
  validates :name, :start_at, :end_at, :cost, presence: true

  accepts_nested_attributes_for :games, allow_destroy: true
  accepts_nested_attributes_for :users, allow_destroy: true

  scope :active, -> { where('start_at >= ?', Date.today) } 
  scope :inactive, -> { where('start_at < ?', Date.today) } 

  def suscribed?(user)
    users.include?(user)
  end

  def unsuscribed?(user)
    !suscribed?(user)
  end
end