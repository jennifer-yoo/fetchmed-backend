class OrderSerializer < ActiveModel::Serializer
  attributes :id, :patient_id, :doctor_id, :medication_id, :confirmation_num
end
