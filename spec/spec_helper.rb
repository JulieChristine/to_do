require('rspec')
require('list')
require('task')
require('pg')

ENV['RACK_ENV'] = 'test'


RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM lists *;")
    DB.exec("DELETE FROM tasks *;")
  end
end
