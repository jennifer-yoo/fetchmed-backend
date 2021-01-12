class User < ApplicationRecord
    has_many :orders
    has_many :medications, through: :orders

    belongs_to :patient, class_name: "User", foreign_key: "patient_id"
    belongs_to :doctor, class_name: "User", foreign_key: "doctor_id"
end
