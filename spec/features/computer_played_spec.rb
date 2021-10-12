feature 'Computer result displayed' do
  scenario 'Computer result displayed after player chooses' do
    visit('/')
    fill_in :player_1_name, with: 'Tommy'
    click_button 'Play'
    page.choose(option: 'Paper')
    click_button 'Play'
    expect(page).to have_content 'Computer played'
  end
end