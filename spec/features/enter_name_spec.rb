feature "Enter name" do
  scenario "Before game starts, player enters name" do
    register

    expect(page).to have_content 'John'
  end
end
