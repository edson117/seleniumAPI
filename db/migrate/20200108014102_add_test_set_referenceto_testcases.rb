class AddTestSetReferencetoTestcases < ActiveRecord::Migration[6.0]
  def change
    add_reference :testcases, :testset, foreign_key: true 
  end
end
