class AllWorker
  include Sidekiq::Worker

  def perform(device_id)
    # Do 
  end
end
