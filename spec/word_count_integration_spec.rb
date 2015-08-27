require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the change machine path', {:type => :feature}) do
  it('processes the user entries and returns an integer value') do
    visit('/')
    fill_in('string', :with => 'I love Jimmy because Jimmy is my dog!')
    fill_in('word', :with => 'Jimmy')
    click_button('Submit')
    expect(page).to have_content(2)
  end
end
