class CreateChoiceTable < ActiveRecord::Migration
  def change
    create_table :choice do |t|
      t.string :result_cd
    end
  end
end
