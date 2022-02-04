feature "a winner is declared" do
  scenario " wins" do
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content("wins!")
  end
end
