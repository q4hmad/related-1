require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @users = User.all()
  @groups = Group.all
  erb(:index)
end

post('/groups') do
@id = params['id']
@name = params['name']
address = params['address']
@email = params['email']
@user = User.new({:name => @name, :address => address, :email => @email})
@user.save
erb(:groups)
end



post('/groups') do
  @id = params['id']
  @interest = params['interest']
  @description = params['description']
  binding.pry
  @groups = Group.new({:interest => @interest, :description => @description, :id => 'id'})
  @groups.save
  erb(:groups)
end
