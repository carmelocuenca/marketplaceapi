require 'spec_helper'

describe ApiContraints do
  let(:api_constraints_v1) { ApiContraints.new(version: 1) }
  let(:api_constraints_v2) { ApiContraints.new(version: 2, default: true) }

  describe "matches?" do

    it "returns true when the version matches the 'Accept' header" do
      request = double(host: 'api.marketplace.dev',
                       headers: {"Accept" => "application/vnd.marketplace.v1"})
      api_constraints_v1.matches?(request).should be_true
    end

    it "returns the default version when 'default' option is specified" do
      request = double(host: 'api.marketplace.dev')
      api_constraints_v2.matches?(request).should be_true
    end
  end
end