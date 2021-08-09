namespace :rabbitmq do
  desc "Connect consumer to producer"
  task :setup do
    require "bunny"
    conn = Bunny.new("amqp://guest:guest@rabbitmq:5672").tap(&:start)
    ch = conn.create_channel
    queue_products = ch.queue("worker.products")
    # bind queue to exchange
    queue_products.bind("crawler.products")
    conn.close
  end
end
  