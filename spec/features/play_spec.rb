feature 'Play' do
  scenario 'Choose your weapon' do
    visit('/')
    expect(page).to have_xpath('href="/stylesheet.css" rel="style.css" type="text/css"')

  end
  end
end