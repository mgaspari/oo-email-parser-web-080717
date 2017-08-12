# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails

  end

  def parse
  #   fixedString = ""
  #  @emailString.each_char do |char|
  #     if char == " "
  #       char = ","
  #     else
  #       char
  #     end
  #     fixedString << char
  #   end

    emailArray = @emails.split(", ")
    emailArray.collect do |email|
       email.split(" ")

     end.flatten.uniq

  end

end

r = EmailParser.new("dajfn@aol.com dakldnf@sds.com, dsjaifoj@sg.com")
r.parse
