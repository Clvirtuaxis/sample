class Product < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    validates :image_url, presence: true
    validates :price, numericality: { only_decimal: true }

    has_many :orders
    has_many :comments

    def views
      $redis.get("product:#{id}")
    end

    def viewed!
      $redis.incr("product:#{id}")
    end

    def self.search(search_term)
      Product.where("name LIKE ?", "%#{search_term}%")
    end

    def highest_rating_comment
      comments.rating_desc.first
    end

    def lowest_rating_comment
      comments.rating_asc.first
    end

    def average_rating
      comments.average(:rating).to_f
    end

end
