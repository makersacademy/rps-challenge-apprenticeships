  feature 'player\'s weapon is displayed' do
    scenario 'player chooses rock' do
      sign_in_as_quincy
      click_button('Rock')
      expect(page).to have_content('Quincy chose: Rock')
    end

    scenario 'player chooses paper' do
      sign_in_as_quincy
      click_button('Paper')
      expect(page).to have_content('Quincy chose: Paper')
    end

    scenario 'player chooses scissors' do
      sign_in_as_quincy
      click_button('Scissors')
      expect(page).to have_content('Quincy chose: Scissors')
    end

  end