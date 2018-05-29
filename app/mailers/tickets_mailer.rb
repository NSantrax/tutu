class TicketsMailer < ApplicationMailer
  def bay_ticket (user, ticket)
    @user = user
    @ticket = ticket
    mail(to: user.email, subject: t('bay_ticket') )
  end
  
  def del_ticket (user, ticket)
    @user = user
    @ticket = ticket
    mail(to: user.email, subject: t('del_ticket'))
  end
  
  def edit_ticket (user, ticket)
    @user = user
    @ticket = ticket
    mail(to: user.email, subject: t('edit_ticket'))
  end
end
