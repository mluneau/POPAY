require('twilio-ruby')

class Sms::Sender
  attr_reader :tel, :first_name, :amount

  def initialize(attributes = {})
    account_sid = ENV['ACCOUNT_SID']
    auth_token = ENV['AUTH_TOKEN']
    @client = Twilio::REST::Client.new(account_sid, auth_token)

    @tel = attributes[:tel]
    @first_name = attributes[:first_name]
    @amount = attributes[:amount]
  end

  def call
    @client.messages.create(
      from: '+14245319425',
      to: @tel,
      body: "Hello #{@first_name} 😄, votre demande d'acompte sur Popay de #{@amount}€ a bien été validée. Merci pour votre confiance 🙏"
    )
  end
end
