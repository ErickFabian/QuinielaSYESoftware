class Game < ActiveRecord::Base
  belongs_to :quiniela
  has_many :choices

  belongs_to :local, class_name: 'Team'
  belongs_to :visitor, class_name: 'Team'

  delegate :name, to: :local, prefix: true
  delegate :name, to: :visitor, prefix: true

  as_enum :result, in_progress: -1, draw: 0, local: 1, visitor: 2
end
