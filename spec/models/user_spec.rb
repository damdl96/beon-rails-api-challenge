require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'scopes' do
    context 'find by_username' do
      it 'returns all users that match' do
        create(:user)
        expect(User.by_username('us')).to_not be_nil
      end
    end
  end
end
