feature 'test page' do
  xscenario 'visit test page' do
    visit '/test'
    expect(page).to have_content('test page')
  end
end
