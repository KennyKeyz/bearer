class Item < ApplicationRecord
	enum status: {pending: 0, lost: 1, damaged: 2, delivered: 3}
	belongs_to :user
end
