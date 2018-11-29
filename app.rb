require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')

get('/') do
  @contacts = Storage::Contact.get_names
  erb(:home)
end

post('/submit') do
  first = params['first']
  last = params['last']
  job = params['job']
  company = params['company']
  type = params['contact_type']
  contact = Storage::Contact.new({:first => first, :last => last, :job => job, :company => company, :type => type})
  @contacts = Storage::Contact.get_names
  erb(:home)
end
