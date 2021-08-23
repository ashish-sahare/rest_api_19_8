class Word < ApplicationRecord
	validates :name, :language, presence: true
end
