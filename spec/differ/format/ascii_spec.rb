require 'spec_helper'

describe Differ::Format::Ascii do
  it 'should not format unchanged parts' do
    expected = 'UNCHANGED'
    Differ::Format::Ascii.no_change('UNCHANGED').should == expected
  end

  it 'should format inserts well' do
    expected = '{+"SAMPLE"}'
    Differ::Format::Ascii.insert('SAMPLE').should == expected
  end

  it 'should format deletes well' do
    expected = '{-"SAMPLE"}'
    Differ::Format::Ascii.delete('SAMPLE').should == expected
  end

  it 'should format changes well' do
    expected = '{"THEN" >> "NOW"}'
    Differ::Format::Ascii.change('THEN', 'NOW').should == expected
  end
end