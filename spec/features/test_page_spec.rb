feature 'test page' do
  scenario 'visit test page' do
    visit '/test'
    puts '---------'
    puts page.html
    expect(page).to have_content('test page')
  end
  scenario 'visit index should bring login' do
    visit '/'
    expect(page).to have_content('login')
  end

end
