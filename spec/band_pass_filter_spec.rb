require 'band_pass_filter'

describe '#frequency_filter' do
  it 'returns array unchanged when within limits' do
    expect(frequency_filter([200], 100, 300)).to eq [200]
  end

  it 'returns changed array when below lower limit' do
    expect(frequency_filter([50], 100, 300)).to eq [100]
  end

  it 'returns changed array when above upper limit' do
    expect(frequency_filter([350], 100, 300)).to eq [300]
  end
end