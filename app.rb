require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/anagrams')
also_reload('./lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @word = params.fetch('word')
  @anagram = params.fetch('anagram')
  @result = @word.anagrams(@anagram)
  if @result == true
    @result = "YA"
  else
    @result = "NAH man"
  end
  erb(:result)
end
