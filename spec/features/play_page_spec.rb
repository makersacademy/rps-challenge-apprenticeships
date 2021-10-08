feature "the play page" do
  background do
    sign_in_and_play
  end

  scenario "users can select one of three options" do
    select "Rock", from: "choice"
    click_button("Submit")
    expect(page).to have_content "You chose: Rock"
  end
end
