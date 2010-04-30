require 'spec_helper'

describe Differ::Format::Color do
  it 'should not format unchanged parts' do
    expected = 'UNCHANGED'
    Differ::Format::Color.same('UNCHANGED').should == expected
  end

  it 'should format inserts well' do
    expected = "\033[32mSAMPLE\033[0m"
    Differ::Format::Color.insert('SAMPLE').should == expected
  end

  it 'should format deletes well' do
    expected = "\033[31mSAMPLE\033[0m"
    Differ::Format::Color.delete('SAMPLE').should == expected
  end

  it 'should format changes well' do
    expected = "\033[31mTHEN\033[0m\033[32mNOW\033[0m"
    Differ::Format::Color.change('THEN', 'NOW').should == expected
  end
end