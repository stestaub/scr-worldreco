class RegistrationConfirmationMailer < ActionMailer::Base
  default from: "rekord@seeclub-richterswil.ch"

  def registration_confirmation_mail(registration)
    @registration = registration
    mail(to: @registration.email, subject: '750 Jahre Richterswil / Anmeldebestätigung Guinness Weltrekordversuch')
  end
end
