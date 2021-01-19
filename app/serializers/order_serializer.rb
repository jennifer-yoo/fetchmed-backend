class OrderSerializer < ActiveModel::Serializer
  attributes :id, :patient_id, :doctor_id, :medication_id, :confirmation_num

  belongs_to :patient, include: :all
  belongs_to :medication, include: :all
  belongs_to :doctor, include: :all
end
