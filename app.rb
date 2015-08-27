require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/count') do
  @string = params.fetch('string')
  @word = params.fetch('word')
  @result = @string.tally(@word).to_i()
  erb(:count)
end
