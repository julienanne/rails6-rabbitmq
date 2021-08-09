class Product < ApplicationRecord
  after_create :publish_to_dashboard

  private

    def publish_to_dashboard
      Publisher.publish('products', attributes)
    end

end