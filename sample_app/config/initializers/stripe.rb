if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_tWhXYXbDK8D28cW7ifbyqAYT',
    :secret_key => 'sk_test_Ga1yF2QM7HULRIbpiYFUx4gm'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]