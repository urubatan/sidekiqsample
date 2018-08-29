class OtherWorker
	include Sidekiq::Worker

	def perform(idx)
		logger.warn("Processing job #{idx}")
	end
end