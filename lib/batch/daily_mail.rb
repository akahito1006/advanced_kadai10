class Batch::DailyMail
  def self.daily_mail
    # 投稿を全て削除
    # Book.delete_all
    p "メールを送信しました"
    
    @users = User.all
    @users.each do |user|
     DailyMailer.send_confirm_to_user(user).deliver
    end
  end
end