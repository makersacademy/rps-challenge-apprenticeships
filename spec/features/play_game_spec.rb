feature 'plays the game correctly' do
  before(:all) do
    visit '/'
    fill_in "name", with: "Jaabir"
    click_button "submit"
  end
  scenario 'can select rock, paper or scissors and have it to show the correct selection' do
    click_button "rock"
    within("result")
    expect(page).to have_content "You selected rock!"
    click_button "paper"
    expect(page).to have_content "You selected paper!"
    click_button "scissors"
    expect(page).to have_content "You selected scissors!"
  end
end
