class Farmer < ActiveRecord::Base
    has_many :goods
    has_many :customers, through: :goods
end