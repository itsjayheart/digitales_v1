class Tale < ApplicationRecord
	belongs_to :creatrix

	validates :title, presence: true
end
