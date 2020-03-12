class Stock < ApplicationRecord
  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(
      publishable_token: Rails.application.credentials.iex[:publishable_access_key],
      secret_token: Rails.application.credentials.iex[:secret_access_key],
      endpoint: Rails.application.credentials.iex[:endpoint]
    )
    client.price(ticker_symbol)
  end
end
