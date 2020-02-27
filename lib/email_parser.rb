# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailAddressParser 
  
  attr_accessor = :emails
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse 
    email_array = @emails.split(/[, ]/).uniq
    email_array.reject! {|element| element.empty?}
    email_array
  end 
end 