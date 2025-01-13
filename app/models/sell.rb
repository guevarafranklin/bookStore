class Sell < ApplicationRecord
  belongs_to :book
  validates :quantity, presence: true
  validates :day, presence: true

  after_create :set_total

  DAYS = %w[MONDAY TUESDAY WEDNESDAY THURSDAY FRIDAY SATURDAY SUNDAY].freeze

  private
  def set_total
    self.total = self.quantity * self.book.price
    self.save
  end

end
