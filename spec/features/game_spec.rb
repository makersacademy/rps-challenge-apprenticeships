require 'spec_helper'

feature 'play RPS' do 
  before do 
    visit '/'
    fill_in 'name', with: 'Urs'
    click_button 'Submit'
  end

  scenario 'show options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'choose an option' do 
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock'
  end

  scenario 'computer choose an option' do 
    click_button 'Rock'

    message = find(:css, "#computer").text

    expect(possible_computer_choices).to include message
  end

  def possible_computer_choices
    [:rock, :paper, :scissors].map { |shape| "Computer chose #{shape.to_s.capitalize}" }
  end
end
