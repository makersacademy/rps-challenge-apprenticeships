feature 'Weapon choice page' do
  scenario 'Let players see what was chosen' do
    visit ('/rock')
    fill_in 'name' with: 'CJ'
    expect(page).to have_content ('CJ chose Rock and Computer chose Scissors')
  end
end
