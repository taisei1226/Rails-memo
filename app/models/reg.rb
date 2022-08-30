class Reg < ApplicationRecord
	validates :title, presence: true, length: { maximum: 15 }
	validates :start_date, presence: true
	validates :finish_date, presence: true
	validates :content, presence: true
	validate :start_end_check
	def start_end_check
		errors.add(:start_date, "は今日以降のものを選択してください") if start_date < Date.today
    errors.add(:finish_date, "は開始日より前の日付は登録できません。") unless
    self.start_date < self.finish_date 
    end
end
