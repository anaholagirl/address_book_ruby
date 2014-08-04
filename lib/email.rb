class Email
  @@all_emails = []

  def Email.all
    @@all_emails
  end

  def initialize(email)
    @email = email
  end

  def email
    @email
  end

end
