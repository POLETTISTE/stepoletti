# frozen_string_literal: true

class Contact < MailForm::Base

  attribute :name,      validate: true
  attribute :firstname
  attribute :email,     validate: /\A([\w.%+\-]+)@([\w\-]+\.)+(\w{2,})\z/i
  attribute :message
  attribute :nickname, captcha: true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      subject: 'Contact Form Inquiry',
      to: 'polettiweb@gmail.com',
      from: %("#{name}" <#{email}>)
    }
  end
end
