require './app/app'

RSpec.describe "Play Rock Paper Scissor" do
    feature "Select an item and view game result" do
        scenario "The player can select one item among rock, paper or scissors and view game result" do
            sign_in_and_join_playroom
            play_rps
            expect(page).to have_content "Laura: Rock"
        end
    end
end