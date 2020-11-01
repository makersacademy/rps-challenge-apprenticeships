
feature 'Page has buttons to click' do
  before do
    register_and_play
  end

  scenario 'page has 3 buttons' do
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario 'game to choose Rock' do
    click_button "Rock"

    message = find(:css, "#computer").text.strip

    def possible_messages
      [:Rock, :Paper, :Scissors].map { |move| "The computer chose #{move.to_s.capitalize}!"}
    end

    expect(possible_messages).to include message

  end

end
