require_relative './web_helpers'

feature "Revealing the winner" do
  scenario "the option has been selected and I see the result of the game" do
    visit '/rps_game'
    select 'Rock', from:'SelectBox'
    click_button 'Attack!'
    expect(page).to have_content "You have selected rock"
  end
end