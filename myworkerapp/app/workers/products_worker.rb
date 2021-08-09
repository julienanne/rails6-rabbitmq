class ProductsWorker
  include Sneakers::Worker
                 
  from_queue "worker.products", env: nil
  def work(raw_product)
    puts raw_product.inspect
    sleep (3)
    ack! 
  end
end