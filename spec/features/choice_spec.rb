
feature '#add_name' do
  scenario 'display name on webpage' do
    enter_name_and_play
    expect(page).to have_content('Ben')
  end
end
