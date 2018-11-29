require ('contact')
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
        expect(contact.all).to(eq([contact]))
      end
    end
    describe('.clear') do
      it('clears the list of contacts') do
        contact = Storage::Contact.new({:last=> "Martin", :first=> "Henry", :job=> "Gas station attendant", :company=> "Shell", :type=> "Co-worker"})
        expect(Storage::Contact.clear).to(eq([]))
      end
    end
  end
end
