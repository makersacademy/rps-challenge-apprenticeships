feature "form to submit player name" do
  scenario "can enter player name" do
    visit "/"
    fill_in :Player1_name, with: "Ewa"
    click_button "Submit"
    expect(page).to have_content("Let's begin, Ewa!")
  end
end
