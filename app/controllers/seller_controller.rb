class SellerController < ApplicationController
  def index
	 puts "Hello, Ruby!";
  end
  
	def create_seller_topic		
      #sql_query = "INSERT INTO seller_topic (name, description, seller_id, created_at, updated_at) VALUES ('fffffeee', '10.99', '5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)"
      #ActiveRecord::Base.connection.execute(sql_query)

		#	render json: { status: 'success', message: 'Listing created successfully' }
		#rescue => e
		#	render json: { status: 'error', message: e.message }
		
		title = params[:title]
		description = params[:description]
		seller_id = 55
		
		sql_query = "INSERT INTO seller_topic (name, description, seller_id, created_at, updated_at) VALUES ('#{title}', '#{description}', '#{seller_id}', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)"
        ActiveRecord::Base.connection.execute(sql_query)

		render json: { status: 'success', message: 'Listing created successfully' }
		rescue => e
		render json: { status: 'error', message: e.message }
	
    end
	
	def get_seller_topic
		
      sql_query = "SELECT * FROM seller_topic order by created_at DESC"
      results = ActiveRecord::Base.connection.execute(sql_query)
	  
	  current_user_username = current_user&.username
	  
	  if current_user
		# User is logged in
		render json: results
	  else
		# User is not logged in
		render json: { logged_in: false,data:"test" }
	  end

      # Convert the results to a JSON response
      
    end
	
	#seller form html
	def seller_form		
		@form_auth_token = form_authenticity_token
        puts "Hello, Ruby!";
    end
	
	def create_seller_topic_insert	
		title = params[:title]
		description = params[:description]
		seller_id = params[:seller_id]
		
		sql_query = "INSERT INTO seller_topic (name, description, seller_id, created_at, updated_at) VALUES ('#{title}', '#{description}', '#{seller_id}', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)"
        ActiveRecord::Base.connection.execute(sql_query)

		render json: { status: 'success', message: 'Listing created successfully' }
		rescue => e
		render json: { status: 'error', message: e.message }
		
		
		
    end
	
	def single_seller_page	
		render json: { status: 'error', message: "tdddddest" }
	end

	
  
end
  
