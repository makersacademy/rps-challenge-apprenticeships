feature "the results page" do
  scenario "the computer's choice is displayed" do
    allow_any_instance_of(Computer).to receive(:generate_choice).and_return "Scissors"
    visit "/result"
    expect(page).to have_content "The Computer chose: Scissors"
  end
end
