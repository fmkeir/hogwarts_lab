require('pry')
require_relative('../models/student')

Student.delete_all()

student1 = Student.new({
  "first_name" => "John",
  "second_name" => "Johnson",
  "house" => "Hufflepuff",
  "age" => 11
  })
student2 = Student.new({
  "first_name" => "Alan",
  "second_name" => "Alanson",
  "house" => "Slytherin",
  "age" => 17
  })
  student1.save()
  student2.save()

  binding.pry
  nil
