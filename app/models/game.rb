class Game < ActiveRecord::Base
  belongs_to :quiniela
  has_many :choices
end
