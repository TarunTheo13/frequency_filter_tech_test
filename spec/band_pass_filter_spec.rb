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

  # [450, 600, 120, 250, 300], 200, 500 => [450, 500, 200, 250, 300]

  it 'returns changed array with values below lower limit and above upper limit' do
    expect(frequency_filter([450, 600, 120, 250, 300], 200, 500)).to eq [450, 500, 200, 250, 300]
  end
end