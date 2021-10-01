require 'band_pass_filter'

describe '#frequency_filter' do
  it 'returns array unchanged when within limits' do
    expect(frequency_filter([200], 100, 300)).to eq [200]
  end
end