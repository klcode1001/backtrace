class BestAnswer < ActiveRecord::Base
  belongs_to :note
  belongs_to :comment
end
