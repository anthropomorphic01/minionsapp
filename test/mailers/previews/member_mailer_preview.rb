class MemberMailerPreview < ActionMailer::Preview
  def send_message
    MemberMailer.send_message(Member.first.email)
  end
end

#Não esquecer de inserir <%= MemberMailer.send_message(current_member).deliver_now %> no index.html.erb para emitir email ao clicar em "reserva"