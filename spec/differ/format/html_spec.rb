require 'spec_helper'

describe Differ::Format::HTML do
  it 'should not format unchanged parts' do
    expected = 'UNCHANGED'
    Differ::Format::HTML.no_change('UNCHANGED').should == expected
  end

  it 'should format inserts well' do
    expected = '<ins class="differ">SAMPLE</ins>'
    Differ::Format::HTML.insert('SAMPLE').should == expected
  end

  it 'should format deletes well' do
    expected = '<del class="differ">SAMPLE</del>'
    Differ::Format::HTML.delete('SAMPLE').should == expected
  end

  it 'should format changes well' do
    expected = '<del class="differ">THEN</del><ins class="differ">NOW</ins>'
    Differ::Format::HTML.change('THEN', 'NOW').should == expected
  end
end