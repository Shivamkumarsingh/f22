class Product < ActiveRecord::Base
	before_create :multiply
	serialize :tags,Array
	serialize :categories, Array 
	serialize :images, Array
	validates :name, :expire_date, :price, :sku_id,:tags, presence: true
	validates :sku_id, uniqueness: true

	def multiply
		self.price=self.price*100
	end

end
