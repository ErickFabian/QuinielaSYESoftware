require 'rails_helper'

RSpec.describe Quiniela, type: :model do
    it { should have_many :games }

    it { should validate_presence_of :name }
    it { should validate_presence_of :start_at }
    it { should validate_presence_of :end_at }
    it { should validate_presence_of :cost }
    
    it { should accept_nested_attributes_for :games }
end
