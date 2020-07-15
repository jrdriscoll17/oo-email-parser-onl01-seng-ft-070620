# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    emails_array = emails.split(/, | /)
    parsed_emails = []

    emails_array.each do |email|
      if !parsed_emails.include?(email)
        parsed_emails << email
      end
    end
    parsed_emails
  end
end
