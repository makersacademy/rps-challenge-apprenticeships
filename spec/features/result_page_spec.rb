feature 'displays the result of the match' do 
  scenario 'displays to the user whether they won or not' do 
    enter_name_and_start
    choose_rock
    expect(page).to have_content "Result"
  end
end

# given (:other_user) { User.make(email: 'other@example.com', password: 'rous')}
