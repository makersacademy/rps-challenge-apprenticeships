require './app'

feature 'homepage' do
  scenario "I should be able to add a name" do
    # visit the homepage
    visit '/'
    # fill in the name field form
    fill_in 'name', with: 'Olivia'
    # click on the submit button
    click_button 'submit'
    # See some content that tells us that it has taken the name in
    expect(page).to have_content('Ready to play, Olivia? Choose your weapon!')
  end
end
