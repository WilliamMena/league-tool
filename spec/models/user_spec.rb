require 'rails_helper'

RSpec.describe User, "#full_name" do
  context "Generic Test" do
    it "Returns your 'first_name last_name'" do
      user = User.new(first_name: "John", last_name: "Doe")
      expect(user.full_name).to eq "John Doe"
    end
  end
end
