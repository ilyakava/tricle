require 'spec_helper'

require_relative '../../lib/tricle/presenters/report'

describe Tricle::Presenters::Report do
  let(:report) { Tricle::Presenters::Report.new }

  describe '#add_metric' do
    it "should add a new group if none are present" do
      expect(report.sections).to eq([])
      report.add_metric(TestMetric)
      expect(report.sections.size).to eq(1)

      presenters = report.sections.first.metric_presenters
      expect(presenters.size).to eq(1)
      expect(presenters.first.metric).to be_a(TestMetric)
    end
  end
end
