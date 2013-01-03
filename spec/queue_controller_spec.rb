require 'rspec-given'
require './lib/queue_controller'

describe "Processing messages from a queue" do

  context "when we have a good rabbitmq" do

    Given (:q) { mock "RabbitMq" }
    Given (:controller) { QueueController.new(q) }

    context "and the Q is empty" do
      Given { q.should_receive(:read_messages).and_return nil }
      When { controller.run }
      Then { verify_mocks_for_rspec }
    end


  end

end
