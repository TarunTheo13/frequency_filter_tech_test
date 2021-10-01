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

  it 'returns changed array with values below lower limit and above upper limit' do
    expect(frequency_filter([450, 600, 120, 250, 300], 200, 500)).to eq [450, 500, 200, 250, 300]
  end

  it 'raises error when individual frequency equals nil' do
    expect { frequency_filter([nil, 200], 100, 200)}.to raise_error 'input corrupted'
  end

  it 'raises error when frequency array is empty' do
    expect { frequency_filter([], 100, 200) }.to raise_error 'no frequencies supplied'
  end

  it 'uses default values to return changed array when no upper or lower limits are supplied' do
    expect(frequency_filter([20, 1200])).to eq [40, 1000]
  end
end