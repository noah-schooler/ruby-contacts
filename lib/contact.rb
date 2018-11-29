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
    end
    def name()
      "#{@first} #{@last}"
    end
  end
end
