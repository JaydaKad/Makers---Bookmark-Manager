feature 'view all bookmarks' do


  scenario 'user can see bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "bbc"
    expect(page).to have_content "makersacademy"
  end
end
