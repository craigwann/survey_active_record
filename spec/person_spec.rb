require('spec_helper')

  describe(Person) do
    describe("#name") do
      it("tells which tasks are in it") do
        test_person = Person.create({:name => "Harry"})
       expect(test_person.name()).to(eq("Harry"))
      end
    end
  end
