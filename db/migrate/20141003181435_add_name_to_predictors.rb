class AddNameToPredictors < ActiveRecord::Migration
  def change
    add_column :predictors, :name, :string
  end
end
