feature "Player move" do
  scenario "Player selects their move" do
    visit ('/play')
    expect(page).to have_select(:options => ['Rock', 'Paper', 'Scissors'])
  end
end
