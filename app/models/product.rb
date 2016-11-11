class Product < ActiveRecord::Base
	before_create :multiply
	serialize :tags, ::Array
	validates :name, :expire_date, :price, :sku_id, presence: true
	validates :sku_id, uniqueness: true

	def multiply
		self.price=self.price*100
	end

end
