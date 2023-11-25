feature 'Enter names' do
    scenario 'submitting names' do
      sign_in_and_play
      expect(page).to have_content "Khalid"
    end
  end    

  feature 'play game ' do
    scenario 'click Rock' do
      sign_in_and_play
      click_button 'rock'
      
      expect(page).to have_content "confirm to see if you have won"
    end

    scenario 'click Rock' do
      sign_in_and_play
      click_button 'rock'
      click_link 'ok'
      
      expect(page).to have_content "Khalid won"
    end
  end    

