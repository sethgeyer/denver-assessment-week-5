feature "Homepage" do
  scenario "visitor visits homepage" do
    visit "/"
    expect(page).to have_content("Contacts")
  end
end