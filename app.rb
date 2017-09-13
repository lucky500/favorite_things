require ('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/favorite_things')

get('/') do
  @favorite_things_list = Favorite_things.all()
  erb(:favorite_things_list)
end


post('/') do
  name = params["name"]
  item  = Favorite_things.new(name)
  item.save()
  @favorite_things_list = Favorite_things.all()
  erb(:favorite_things_list)
end
