describe 'String#word_wrap' do
  it 'reduces the empty string to an empty array' do
    expect(''.word_wrap(2)).to eq []
  end

  it 'can split words given exact length' do
    expect('one two'.word_wrap(3)).to eq ['one', 'two']
  end

  it 'works with the example' do
  	expect("  \nHow much wood would\na woodchuck chuck if a woodchuck could chuck wood?\n   As much as a woodchuck would chuck if a woodchuck could chuck wood.\n\n ".word_wrap(20)).to eq [
  "How much wood would",
  "a woodchuck chuck if",
  "a woodchuck could",
  "chuck wood? As much",
  "as a woodchuck would",
  "chuck if a woodchuck",
  "could chuck wood."]
  end
end
