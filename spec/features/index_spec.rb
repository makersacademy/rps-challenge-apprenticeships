feature 'home page' do
  scenario 'visit home page' do
    visit('/')
    expect(page).to have_content("Play rock paper scissors!")
  end
end