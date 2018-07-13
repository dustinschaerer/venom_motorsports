# Preview all emails at http://localhost:3000/rails/mailers/contact_form
class ContactFormPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contact_form/message_received
  def message_received
    ContactForm.message_received
  end

end
