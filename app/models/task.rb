class Task < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: { in: ['not-started', 'in-progress', 'complete']}

  STATUS_OPTIONS = [
      ['NOT STARTED', 'not-started'],
      ['IN PROGRESS', 'in-progress'],
      ['COMPLETE', 'complete']
  ]
end
