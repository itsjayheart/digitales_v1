class Tale < ApplicationRecord
	belongs_to :creatrix
	has_many :what_ifs
	has_many :m_statements

	validates :title, presence: true
end
