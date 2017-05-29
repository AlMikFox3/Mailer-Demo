class ExampleMailer < ApplicationMailer
	default from: "sasmit1997@gmail.com"
  layout 'mailer'
  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end
end
