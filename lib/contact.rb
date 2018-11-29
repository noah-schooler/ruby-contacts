module Storage
  class Contact
    attr_accessor(:last, :first, :job, :company, :type)
    @@contacts = []
    def initialize(attributes)
      @last = attributes.fetch(:last)
      @first = attributes.fetch(:first)
      @job = attributes.fetch(:job)
      @company = attributes.fetch(:company)
      @type = attributes.fetch(:type)
      save
    end
    def name()
      "#{@first} #{@last}"
    end
    def save()
      @@contacts.push(self)
    end
    def all()
      @@contacts
    end
    def self.clear()
      @@contacts = []
    end
    def self.get_names()
      contacts = []
      @@contacts.each do |contact|
        contacts.push(contact.name)
      end
      contacts
    end
  end
end
