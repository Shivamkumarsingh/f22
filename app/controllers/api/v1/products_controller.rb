class Api::V1::ProductsController < ApplicationController
	
	def create
		@product=Product.new(product_params)
		respond_to do |format|
		if @product.save
			format.json { render :json => { :status => "product created successfully"} }
		else
			format.json { render :json => @product.errors }
		end
	end
	end


	private

	def product_params
		params.permit(:expire_date, :name, :sku_id, :tags, :price, :description)
	end

end