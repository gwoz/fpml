require 'spec_helper'
require 'fpml'

describe Fpml do
  it 'has a version number' do
    expect(Fpml::VERSION).not_to be nil
  end

  before do
    @scheme = Fpml::Scheme.new('algorithm_role')
  end
  
  describe 'Scheme' do
    it 'should be a Scheme object' do
      @scheme.class == Fpml::Scheme
    end
    
    describe '.format_name' do
      it 'should convert the name from ruby snytax' do
        @scheme.name === 'algorithm-role'
      end
    end
    
    describe '.parse' do
      it 'should return records from the XML file' do
        @scheme.records.any?
      end
    end
  end

  describe 'Record' do
    before do
      @record = Fpml::Record.new('ABC123', 'FpML', 'A test description')
    end
    
    it 'should be a Record object' do
      @record.class == Fpml::Record
    end
  end
end
