class Address
  attr_accessor :street, :city, :state, :zip
  def initialize(attributes)
    @street = attributes.fetch(:street)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip = attributes.fetch(:zip)
  end

  def display
    "#{@street}\n#{@city}, #{@state} #{@zip}"
  end
end
