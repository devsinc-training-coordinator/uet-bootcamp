class Product < ApplicationRecord
  belongs_to :user

  before_save :callback

  validates :product_name, presence: true

  private

  def callback
    byebug
  end
end
