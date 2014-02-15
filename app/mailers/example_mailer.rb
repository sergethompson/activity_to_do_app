class ExampleMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.example_mailer.example_message.subject
  #
  def example_message
    @greeting = "Hi"
    mail to: "to@example.org"
  end
end


#     ExampleMailer.example_message().deliver
