class SendEmailMailer < ApplicationMailer
  default :from => 'saisagarkache@gmail.com'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.send_email_mailer.deliverForm.subject
  #
  def deliverForm data
    @fromContact = data['fromContact']
    @data = data
    tomail = data['toEmail'].length > 0 ? data['toEmail'] : 'saisagarkache@gmail.com'

    mail(to: tomail, subject: data['fromContact'] || 'Want to be a Partner')
  end
end
