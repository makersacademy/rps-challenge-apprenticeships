feature 'CPU rand choice' do
  scenario 'shows choice' do
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content("CPU chose")
  end
end
