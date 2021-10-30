feature '>>>Enter user name' do
  scenario 'visit home page' do
    sign_in
    expect(page).to have_content 'Tom'
  end
end

