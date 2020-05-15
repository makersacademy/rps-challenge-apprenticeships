require 'spec_helper.rb'
feature 'Name submission' do
  scenario 'can submit name with form' do
    sign_in_and_play
    expect(page).to have_content 'Joe, select your weapon!'
  end
end