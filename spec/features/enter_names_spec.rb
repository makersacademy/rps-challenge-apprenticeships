feature "Registering" do
  scenario "enter name and click submit" do
    sign_in_and_play
    expect(page).to have_content "Are you ready to play, Bruno?"
  end
end
