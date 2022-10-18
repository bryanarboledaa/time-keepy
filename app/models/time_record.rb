class TimeRecord < ApplicationRecord
  belongs_to :user

  enum log_type: { clock_in: 0, clock_out: 1 }
  enum status: { pending: 0, approved: 1 }

end
