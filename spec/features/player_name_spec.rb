require './app/app'

RSpec.describe "Main page" do
    feature "Enter player name" do
        scenario "The player can enter their name" do
            sign_in_and_join_playroom
            expect(page).to have_content "Hello Laura! Let's play a game!"
        end
    end
end