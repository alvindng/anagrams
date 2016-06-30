require('pry')

class String
  define_method(:anagrams) do |compare|
    word = self.split('')
    sort_word = word.sort()
    compare_word = compare.split('')
    sort_compare = compare_word.sort()
    sort_word == sort_compare
  end
end
