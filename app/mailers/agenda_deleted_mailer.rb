class AgendaDeletedMailer < ApplicationMailer
  default from: 'from@example.com'

  def agenda_deleted_mail(agenda)
    @members = agenda.team.members
    mail to: @members.map(&:email).join(","), subject: "アジェンダ削除についてのご案内"
  end
end
