require 'httpReport'

describe 'httpReport' do
  describe 'start_program' do
    it 'returns an array' do
      expect(STDIN).to receive(:gets).and_return("http://www.bbc.co.uk\n")
      expect(start_program).to eq ["http://www.bbc.co.uk"]
    end
  end
end