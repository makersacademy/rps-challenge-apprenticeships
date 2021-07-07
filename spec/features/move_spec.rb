feature 'move' do
  scenario 'visit move page' do
    sign_in_and_play
    expect(page).to have_content('Welcome Jerome')
  end

  scenario 'should have radio buttons' do 
    sign_in_and_play
    expect(page).to have_unchecked_field('rock')
  end

  scenario 'should have radio buttons' do 
    sign_in_and_play
    expect(page).to have_unchecked_field('paper')
  end

  scenario 'should have radio buttons' do 
    sign_in_and_play
    expect(page).to have_unchecked_field('scissors')
  end

  scenario "should be able to progress to the next page" do
    sign_in_and_play
    choose 'rock'
    click_button('submit')
    expect(page).to have_content('You chose rock')
  end
end