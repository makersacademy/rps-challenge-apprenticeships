feature 'play rock paper scissors' do
    scenario 'play rock' do
      visit '/'
      fill_in('player', with: 'Anita')
      click_button('submit')
      choose(option: 'rock')
      click_button('submit')
      expect(page).to have_content 'Anita played: rock'
    end
    scenario 'play paper' do
        visit '/'
        fill_in('player', with: 'Anita')
        click_button('submit')
        choose(option: 'paper')
        click_button('submit')
        expect(page).to have_content 'Anita played: paper'
    end
    scenario 'play scissors' do
        visit '/'
        fill_in('player', with: 'Anita')
        click_button('submit')
        choose(option: 'scissors')
        click_button('submit')
        expect(page).to have_content 'Anita played: scissors'
    end
end