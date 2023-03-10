require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:username) }
  it { should validate_length_of(:password).is_at_least(6) }
  it { should validate_presence_of(:password_digest)}

	describe 'uniqueness' do 
  		before :each do 
			create(:user)
		end
		it { should validate_uniqueness_of(:user) }
	end
end
