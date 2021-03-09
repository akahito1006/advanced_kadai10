class DailyMailer < ApplicationMailer
  default from: ENV["MAIL_G"] + "@gmail.com"

  def send_confirm_to_user(user)
    p "きてます"
    p "---------------------"
    p "〇送り先" + user.email
    mail(subject: "デイリーメイラーです",
    to: user.email)
  end
end
