class Testcase < ApplicationRecord
    belongs_to :testset
    has_many :steps
    
end
