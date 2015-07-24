# testing new branch anand_solution branch
require "pry"
# index
get '/apartments' do
  @apartments = Apartment.all
  erb :"apartments/index"
end

# new
get '/apartments/new' do
  erb :"apartments/new"
end

#create
post '/apartments' do
  @apartment =Apartment.create!(params[:apartment])
  redirect "/apartments"
end

# show
get '/apartments/:id' do
  @apartment = Apartment.find(params[:id])
  erb :"apartments/show"
end
