feature 'Users selected RPS' do
  it 'shows the user what move they choose' do
    register_and_play
    click_button "Rock"
    expect(page).to have_content "Rock"
  end

end