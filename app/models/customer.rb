class Customer < ActiveRecord::Base
    has_many :goods
    has_many :farmers, through: :items
end