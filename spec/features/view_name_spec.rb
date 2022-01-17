feature "view name" do

  scenario "saves name" do
    sign_in
    expect(page).to have_content 'test_player_one'
  end

end
