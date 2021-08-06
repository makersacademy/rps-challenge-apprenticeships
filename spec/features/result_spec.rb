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

feature 'Final outcome' do
  scenario "Result of ended game" do
    # Test from index page till user wins or loses or draws
  end
end