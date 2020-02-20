class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.integer :number
      t.string :description
      t.string :action
      t.string :locatorType
      t.string :locator
      t.boolean :skip
      t.references :testcase, foreign_key: true

      t.timestamps
    end
  end
end
