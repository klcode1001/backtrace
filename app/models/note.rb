class Note < ActiveRecord::Base
  has_many :comments
  has_one :best_answer
end
