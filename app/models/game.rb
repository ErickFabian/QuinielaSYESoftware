class Game < ActiveRecord::Base
  belongs_to :quiniela
  has_many :choices

  as_enum :result, empate: 0, local: 1, visitante: 2
end
