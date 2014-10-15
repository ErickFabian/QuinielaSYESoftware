class Choice < ActiveRecord::Base
  as_enum :result, draw: 0, local: 1, visitor: 2
end