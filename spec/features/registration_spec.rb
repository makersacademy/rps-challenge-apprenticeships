feature "the home page" do
  scenario "the home page returns a successful status code" do
    visit "/"
    expect(page.status_code).to eq 200
  end
end