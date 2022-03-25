require './app/app'

RSpec.describe "Main page" do
    feature "Enter player name" do
        scenario "The player can enter their name" do
            visit('/')
            fill_in 'player_name', with: 'Laura'
            click_button('Enter the Playroom')
            expect(page).to have_content "Hello Laura! Let's play a game!"
        end
    end
end