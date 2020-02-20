class RemoveLocatortypeFromSteps < ActiveRecord::Migration[6.0]
  def change
    remove_column :steps, :locatorType, :string
    remove_column :steps, :action, :string
  end
end
