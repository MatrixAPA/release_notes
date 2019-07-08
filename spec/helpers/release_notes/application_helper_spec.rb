require 'rails_helper'

module ReleaseNotes
  RSpec.describe ReleaseNotes::ApplicationHelper, type: :helper do

    describe "the boolean value of the dev_user helper" do
      it "is false if not in the valid list" do
        expect(helper.dev_user(0)).to be_falsey
      end

      it "is true if in the valid list" do
        expect(helper.dev_user(4)).to be_truthy
      end
    end

  end
end
