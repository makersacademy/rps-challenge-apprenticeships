#  the marketeer should be able to enter their name before the game
feature "enter_names" do
  scenario "user can enter name in a form submit the form & see their name" do
    sign_in_and_play
    expect(page).to have_content "Welcome to Rock, Paper, Scissors Daenerys!"
  end
end
