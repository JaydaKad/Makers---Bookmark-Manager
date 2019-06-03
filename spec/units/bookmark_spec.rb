require 'bookmark'

describe Bookmark do

  it 'can list all bookmarks' do
    expect(Bookmark.new.all).to eq(['bbc', 'makersacademy'])
  end


end
