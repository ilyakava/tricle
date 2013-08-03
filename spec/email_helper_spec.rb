require 'spec_helper'

describe Tricle::EmailHelper do
  class HelperTester
    include Tricle::EmailHelper
  end

  let(:helper) { HelperTester.new }

  describe "#number_with_delimiter" do
    it "should put commas between every three digits" do
      helper.number_with_delimiter(1234567.89).should eq('1,234,567.89')
    end
  end

  describe "#single_week_date_str" do
    it "should not include the last day of the week" do
      start_at = Time.new(2013, 7, 22) # a Monday
      helper.single_week_date_str(start_at).should eq('(7/22/13 - 7/28/13)')
    end
  end
end
