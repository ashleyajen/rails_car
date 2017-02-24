require 'rails_helper'

RSpec.feature "LandingPages", type: :feature do
  context 'Going to the website' do
    Steps 'Being Welcome' do
      Given 'that I am on our awesome car app' do
        visit '/car_sim'
      end
      Then 'I can see a welcome message' do
        expect(page).to have_content("Welcome to the Cars Sim")
      end
    end
  end

end
