class Debt < ActiveRecord::Base
  belongs_to :from, class_name: "Participant"
  belongs_to :to, class_name: "Participant"
end
