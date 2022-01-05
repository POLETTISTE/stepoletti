# frozen_string_literal: true

class Contact < MailForm::Base

  attribute :name, validate: true
  attribute :firstname, validate: true
  attribute :company
  attribute :email,     validate: /\A([\w.%+\-]+)@([\w\-]+\.)+(\w{2,})\z/i
  attribute :telephone, validate: true
  attribute :message, validate: true
  attribute :budget
  attribute :nickname, captcha: true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      subject: 'Contact from stephanepoletti.com',
      to: 'polettiweb@gmail.com',
      from: %("#{name}" <#{email}>)
    }
  end
end
