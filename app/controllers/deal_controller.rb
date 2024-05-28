class DealController < ApplicationController
  def create_deal
	 render json: { logged_in: false,data:"ajay" }
  end
  
  def create_deal_insert				
		title = params[:title]
		description = params[:description]
		seller_id = params[:seller_id]
		user_id = 5
		topic_id = 10
		
		sql_query = "INSERT INTO users_deal (name, description, seller_id,user_id,topic_id, created_at, updated_at) VALUES ('#{title}', '#{description}', '#{seller_id}', '#{user_id}','#{topic_id}',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)"
        ActiveRecord::Base.connection.execute(sql_query)

		render json: { status: 'success', message: 'Listing created successfully deal' }
		rescue => e
		render json: { status: 'error', message: e.message }
	
    end
	
	
end
  
