require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangle path', {:type => :feature}) do
  it('processes the user entries and returns whether they create a triangle or not and what type of triangle if it is one') do
    visit('/')
    fill_in('side1', :with => '5')
    fill_in('side2', :with => '5')
    fill_in('side3', :with => '5')
    click_button('Check')
    expect(page).to have_content("It is a triangle!")
    expect(page).to have_content("And it's totally an equilateral")
  end
end
