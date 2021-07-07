feature 'enter name' do
  scenario 'user submits name' do
    enter_name_submit
    expect(page).to have_content 'Professor X'
  end
end
