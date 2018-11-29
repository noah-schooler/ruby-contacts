require ('address')
require ('rspec')

describe('Address') do
  describe('#initialize') do
    it('creates an address for a contact') do
      address = Address.new({:street=> "4156 Default Ave", :city=> "City", :state=> "State", :zip=> "87903"})
      expect(address.city).to(eq("City"))
    end
  end
end
