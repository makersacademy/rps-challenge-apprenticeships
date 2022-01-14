feature 'home page' do
  scenario 'visit home page' do
    visit '/'
    expect(page).to have_content "Rock, Paper, Scissors"
  end

  scenario 'user can choose one-player mode' do 
    enter_name_and_start
    expect(page).to have_content "Megan, make your choice"
  end
end
