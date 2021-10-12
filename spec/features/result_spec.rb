feature 'Game calculates result' do
  scenario 'player chooses paper and displayes result' do
    visit('/')
    fill_in :player_1_name, with: 'Tommy'
    click_button 'Play'
    page.choose(option: 'Paper')
    click_button 'Play'
    expect(page).to have_content 'You' 
  end
end