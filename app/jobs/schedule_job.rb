class ScheduleJobJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    # Do something later
  end
end
