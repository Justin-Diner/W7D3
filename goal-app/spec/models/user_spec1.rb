require 'rails_helper'

RSpec.describe "User", type: :models do
  # describe "GET /index" do
  #   pending "add some examples (or delete) #{__FILE__}"
  # end

  it { should validate_presence_of(:username) }
  it { should validate_length_of(:password).is_at_least(6) }
end
