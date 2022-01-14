feature 'home page' do
  scenario 'visit home page' do
    visit '/'
    expect(page).to have_content "Rock, Paper, Scissors"
  end

  scenario 'user can enter their name' do 
    visit '/'
    fill_in "Your Name", with: "Megan"
    click_button "Play"
  end
end
