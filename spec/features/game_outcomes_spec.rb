describe RockPaperScissors do
  feature 'post game' do
    scenario 'selecting rock' do
      enter_name
      click_button'Rock'
      expect(page).to have_content("#{@rock}")
    end
    scenario 'selecting paper' do
      enter_name
      click_button'Paper'
      expect(page).to have_content("#{@paper}")
    end
    scenario 'selecting scissors' do
      enter_name
      click_button'Scissors'
      expect(page).to have_content("#{@scissors}")
    end
  end
end
