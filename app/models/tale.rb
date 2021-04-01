class Tale < ApplicationRecord
	belongs_to :creatrix
	has_many :what_ifs
	has_many :m_statements

	has_many :what_ifs

	validates :title, presence: true
end
