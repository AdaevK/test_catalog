class Product < ApplicationRecord
  belongs_to :company

  scope_accessible :by_name

  scope :active,  ->        { joins(:company).where(active: true, companies: { active: true }) }
  scope :by_name, -> (text) { where("lower(products.name) LIKE lower(:text)", text: '%'+text+'%') unless text.blank? }
end
