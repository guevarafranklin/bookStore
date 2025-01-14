class Book < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true

  has_many :sells, dependent: :destroy

  after_create_commit :create_chart

  private 
  def create_chart
    broadcast_append_to(
      'books_charts_channel', 
      partial: '/dashboard/charts/books/chart', 
      locals: { book: self }, 
      target: 'books_charts')
  end

end
