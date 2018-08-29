class SampleWorker
	include Sidekiq::Worker

	def perform(number)
		(1..number).each do |idx|
			OtherWorker.perform_async(idx)
		end
		logger.warn("Started #{number} processes")
	end
end