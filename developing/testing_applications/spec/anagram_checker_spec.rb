require 'spec_helper'
require './app/anagram_checker'

RSpec.describe AnagramChecker do
  it 'identifies anagrams' do
    checker = AnagramChecker.new
    expect(checker.anagram?('julian', 'nailuj')).to be_truthy
    expect(checker.anagram?('julian', 'julian')).to be_truthy
    expect(checker.anagram?('julian', 'uijnla')).to be_truthy
    expect(checker.anagram?('julian', 'iijnla')).to be_falsy
    expect(checker.anagram?('julian', 'juliann')).to be_falsy
  end

  it 'handles nil cases' do
    checker = AnagramChecker.new
    expect(checker.anagram?('julian', nil)).to be_falsy
    expect(checker.anagram?(nil, nil)).to be_falsy
  end
end
