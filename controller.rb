require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/student')
require_relative('./models/house')
also_reload('./models/*')

get "/students" do
  @students = Student.all()
  @hogwarts_logo = "https://www.freepnglogos.com/uploads/hogwarts-logo-png/hogwarts-logo-shadopro-deviantart-0.png"
  erb(:index)
end

get "/students/new" do
  @houses = House.all()
  erb(:new)
end

get "/students/:id" do
  @student = Student.find(params[:id])
  erb(:show)
end

post "/students" do
  Student.new(params).save()
  erb(:create)
end
