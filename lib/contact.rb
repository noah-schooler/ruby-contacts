require ('address')

module Storage
  class Contact
    attr_accessor :last, :first, :job, :company, :type
    attr_reader :id
    @@contacts = []
    @@counter = 0
    def initialize(attributes)
      @last = attributes.fetch(:last)
      @first = attributes.fetch(:first)
      @job = attributes.fetch(:job)
      @company = attributes.fetch(:company)
      @type = attributes.fetch(:type)
      @id = @@counter
      @@counter += 1
      save
    end
    def name()
      "#{@first} #{@last}"
    end
    def save()
      @@contacts.push(self)
    end
    def self.all()
      @@contacts
    end
    def self.clear()
      @@counter = 0
      @@contacts = []
    end
    def self.get_by_id(id)
      @@contacts.each do |contact|
        if contact.id == id.to_i
          return contact
        end
      end
    end
    # def self.get_names()
    #   contacts = []
    #   @@contacts.each do |contact|
    #     contacts.push(contact.name)
    #   end
    #   contacts
    # end
  end
end
