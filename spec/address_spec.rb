require ('address')
require ('rspec')

describe('Address') do
  describe('#initialize') do
    it('creates an address for a contact') do
      address = Address.new({:street=> "4156 Default Ave", :city=> "City", :state=> "State", :zip=> "87903"})
      expect(address.street).to(eq("4156 Default Ave"))
      expect(address.city).to(eq("City"))
      expect(address.state).to(eq("State"))
      expect(address.zip).to(eq("87903"))
    end
  end
  describe('#display') do
    it('formats the address') do
      address = Address.new({:street=> "4156 Default Ave", :city=> "City", :state=> "State", :zip=> "87903"})
      expect(address.display).to(eq("4156 Default Ave<br>City, State 87903"))
    end
  end
end
