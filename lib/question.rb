class Question < ActiveRecord::Base
  has_many(:surveys)
  has_many :people, through: :surveys
end
