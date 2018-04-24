class ModelMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_record_notification.subject
  #
  def new_record_notification(record)
    @greeting = 'Hi'
    @record = record
    @user = record.user
    mail to: 'pedro.jara@wolox.com.ar', subject: 'Books Rent'
  end
end
