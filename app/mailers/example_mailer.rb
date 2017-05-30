class ExampleMailer < ApplicationMailer
	default from: "sasmit1997@gmail.com"
  layout 'mailer'
  def sample_email(user)
    @user = user
    attachments['Attachment.txt'] = File.read('/home/almikfox/rails/mailtest/Attachment.txt')
    mail(to: @user.email, subject: 'Sample Email')
  end
end
