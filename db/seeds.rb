require('pry')
require_relative('../models/student')
require_relative('../models/house')

Student.delete_all()
House.delete_all()

gryffindor = House.new({
  "house_name" => "Gryffindor",
  "logo_url" => "https://toppng.com/public/uploads/preview/ryffindor-crest-harry-potter-gryffindor-logo-11562851409msf1n4vpev.png"
  })
ravenclaw = House.new({
  "house_name" => "Ravenclaw",
  "logo_url" => "https://www.pinclipart.com/picdir/middle/113-1138734_crest-png-for-free-download-on-harry-potter.png"
  })
slytherin = House.new({
  "house_name" => "Slytherin",
  "logo_url" => "https://toppng.com/uploads/preview/slytherin-sticker-1156332001015i5o3h765.png"
  })
hufflepuff = House.new({
  "house_name" => "Hufflepuff",
  "logo_url" => "https://cpng.pikpng.com/pngl/s/135-1354026_hufflepuff-sticker-hufflepuff-png-clipart.png"
  })
gryffindor.save()
ravenclaw.save()
slytherin.save()
hufflepuff.save()

student1 = Student.new({
  "first_name" => "John",
  "second_name" => "Johnson",
  "house_id" => hufflepuff.id,
  "age" => 11
  })
student2 = Student.new({
  "first_name" => "Alan",
  "second_name" => "Alanson",
  "house_id" => slytherin.id,
  "age" => 17
  })
student1.save()
student2.save()


binding.pry
nil
