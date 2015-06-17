class RegistrationConfirmationMailer < ActionMailer::Base
  default from: "rekord@seeclub-richterswil.ch"

  def registration_confirmation_mail(registration)
    @registration = registration
    attachments.inline['gwr-bedingungen.pdf'] = File.read(Rails.root.join('public/gwr-bedingungen.pdf'))
    mail(to: @registration.email, subject: '750 Jahre Richterswil / Anmeldebestätigung Guinness Weltrekordversuch')
  end
end
