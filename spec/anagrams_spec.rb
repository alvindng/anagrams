require('rspec')
require('anagrams')

describe('String#anagrams') do
  it('compares two strings and returns true if it is an anagram') do
    expect("fox".anagrams("ofx")).to(eq(true))
  end
end
