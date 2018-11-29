module Storage
  class Contact
    @@contacts = []
    def initialize(attributes)
      @last = attributes.fetch(:last)
      @first = attributes.fetch(:first)
      @job = attributes.fetch(:job)
      @company = attributes.fetch(:company)
      @type = attributes.fetch(:type)
    end
  end
end
