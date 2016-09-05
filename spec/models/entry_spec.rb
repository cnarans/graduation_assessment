require 'rails_helper'

RSpec.describe Entry, type: :model do

	it "displays entries" do
		visit ("/")

		fill_in('Name', :with => 'First')
		fill_in('Message', :with => 'Hello World')
		click_button('Sign Guestbook')

		fill_in('Name', :with => 'Second')
		fill_in('Message', :with => 'Goodbye')
		click_button('Sign Guestbook')

		expect(page).to have_content 'First'
		expect(page).to have_content 'Hello World'
		expect(page).to have_content 'Second'
		expect(page).to have_content 'Goodbye'
	end
end
