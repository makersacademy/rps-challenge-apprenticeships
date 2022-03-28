feature 'Enter name' do
  scenario 'submitting names' do
    visit ('/')
    fill_in :player_1_name, with: 'Mars'
    fill_in :player_2_name, with: 'Mike'
    click_button 'Submit'
    expect(page).to have_content 'Mars vs. Mike'
  end
end