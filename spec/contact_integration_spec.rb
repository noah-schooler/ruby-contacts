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
  it('displays full contact info') do
    visit('/contact/0')
    expect(page).to have_content('Name: John Doe')
  end
  it('adds an address to contact info') do
    visit('contact/0')
    fill_in('street', :with => '4156 Default Ave')
    fill_in('city', :with => 'City')
    fill_in('state', :with => 'State')
    fill_in('zip', :with => '87903')
    click_button('Add address')
    expect(page).to have_content("4156 Default Ave")
    expect(page).to have_content("City")
    expect(page).to have_content("State")
    expect(page).to have_content("87903")
  end
end
