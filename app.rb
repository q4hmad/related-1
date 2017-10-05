require("bundler/setup")
Bundler.require(:default)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @users = User.all
  @groups = Group.all
  erb(:groups)
end

post('/entry') do
@groups = Group.all
address = params['address']
@user = User.new({:address => address})
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
  @group = Group.find(params.fetch('id').to_i)
  @services = Service.all
  erb(:services)
end

post('/create_service/:id') do
  @services = Service.all
  @user = User.find(params.fetch('id').to_i)
  location = params['service']
  detail = params['detail']
  @service = Service.new({:location => location, :detail => detail})
  @service.save
  @user.services.push(@service)
  erb(:congrats)
end

post('/create_user/:id') do
  @services = Service.all
  @users = User.all
  @group = Group.find(params.fetch('id').to_i)
  name = params['name']
  email = params['email']
  @user = User.new({:name => name, :email => email, :address => nil, :information => nil})
  @user.save
  @group.users.push(@user)
  erb(:services)
end

get('/service_info/:id') do
  @user = User.find(params.fetch('id').to_i)
  @service = Service.find(params.fetch('id').to_i)
  erb(:service_info)
end

get('/user_info/:id') do
  @user = User.find(params.fetch('id').to_i)
  erb(:user_info)
end

patch('/more_info/:id') do
  @user = User.all
  @user = User.find(params.fetch('id').to_i)
  information = params['information']
  @user_info = User.new({:name => nil, :email => nil, :address => nil, :information => information})
  @user.update({:information => @user_info.information})
  erb(:user_info)
end

get('/services_entered/:id') do
  @user = User.find(params.fetch('id').to_i)
  erb(:user_info)
end

get('/groups_user') do
  @groups = Group.all
  erb(:groups)
end
