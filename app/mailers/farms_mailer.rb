class FarmsMailer < ApplicationMailer
  
  default to: ENV["CONTACT_PERSON"]
  
  # INSTANCE METHODS
  
  def contact_us(message)
    @content = message.content
    @email = message.email
    @name = message.name
    @subject = message.subject
    
    mail(
      from: @email,
      subject: @subject,
      template_path: "contact_us_mailer"
    )
  end
end
