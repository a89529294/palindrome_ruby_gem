# frozen_string_literal: true

require_relative "a89529294_palindrome/version"

class String
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

  def processed_content
    scan(/[a-z]/i).join.downcase
  end
end
