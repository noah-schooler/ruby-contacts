require ('contact')
require ('address')
require ('rspec')

describe('Storage') do
  describe('Contact') do
    before() do
      Storage::Contact.clear
    end
    describe('#initialize') do
      it("initialized a new contact") do
        contact = Storage::Contact.new({:last=> "Martin", :first=> "Henry", :job=> "Gas station attendant", :company=> "Shell", :type=> "Co-worker"})
        expect(contact.last).to(eq("Martin"))
        expect(contact.first).to(eq("Henry"))
        expect(contact.job).to(eq("Gas station attendant"))
        expect(contact.company).to(eq("Shell"))
        expect(contact.type).to(eq("Co-worker"))
      end
    end
    describe('#name') do
      it('returns the contacts full name') do
        contact = Storage::Contact.new({:last=> "Martin", :first=> "Henry", :job=> "Gas station attendant", :company=> "Shell", :type=> "Co-worker"})
        expect(contact.name).to(eq("Henry Martin"))
      end
    end
    describe('#save') do
      it('saves a contact to the contacts array') do
        contact = Storage::Contact.new({:last=> "Martin", :first=> "Henry", :job=> "Gas station attendant", :company=> "Shell", :type=> "Co-worker"})
        expect(Storage::Contact.all).to(eq([contact]))
      end
    end
    describe('.clear') do
      it('clears the list of contacts') do
        contact = Storage::Contact.new({:last=> "Martin", :first=> "Henry", :job=> "Gas station attendant", :company=> "Shell", :type=> "Co-worker"})
        expect(Storage::Contact.clear).to(eq([]))
      end
    end
    describe('.get_by_id') do
      it('finds a given contact based on its ID') do
        contact1 = Storage::Contact.new({:last=> "Martin", :first=> "Henry", :job=> "Gas station attendant", :company=> "Shell", :type=> "Co-worker"})
        contact2 = Storage::Contact.new({:last=> "Lockman", :first=> "Susan", :job=> "Cashier", :company=> "McDonalds", :type=> "Friend"})
        contact3 = Storage::Contact.new({:last=> "Brown", :first=> "James", :job=> "Student", :company=> "Portland State University", :type=> "Brother"})
        expect(Storage::Contact.get_by_id(1)).to(eq(contact2))
      end
    end
    # describe('.get_names') do
    #   it('gets an array of names of all contacts') do
    #     contact1 = Storage::Contact.new({:last=> "Martin", :first=> "Henry", :job=> "Gas station attendant", :company=> "Shell", :type=> "Co-worker"})
    #     contact2 = Storage::Contact.new({:last=> "Lockman", :first=> "Susan", :job=> "Cashier", :company=> "McDonalds", :type=> "Friend"})
    #     contact3 = Storage::Contact.new({:last=> "Brown", :first=> "James", :job=> "Student", :company=> "Portland State University", :type=> "Brother"})
    #     expect(Storage::Contact.get_names).to(eq(["Henry Martin", "Susan Lockman", "James Brown"]))
    #   end
    # end
  end
end
