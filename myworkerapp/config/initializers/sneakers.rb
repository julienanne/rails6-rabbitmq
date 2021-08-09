require 'sneakers'
Sneakers.configure  :heartbeat => 30,
                    :amqp => 'amqp://guest:guest@rabbitmq:5672',
                    :exchange => 'crawler.products',
                    :exchange_type => :fanout,
                    :durable => false,
                    :workers => 1,
                    :threads => 1