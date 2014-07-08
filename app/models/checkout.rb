class Checkout < ActiveRecord::Base
  belongs_to :item
  belongs_to :reservation

  before_validation :set_checkout_time

  validates_presence_of :item_id, :reservation_id, :checked_out_at
private

  def set_checkout_time
    self.checked_out_at = Time.now
  end

end