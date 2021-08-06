feature 'Results' do
  scenario 'Players move is shown' do
    visit('/')
    fill_in :Player1, with: "John"
    click_button "Submit"
    choose('3')
    click_button "Submit"
    
    expect(page).to have_content 'You clicked: Scissor'
  end
end