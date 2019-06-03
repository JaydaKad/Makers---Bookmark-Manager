feature 'view all bookmarks' do
  scenario 'user views all bookmarks' do
    visit('/')
    expect(page).to have_content "bookmarks"
  end
end
