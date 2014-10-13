class AddResultToChoices < ActiveRecord::Migration
  def change
    add_column :choices, :result_cd, :integer
  end
end
