feature 'user can choose rock, paper or scissors' do
  scenario 'user chooses rock' do
    enter_name_and_start
    select "Rock", :from => "choice"
    click_button "Go!"
    expect(page).to have_content "Result"
  end

  scenario 'user chooses paper' do
    enter_name_and_start
    select "Paper", :from => "choice"
    click_button "Go!"
    expect(page).to have_content "Result"
  end

  scenario 'user chooses scissors' do
    enter_name_and_start
    select "Scissors", :from => "choice"
    click_button "Go!"
    expect(page).to have_content "Result"
  end
end
