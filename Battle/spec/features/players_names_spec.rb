feature 'Testing input and redirect' do
  scenario 'Displays names from a form on a new page' do
    visit('/')
    fill_in "Player 1", :with => "Jo"
    fill_in "Player 2", :with => "Matt"
    click_button "Submit"
    expect(page).to have_content 'Jo vs Matt'
  end
end
