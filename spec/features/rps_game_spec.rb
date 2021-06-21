require_relative './web_helpers'

feature "Get the game started" do
  scenario "make your choice between rock, paper, scrissors" do
    sign_in_and_play
    click_button 'Start Game'
    select 'Rock', from:'SelectBox'
  end
end

