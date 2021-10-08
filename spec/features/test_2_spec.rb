feature 'Test 2: ' do
  scenario 'can see test' do
    visit'/test2'
    expect(page).to have_content 'testing page and test works'
  end
end