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
      'danger'
    when 'in-progress'
      'warning'
    when 'complete'
      'success'
    end
  end

  def complete?
    status == 'complete'
  end

  def in_progress?
    status == 'in-progress'
  end

  def not_started?
    status == 'not-started'
  end
end
