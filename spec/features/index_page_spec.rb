feature "index page" do
  scenario "should be able to have a text field" do
    visit('/')
    expect(page).to have_field('player_name')
  end
  
  scenario "should be able to have a  button" do
    visit('/')
    expect(page).to have_button('submit')
  end

  scenario "should be able to progress to the next page" do
    sign_in_and_play
    expect(page).to have_content('Welcome Jerome')
  end
end