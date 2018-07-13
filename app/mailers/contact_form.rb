class ContactForm < ApplicationMailer
  def message_received(message)
    @message = message
    mail to: 'venommotorsportinc@gmail.com', subject: 'Website Contact Form Message Recieved'
  end
end
