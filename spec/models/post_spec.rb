require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'validations' do
    it 'is valid with a name' do
      post = create(:post)
      expect(post).to be_valid
    end

    it 'is invalid without a name' do
      post = create(:post)
      post.name = nil
      expect(post).to be_invalid
    end
  end
end
