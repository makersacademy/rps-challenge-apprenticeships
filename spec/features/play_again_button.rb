require './app/app'

RSpec.describe "Play again" do
    feature "Play again button" do
        scenario "The player can click a Play again button to start another game" do
            sign_in_and_join_playroom
            play_rps
            click_button('Play again')
            expect(page).to have_content "Welcome to Rock Paper Scissors!\nWhat item would you like to select?"
        end
    end
end