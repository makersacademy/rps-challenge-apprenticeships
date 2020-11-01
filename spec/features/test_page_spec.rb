feature 'test page' do
  scenario 'visit test page' do
    visit '/test'
    expect(page).to have_content('test page')
  end
end


feature 'enter_name' do
  scenario 'submit name' do
    sign_in_and_play
    expect(page).to have_content 'Eunice'
  end
end

feature 'choose_a_pick' do
  
  before do
    visit ('/')
    fill_in 'player', with: 'Eunice'
    click_button 'Submit'
  end 
  scenario 'submit choice' do
  expect(page).to have_content 'Rock'
  expect(page).to have_content 'Paper'
  expect(page).to have_content 'Scissor'
end
end

feature 'Rock, Paper or Scissors' do
  
  before do
    visit ('/')
    fill_in 'player', with: 'Eunice'
    click_button 'Submit'
  end 
  scenario 'pick one choice' do
    click_button "Submit"
  expect(page).to have_content 'Rock'
  expect(page).to have_content 'Paper'
  expect(page).to have_content 'Scissor'
end
end