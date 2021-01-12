class Order < ApplicationRecord
    belongs_to :patient, class_name: "User"
    belongs_to :doctor, class_name: "User"
    belongs_to :medication
end
