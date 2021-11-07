class SomeJob < ActiveJob::Base
  cattr_accessor :job_ran

  def perform
    @@job_ran = true
  end
end
