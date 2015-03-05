class RegistrationConfirmationMailer < ActionMailer::Base
  default from: "rekord@seeclub-richterswil.ch"

  def registration_confirmation_mail(registration)
    @registration = registration
    mail(to: @registration.email, subject: 'Anmeldebestätigung Guinness Welt Rekord')
  end
end
