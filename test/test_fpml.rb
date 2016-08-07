describe Scheme do
  before do
    @scheme = Scheme.new('algorithm_role')
  end
  
  describe 'it should be a Scheme object'
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

describe Record do
  before do
    @record = Record.new('ABC123', 'FpML', 'A test description')
  end

  describe 'it should be a Record object'
    @record.class == Fpml::Record
  end
end
