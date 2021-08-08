require 'spec_helper'

feature 'play page' do 
  before do 
    visit '/'
    fill_in 'p1_name', with: 'Astrid'
    click_button 'Submit' 
  end 

  scenario 'See RPS options' do 
    expect(page).to have_button 'Rock' 
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end 

  scenario 'When you select the rock option that is displayed' do 
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock'
  end 

  scenario 'Have the game choose an option ("Rock")' do 
    click_button "Rock"
    message = find(:css, "#opponent").text.strip # finds css elements, and the element by name .strip removes white space(that incs other chars)
    expect(possible_messages).to include message   
  end 

  def possible_messages
    [:rock, :paper, :scissors].map {|shape| "Opponent chose #{shape.to_s.capitalize}"}
  end
end 