feature 'start game' do
  scenario 'user sees options rock, paper, scissors' do
    visit ('/')
    fill_in :name, with: 'Professor X'
    click_button 'Submit'
    click_link "Start"
    expect(page).to have_content 'Choose rock, paper, or scissors'
  end
end 
