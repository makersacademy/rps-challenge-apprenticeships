feature "Select rock, paper or scissors" do
  scenario "Player selects rock and sees confirmation" do
    register
    click_button "rock"

    within '.past_choices' do
      expect(page).to have_content 'rock'
    end
  end

  scenario "Player selects paper and sees confirmation" do
    register
    click_button "paper"

    within '.past_choices' do
      expect(page).to have_content 'paper'
    end
  end

  scenario "Player selects scissors and sees confirmation" do
    register
    click_button "scissors"

    within '.past_choices' do
      expect(page).to have_content 'scissors'
    end
  end
end
