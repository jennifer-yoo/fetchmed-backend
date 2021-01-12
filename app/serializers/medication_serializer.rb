class MedicationSerializer < ActiveModel::Serializer
  attributes :id, :name, :strength, :refill, :quantity, :rxnum, :patient_id, :doctor_id
end
