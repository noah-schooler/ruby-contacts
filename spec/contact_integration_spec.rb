require('capybara/rspec')
require('./app')
require('pry')
# require('contact')
Capybara.app = Sinatra::Application
set(:show_exception, false)

describe('website', {:type => :feature}) do
  it('stores contacts inputted by the user') do
    visit('/')
    fill_in('first', :with => 'John')
    fill_in('last', :with => 'Doe')
    fill_in('job', :with => 'Cashier')
    fill_in('company', :with => 'McDonalds')
    fill_in('contact_type', :with => 'Friend')
    click_button('Add contact')
    expect(page).to have_content('John Doe')
  end
end
