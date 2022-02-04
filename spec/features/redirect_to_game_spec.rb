feature 'game page' do
  scenario 'redirect to game page' do
    log_in
    expect(page).to have_current_path('/game')
  end
  scenario 'print name' do
    log_in
    expect(page).to have_content("welcome John!")  
  end
end
