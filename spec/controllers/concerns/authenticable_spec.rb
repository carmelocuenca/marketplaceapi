require 'spec_helper'

class Authentication
  include Authenticable
end

describe Authenticable do
  let(:authentication) { Authentication.new }

  describe "#current_user" do

    before do
      @user = FactoryGirl.create :user
      request.headers["Authorization"] = @user.authentication_token
      authentication.stub(:request).and_return(request)
    end

    it "returns the user from the authorization header" do
      expect(authentication.current_user.authentication_token).to eql @user.authentication_token
    end
  end
end