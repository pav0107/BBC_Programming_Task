require 'httpReport'

describe 'httpReport' do
  describe 'start_program' do
    it 'returns an array' do
      expect(STDIN).to receive(:gets).and_return("http://www.bbc.co.uk\n")
      expect(start_program).to eq ["http://www.bbc.co.uk"]
    end
  end
  describe 'invalid_url_chars' do
    it 'returns true for an incorrect url' do
      expect(invalid_url_chars("http://www.bbc±.com")).to eq true
    end
  
    it 'returns false for an incorrect url' do
      expect(invalid_url_chars("http://www.bbc.com")).to eq false
    end
  end
  describe 'invalid_url_start' do
    it 'returns true for an incorrect url' do
      expect(invalid_url_start("http//www.bbc.com")).to eq true
    end
  
    it 'returns false for an incorrect url' do
      expect(invalid_url_start("http://www.bbc.com")).to eq false
    end
  end
end