feature "Choices of rock, paper and scissors" do
  scenario "Give player choices" do
    register
    expect(page).to have_button('rock')
    expect(page).to have_button('paper')
    expect(page).to have_button('scissors')
  end
end
