require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')
require('./lib/address')

get('/') do
  @contacts = Storage::Contact.all
  erb(:home)
end

post('/') do
  first = params['first']
  last = params['last']
  job = params['job']
  company = params['company']
  type = params['contact_type']
  contact = Storage::Contact.new({:first => first, :last => last, :job => job, :company => company, :type => type})
  @contacts = Storage::Contact.all
  erb(:home)
end

get('/contact/:id') do
  @contact = Storage::Contact.get_by_id(params[:id])
  erb(:contact)
end

post('/contact/:id') do
  street = params['street']
  city = params['city']
  state = params['state']
  zip = params['zip']
  address = Address.new({:street => street, :city => city, :state => state, :zip => zip})
  @contact = Storage::Contact.get_by_id(params[:id])
  @contact.add_address(address)
  erb(:contact)
end
