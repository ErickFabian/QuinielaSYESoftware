class Choice < ActiveRecord::Base
  belongs_to :users
  belongs_to :games
  
  as_enum :result, empate: 0, local: 1, visitante: 2
end
