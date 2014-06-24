# Preview all emails at http://localhost:3000/rails/mailers/mymail
class MymailPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/mymail/jkmail
  def jkmail
    Mymail.jkmail
  end

end
