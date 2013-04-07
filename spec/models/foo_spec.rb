require 'spec_helper'

describe Foo do
  let(:error){StandardError.new}

  before do
    subject.stub(:bar).and_raise(error)
  end
  
  it "this works in both 1.9.3 and 2.0.0" do
    expect{subject.bar}.to raise_error(StandardError)
  end

  it "this works in 1.9.3 only" do
    expect{subject.bar}.to raise_error(error)
  end

end
