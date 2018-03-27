class Task < ApplicationRecord
  default_scope { order(completed: :ASC) }
end
