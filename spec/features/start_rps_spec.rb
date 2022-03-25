require './app/app'

RSpec.describe "Playroom" do
    feature "Select a game (RPS)" do
        scenario "The player can start a Rock Paper Scissor game" do
            sign_in_and_join_playroom
            click_button('Rock Paper Scissors')
            expect(page).to have_content "Welcome to Rock Paper Scissors!\nWhat item would you like to select?"
        end
    end
end