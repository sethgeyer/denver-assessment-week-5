feature "login page" do
  scenario "user logs in" do
    visit "/login"
    fill_in "Username", with: "Jeff"
    fill_in "Password:", with: "jeff123"
    click_button "Login"
    expect(page).to have_content("Contacts")
    expect(page).to have_content("Welcome Jeff")
    expect(page).not_to have_link("Login")
  end
end