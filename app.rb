require("sinatra")
require("sinatra/reloader")
require("sinatra/activerecord")
also_reload("lib/**/*.rb")
require("./lib/person")
require("./lib/question")
require("./lib/survey")
require("pg")
require "pry"

get("/") do
  @surveys = Survey.all()
  erb(:index)
end

post("/") do
  title = params.fetch('survey_title')
  survey = Survey.create({:title => title})
  @surveys = Survey.all()
  erb(:index)
end

get ("/surveys/:id") do
  survey_id = params.fetch('id').to_i
  @survey = Survey.find(survey_id)
  erb(:survey)
end
