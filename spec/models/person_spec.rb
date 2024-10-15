require "rails_helper"

RSpec.describe Person, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
  end

  describe "#full_name" do
    it "returns the person's full name" do
      person = Person.new(first_name: "Bob", last_name: "Trufont")

      expect(person.full_name).to eq "Bob Trufont"
    end
  end
end
