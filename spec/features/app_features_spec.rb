require './app'

feature 'homepage', type: :feature do
  scenario 'visit homepage' do
    visit '/'

    expect(page).to have_content('Welcome to RPS')
  end
end
  
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
end