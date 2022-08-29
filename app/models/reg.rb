class Reg < ApplicationRecord
	validates :title, presence: true, length: { maximum: 15 }
	validates :start_date, presence: true
	validates :finish_date, presence: true
	validates :content, presence: true
end
