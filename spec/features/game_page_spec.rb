feature 'game' do
  scenario '#button rock' do
    enter_user

    expect(page).to have_unchecked_field 'Rock'
  end

  scenario '#button paper' do
    enter_user

    expect(page).to have_unchecked_field 'Paper'
  end

  scenario '#button scissors' do
    enter_user
    expect(page).to have_unchecked_field 'Scissors'
  end

  scenario '#click button runs game' do
    enter_user
    
    choose_rps('Rock')
    expect(page).to have_content 'you chose Rock'
  end
end
