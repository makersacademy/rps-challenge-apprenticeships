feature "view moves" do
  context "views rock, paper and scissors options" do
    scenario "has Rock move option" do
      sign_in
      expect(page).to have_selector(:button, "Rock")
    end

    scenario "has Paper move option" do
      sign_in
      expect(page).to have_selector(:button, "Paper")
    end

    scenario "has Scissors move option" do
      sign_in
      expect(page).to have_selector(:button, "Scissors")
    end
  end

end
