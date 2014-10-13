class Game < ActiveRecord::Base
  belongs_to :quiniela
  has_many :choices

  as_enum :result, draw: 0, local: 1, visitor: 2
end
