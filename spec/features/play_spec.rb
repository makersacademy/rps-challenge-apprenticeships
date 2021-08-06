feature 'Play' do
  scenario 'choose a move' do
    visit('/')
    fill_in :Player1, with: "John"
    click_button "Submit"
    
    expect(page).to have_content 'Computer'
  end
end