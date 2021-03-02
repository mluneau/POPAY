require('twilio-ruby')

class Sms::Sender
  attr_reader :tel, :first_name, :amount

  def initialize(attributes = {})
    @tel = attributes[:tel]
    @first_name = attributes[:first_name]
    @amount = attributes[:amount]
  end

  def call
    account_sid = ENV['ACCOUNT_SID']
    auth_token = ENV['AUTH_TOKEN']
    client = Twilio::REST::Client.new(account_sid, auth_token)

    from = '+14245319425' # Your Twilio number
    to = @tel # Your mobile phone number

    client.messages.create(
      from: from,
      to: to,
      body: "Hello #{@first_name} 😄, votre demande d'acompte sur Popay de #{@amount}€ a bien été validée. Merci pour votre confiance 🙏"
    )
  end
end
