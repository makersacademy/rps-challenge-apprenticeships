feature 'Weapon choice page' do
  scenario 'Let players see what was chosen' do
    visit ('/')
    expect(page).to have_content ('CJ chose Rock and Computer chose Scissors')
  end
end
