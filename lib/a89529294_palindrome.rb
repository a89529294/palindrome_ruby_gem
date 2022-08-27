# frozen_string_literal: true

require_relative "a89529294_palindrome/version"
module A89529294_palindrome
  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

  # Returns content for palindrome testing.
  def processed_content
    to_s.scan(/\w/).join.downcase
  end
end

class String
  include A89529294_palindrome
end

class Integer
  include A89529294_palindrome
end
