# frozen_string_literal: true

SolidusSubscriptions.configure do |config|
  # ========================================= Basic config =========================================

  # The ActiveRecord model users can subscribe to.
  # config.subscribable_class = 'Spree::Variant'

  # Which queue is responsible for processing subscription background jobs.
  # config.processing_queue = :default

  # Maximum number of times a user can skip their subscription before it must be processed.
  # config.maximum_successive_skips = 1

  # Maximum number of times a user can skip their subscription.
  # config.maximum_total_skips = nil

  # Minimum days between the current date and the next installment for the installment not to be
  # processed after the user cancels their subscription.
  # config.minimum_cancellation_notice = 1.day

  # Time between an installment failing to be processed and the system retrying to fulfill it.
  # config.reprocessing_interval = 1.day

  # ========================================= Dispatchers ==========================================
  #
  # These dispatchers are pluggable. If you override any handlers, it is highly encouraged that you
  # subclass from the the dispatcher you are replacing and call `super` from within `#dispatch`.

  # This handler is called when a subscription order is successfully placed.
  # config.success_dispatcher_class = 'SolidusSubscriptions::SuccessDispatcher'

  # This handler is called when a group of installments fails to be processed.
  # config.failure_dispatcher_class = 'SolidusSubscriptions::FailureDispatcher'

  # This handler is called when a payment fails on a subscription order.
  # config.payment_failed_dispatcher_class = 'SolidusSubscriptions::PaymentFailedDispatcher'

  # This handler is called when there isn't enough stock to fulfill an installment.
  # config.out_of_stock_dispatcher = 'SolidusSubscriptions::OutOfStockDispatcher'

  # ===================================== Permitted attributes =====================================
  #
  # In this section, you can override the list of attributes the user can pass to the controllers.
  #
  # This is useful in the case where certain fields should not be allowed to be modified by the
  # user, or if you add additional fields to the extension's model and you want the users to be able
  # to set them.

  # Attributes the user can specify for subscriptions.
  # config.subscription_attributes = [
  #   :interval_length,
  #   :interval_units,
  #   :end_date,
  #   shipping_address_attributes: Spree::PermittedAttributes.address_attributes,
  #   billing_address_attributes: Spree::PermittedAttributes.address_attributes,
  # ]

  # Attributes the user be specify for subscription line items.
  # config.subscription_line_item_attributes = [
  #   :quantity,
  #   :subscribable_id,
  #   :interval_length,
  #   :interval_units,
  #   :end_date,
  # ]
end
