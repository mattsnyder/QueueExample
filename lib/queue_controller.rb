class QueueController

  def initialize(queue)
    @queue = queue
  end

  def run
    @queue.read_messages
  end

end
