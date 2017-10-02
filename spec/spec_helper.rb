ENV['RACK_ENV'] = 'test'

require("bundler/setup")
Bundler.require(:default, :test)
set(:root, Dir.pwd())

require('capybara/rspec')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
require('./app')

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

RSpec.configure do |config|
  config.after(:each) do
    User.all().each() do |store|
      store.destroy()
    end
  end
end

RSpec.configure do |config|
  config.after(:each) do
    Group.all().each() do |brand|
      brand.destroy()
    end
  end
end

RSpec.configure do |config|
  config.after(:each) do
    Service.all().each() do |brand|
      brand.destroy()
    end
  end
end

RSpec.configure do |config|
  config.after(:each) do
    Community.all().each() do |brand|
      brand.destroy()
    end
  end
end
