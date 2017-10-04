require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @users = User.all()
  @groups = Group.all
  erb(:index)
end

post('/entry') do
@groups = Group.all
name = params['name']
address = params['address']
email = params['email']
@user = User.new({:name => name, :address => address, :email => email})
if @user.address = '1000 Vista Ave'
erb(:groups)
else
  (:deny)
  end
end

get('/group/:id') do
  @group = Group.find(params[:id])
  @services = Services.all
  @users = Users.all
  erb(:services)
end


post('/create_group') do
  interest = params['group']
  description = params['description']
  @group = Group.new({:interest => interest, :description => description})
  @group.save
  @groups = Group.all
  erb(:groups)
end

get('/services/:id') do
  id = params[:id]
  @group = Group.find(params.fetch('id').to_i)
  erb(:services)
end

post('/create_service/:id') do
  @services = Service.all
  @users = User.all
  @group = Group.find(params.fetch('id').to_i)
  location = params['service']
  detail = params['detail']
  @service = Service.new({:location => location, :detail => detail})
  @service.save
  @group.services.push(@service)
  erb(:services)
end

post('/create_user/:id') do
  @services = Service.all
  @users = User.all
  @group = Group.find(params.fetch('id').to_i)
  name = params['name']
  email = params['email']
  @user = User.new({:name => name, :email => email})
  @user.save
  @group.users.push(@user)
  erb(:services)
end

get('/service_info/:id') do
  @service = Service.find(params.fetch('id').to_i)
  erb(:service_info)
end

get('/user_info/:id') do
  @user = User.find(params.fetch('id').to_i)
  erb(:user_info)
end
