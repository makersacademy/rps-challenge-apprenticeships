feature "Choices" do
  scenario "selected and visible rock" do
    visit('/')
    fill_in :name1, with: 'He-Man'
    fill_in :name2, with: 'Superman'
    click_button 'Submit'
    choose(1)
    click_button 'Submit'
    expect(page).to have_content "He-Man choosed rock"
    # expect(page).to have_content "PAPER"
    # expect(page).to have_content "SCISSOR"
  end
  
  scenario "selected and visible paper" do
    visit('/')
    fill_in :name1, with: 'He-Man'
    fill_in :name2, with: 'Superman'
    click_button 'Submit'
    choose(2)
    click_button 'Submit'
    expect(page).to have_content "He-Man choosed paper"
    # expect(page).to have_content "PAPER"
    # expect(page).to have_content "SCISSOR"
  end

  scenario "selected and visible paper" do
    visit('/')
    fill_in :name1, with: 'He-Man'
    fill_in :name2, with: 'Superman'
    click_button 'Submit'
    choose(3)
    click_button 'Submit'
    expect(page).to have_content "He-Man choosed scissors"
   end

   scenario "selected and visible player 2 without option" do
    visit('/')
    fill_in :name1, with: 'He-Man'
    fill_in :name2, with: 'Superman'
    click_button 'Submit'
    choose(3)
    click_button 'Submit'
    expect(page).to have_content "Superman choosed"
   end

end
