require 'spec_helper'

class Authentication
  include Authenticable
end

describe Authenticable  do
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

  describe "#authenticate_with_token" do
    before do
      @user = FactoryGirl.create :user
      authentication.stub(:current_user).and_return(nil)
      response.stub(:response_code).and_return(401)
      response.stub(:body).and_return({"errors" => "Not authenticated"}.to_json)
      authentication.stub(:response).and_return(response)
    end

    it "render a json error message" do
      expect(json_response[:errors]).to eql "Not authenticated"
    end

    # it { should respond_with 401 }
  end

  describe "#user_signed_in?" do

    context "when there is a user on 'session'" do
      before do
        @user = FactoryGirl.create :user
        authentication.stub(:current_user).and_return(@user)
      end

      # it { should be_user_signed_in }
      it { expect(authentication.user_signed_in?).to be_truthy }
    end

    context "when there is no user on 'session'" do
      before do
        @user = FactoryGirl.create :user
        authentication.stub(:current_user).and_return(nil)
      end

      # it { should_not be_user_signed_in }
      it { expect(authentication.user_signed_in?).to be_falsy }
    end
  end
end