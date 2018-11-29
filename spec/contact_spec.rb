require ('contact')
require ('rspec')

describe('Storage') do
  describe('Contact') do
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
  end
end
