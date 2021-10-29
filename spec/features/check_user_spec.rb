feature 'Check user name' do
    scenario 'visit play page' do
      visit('/play')
      fill_in :user_name, with: 'Tom'
      expect(page).to have_content 'Welcome Tom!'
    end
  end

