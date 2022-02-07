feature 'play page' do
  scenario 'direct to play page' do
    log_in
    expect(page).to have_current_path('/play')
  end
  scenario 'print name' do
    log_in
    expect(page).to have_content("welcome John!")  
  end
end
