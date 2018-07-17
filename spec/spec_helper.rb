ENV['RACK_ENV'] = 'test'

require("rspec")
require("pg")
require("pry")
require("sinatra/activerecord")
require("./lib/person")
require("./lib/question")
require("./lib/survey")

RSpec.configure do |config|
  config.after(:each) do
    Person.all().each() do |task|
      task.destroy()
    end
  end
end
