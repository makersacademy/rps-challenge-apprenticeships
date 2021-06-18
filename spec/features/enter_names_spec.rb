require_relative './web_helpers'


feature 'Expect players to fill in their names in form' do
  scenario 'Submit form and display name on screen' do
    sign_in_and_play
    expect(page).to have_content('name')
  end
end
