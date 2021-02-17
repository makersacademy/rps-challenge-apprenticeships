#the marketeers will be presented the choices (rock, paper and scissors) and can make one choice each 
require_relative 'web_helpers'

feature "presenting choices to player so they can make a move" do
    scenario 'submitting moves' do
      sign_in
      expect(page).to have_content "make your move, Phoebe"
      expect(page).to have_content "make your move, Ross"
    end
end