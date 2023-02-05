class TimeRecord < ApplicationRecord
  paginates_per 10
  belongs_to :user

  enum log_type: { clock_in: 0, clock_out: 1 }
  enum status: { pending: 0, approved: 1, rejected: 2 }

end
