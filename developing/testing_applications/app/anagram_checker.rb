require 'active_support/all'
class AnagramChecker
  def anagram?(a, b)
    return false if a.blank? || b.blank?
    a.to_s.split('').sort == b.to_s.split('').sort
  end
end
