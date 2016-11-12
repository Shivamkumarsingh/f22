class ProductsController < ApplicationController

	def index
		@products=Product.all
	end

	def edit
		@product=Product.find(params[:id])
	end

	def update
		@product=Product.find(params[:id])
		@product.update(product_param)
		redirect_to action: 'index'
	end

	
	private
	def product_param
		params.require(:product).permit(:expire_date,:name,:sku_id,:price,:description,tags:[])
	end
end