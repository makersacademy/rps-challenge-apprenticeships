require './app'
  
feature 'user submits player name', type: :feature do
  it 'it creates new player' do
    visit '/'
    within("form") do
      fill_in 'name', with: 'John Doe'
      click_button "Let's Go!"
    end
  
    expect(page).to have_content('John Doe vs. Computer')
  end

  feature 'selects choice', type: :feature do
    it 'shows you your choice' do
      visit '/play'
      within("form") do
        find_by_id("rock").click
      end

      expect(page).to have_content("rock")
    end

    it 'shows you your choice' do
        visit '/play'
        within("form") do
          find_by_id("paper").click
        end
  
        expect(page).to have_content("paper")
      end
  end

  # feature "game play" do
  #   it "displays who's won" do
  #       visit '/play'
  #       within("form") do
  #         find_by_id("paper").click

  #       expect(page).to have_content("CONGRATULATIONS")
  #   end
  # end

end