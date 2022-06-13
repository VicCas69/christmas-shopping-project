class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  def serialize(object)
    object.to_json
  end

  get "/gifts" do
    Gift.all.to_json(
      methods: [:relative_name]
    )  
  end

  get "/gifts/:id" do
    serialize(Gift.find(params[:id]))
  end

  get "/relatives" do 
    serialize(Relative.all)
  end

  post "/gifts" do 
    #puts gift_params
    Gift.create(gift_params).to_json({     
    methods: [:relative_name]
  })
end
  post "/relatives" do 
    #puts gift_params
    serialize(Relative.create(relative_params))
end

delete "/gifts/:id" do
  serialize(Gift.find(params[:id]).destroy)
end

delete "/relatives/:id" do
  serialize(Relative.find(params[:id]).destroy)
end

patch "/gifts/:id" do
  Gift.find(params[:id]).update({
    description: params[:description],
    price: params[:price],
    color: params[:color]
  }).to_json({     
    methods: [:relative_name]
  })
end

def gift_params
    allowed_params = %(description price color recipient)
    params.select { |param, value| 
    allowed_params.include?(param) }
end
def relative_params
    allowed_params = %(name relationship)
    params.select { |param, value| 
    allowed_params.include?(param) }
end
  

end
