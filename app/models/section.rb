class Section < ApplicationRecord
  belongs_to :portfolio

  has_rich_text :content
end
