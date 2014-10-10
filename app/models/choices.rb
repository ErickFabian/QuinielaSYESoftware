class Choices < ActiveRecord::Base
  belongs_to :users
  belongs_to :games
  
  as_enum :result, nil: -1, empate: 0, local: 1, visitante: 2
end