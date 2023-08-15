class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/categories' do
    categories = Category.all
    categories.to_json(include: :items)
  end

  post '/items' do
    category = Category.find(params[:category_id])
    item = category.items.create(
      name: params[:name],
      description: params[:description],
      condition: params[:condition],
      img_url: params[:img_url],
      email_address: params[:email_address],
      price: params[:price]
    )
    item.to_json
  end

  delete '/items/:id' do
    item = Item.find(params[:id])
    item.destroy
    item.to_json
  end

  post '/categories' do
    category = Category.create(
      name: params[:name]
    )
    category.to_json(include: :items)
  end

  patch '/items/:id' do
    item = Item.find(params[:id])
    item.update(
      description: params[:description]
    )
    item.to_json
  end

end
