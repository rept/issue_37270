require "test_helper"

class SomeTest < ActionDispatch::IntegrationTest
  test "did job run" do
    p ActiveJob::Base.queue_adapter
    SomeJob.perform_later
    assert_equal true, SomeJob.job_ran
  end
end

