class Anime < ApplicationRecord
	validates :title, presence: true
	validates :director, presence: true
	validates :year, presence: true
	validates :about, presence: true
	validates :length, presence: true
	validates_numericality_of :length
	validates_numericality_of :year
end
