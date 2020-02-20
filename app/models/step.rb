class Step < ApplicationRecord
    belongs_to :testcase
    has_one :action
    has_one :locator_type
end
