feature "the play page" do
  before(:each) do
    visit "/play"
  end

  scenario "users can select one of three options" do
    select "Rock", from: "choice"
    click_button("Submit")
    expect(page).to have_content "You chose: Rock"
  end
end