class ModelMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_record_notification.subject
  #
  def new_record_notification(record)
    @greeting = 'Hi'
    @record = record
    mail to: 'pedro.jara@wolox.com.ar', subject: 'Saludos desde tu APP'
  end
end
