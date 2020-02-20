class AddTestcaseReferenceToSteps < ActiveRecord::Migration[6.0]
  def change
    add_reference :steps, :testcase, foreign_key: true
  end
end
