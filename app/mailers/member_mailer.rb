class MemberMailer < ApplicationMailer

  def send_message(current_member)
    @current_member = current_member
    mail(to: @current_member, subject: "Parabéns! A reserva do seu Minion já está garantida!")
  end

end
