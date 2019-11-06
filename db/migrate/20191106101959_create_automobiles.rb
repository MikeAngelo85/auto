class CreateAutomobiles < ActiveRecord::Migration[5.2]
  def change
    create_table :automobiles do |t|
      t. integer :year
      t. string :make
      t. string :model
      t. string :type
      t. string :transmission
      t.timestamps
    end
  end
end
