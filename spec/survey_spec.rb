require('spec_helper')

describe(Survey) do
  describe("#people") do
    it("tells which tasks are in it") do
      test_person = Person.create({:name => "batman"})
      test_survey = Survey.create({:title => "survey1", :people_id => test_person.id})
      # test_survey2 = Survey.create({:title => "survey2", :person_id => test_person.id})
     expect(test_survey.people_id()).to(eq(test_person.id))
    end
  end
  describe("#people") do
    it("tells which tasks are in it") do
      test_person1 = Person.create({:name => "batman"})
      test_person2 = Person.create({:name => "robin"})
      test_survey1 = Survey.create({:title => "survey1", :person_id => test_person1.id})
      test_survey2 = Survey.create({:title => "survey1", :person_id => test_person2.id})
     expect(test_survey.people_id()).to(eq(test_person.id))
    end
  end
end
