require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/student')
also_reload('./models/*')

get "/students" do
  @students = Student.all()
  erb(:index)
end

get "/students/new" do
  erb(:new)
end

post "/students" do
  Student.new(params).save()
  erb(:create)
end
