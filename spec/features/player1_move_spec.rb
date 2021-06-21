feature 'play rock paper scissors' do
    scenario 'play rock' do
      sign_in_and_play
      choose_rock
      choose_scissors
      expect(page).to have_content 'Anita played: rock'
    end
    scenario 'play paper' do
        sign_in_and_play
        choose_paper
        choose_rock
        expect(page).to have_content 'Anita played: paper'
    end
    scenario 'play scissors' do
        sign_in_and_play
        choose_scissors
        choose_rock
        expect(page).to have_content 'Anita played: scissors'
    end
end