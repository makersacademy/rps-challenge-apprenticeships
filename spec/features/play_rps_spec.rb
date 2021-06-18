feature 'play rock paper scissors' do
    scenario 'play rock' do
      visit '/'
      fill_in('player', with: 'Anita')
      click_button('submit')
      choose(option: 'rock')
      click_button('submit')
      expect(page).to have_content 'Anita played: rock'
    end
end