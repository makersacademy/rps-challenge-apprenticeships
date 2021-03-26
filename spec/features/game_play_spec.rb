feature 'game play' do
  before do
    sign_in_and_play
  end

  scenario 'options are presented' do
    click_button 'Rock'
    click_button 'Paper'
    click_button 'Scissors'
  end
end