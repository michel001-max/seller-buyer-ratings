# name: Seller Buyer Rating
# version: 0.7.0

enabled_site_setting :notebook_enabled

register_asset 'stylesheets/notebook.css'

load File.expand_path('../app/note_store.rb', __FILE__)

register_asset "stylesheets/custom_styles.css"
register_asset "stylesheets/bootstrap.min.css"


after_initialize do
  load File.expand_path('../app/controllers/notebook_controller.rb', __FILE__)
  load File.expand_path('../app/controllers/notes_controller.rb', __FILE__)
  load File.expand_path('../app/controllers/seller_controller.rb', __FILE__)
  load File.expand_path('../app/controllers/deal_controller.rb', __FILE__)

  Discourse::Application.routes.append do
    get '/seller_dashboard' => 'notebook#index'
    get '/buyer_dashboard' => 'notebook#index'
    get '/notebook' => 'notebook#index'
	get '/notebook_test_page' => 'notebook#index'
	get '/submit_feedback' => 'notebook#index'
	
	####seller_topic
	get '/seller_insert' => 'seller#create_seller_topic'
	post '/seller_insert' => 'seller#create_seller_topic_insert'
	get '/get_seller_topic' => 'seller#get_seller_topic'
	get '/create_seller_topic' => 'seller#seller_form'
	get '/single_seller_page' => 'seller#single_seller_page'
	
	####Dealer routes
	
	get '/create_deal' => 'deal#create_deal'
	post '/create_deal' => 'deal#create_deal_insert'
	get '/show_deals' => 'deal#show_deal'
	
	
    get '/notes' => 'notes#index'
    put '/notes/:note_id' => 'notes#update'
    delete '/notes/:note_id' => 'notes#destroy'
  end
end
