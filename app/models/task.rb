class Task < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: { in: ['not-started', 'in-progress', 'complete']}

  STATUS_OPTIONS = [
      ['NOT STARTED', 'not-started'],
      ['IN PROGRESS', 'in-progress'],
      ['COMPLETE', 'complete']
  ]

  def badge_color
    case status
    when 'not-started'
      'secondary'
    when 'in-progress'
      'info'
    when 'complete'
      'success'
      
    end
  end
end
