class CreateActions < ActiveRecord::Migration[6.0]
  def change
    create_table :actions do |t|
      t.string :name
      t.belongs_to :step
      t.timestamps
    end
  end
end
