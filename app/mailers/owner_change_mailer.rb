class OwnerChangeMailer < ApplicationMailer
  default from: 'from@example.com'

  def owner_change_mail(user)
    mail to: user.email, subject: 'チームオーナー権限付与のご案内'
  end
end
