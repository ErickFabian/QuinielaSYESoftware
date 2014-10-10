class Choices < ActiveRecord::Base
  belongs_to :users
  belongs_to :games
  
  as_enum :result, draw: 0, local: 1, visitor: 2
end