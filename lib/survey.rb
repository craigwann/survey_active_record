class Survey < ActiveRecord::Base
  belongs_to(:people)
  belongs_to(:questions)

end
