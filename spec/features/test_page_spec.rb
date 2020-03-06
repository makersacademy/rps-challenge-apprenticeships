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

  scenario "I should be able to choose a weapon" do
    visit '/'
    # fill in the name field form
    fill_in 'name', with: 'Olivia'
    # click on the submit button
    click_button 'submit'
    # visit the choose_weapon site
    choose 'rock'
    # click on the submit button
    click_button 'submit'
    # See some content that tells us that it has taken the name in
    expect(page).to have_content('You have chosen rock')
  end
end
