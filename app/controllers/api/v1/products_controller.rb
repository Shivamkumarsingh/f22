class Api::V1::ProductsController < ApplicationController
	
	http_basic_authenticate_with :name => "shivam", :password => "shivam"
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
		params.require(:product).permit(:expire_date, :name, :sku_id, :price, :description, tags: [], categories: [], images: [:img_path])
	end

end
