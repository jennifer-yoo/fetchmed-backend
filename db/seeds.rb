User.destroy_all
Patient.destroy_all
Doctor.destroy_all
Medication.destroy_all
Order.destroy_all

User.create(first: "Jennifer", last: "Yoo", email: "jenn@email.com", password: "1234", provider: false)
User.create(first: "John", last: "Smith", email: "johnsmith@doctor.com", password: "1234", provider: true)
User.create(first: "John", last: "Doe", email: "johndoe@doctor.com", password: "1234", provider: true)

jenn = User.find_by(first: "Jennifer")
smith = User.find_by(first: "John")
doe = User.find_by(last: "Doe")

Patient.create(user_id: jenn.id)
Doctor.create(user_id: smith.id, speciality: "Primary")
Doctor.create(user_id: doe.id, speciality: "ENT")

Medication.create(name: "Amoxillicin", strength: 5, rxnum: 1111, refill: 2, quantity: 14, instructions: "Take once a day")
Medication.create(name: "Benadryl", strength: 10, rxnum: 1112, refill: 1, quantity: 30, instructions: "Take once a day before bed")
# Medication.create(name: "Lorazapam", strength: 5, rxnum: 1113, refills: 0, quantity: 30)
# Medication.create(name: "Prednisone", strength: 5, rxnum: 1114, refills: 0, quantity: 7)
# Medication.create(name: "Metformin", strength: 20, rxnum: 1115, refills: 5, quantity: 30)

amox = Medication.find_by(name: "Amoxillicin")

Order.create(patient_id: jenn.id, medication_id: amox.id, confirmation_num: 12345)

