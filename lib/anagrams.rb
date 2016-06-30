require('pry')

class String
  define_method(:anagrams) do |compare|
    word = self.split('').sort()
    compare_word = compare.split('').sort()
    word == compare_word
  end
end
