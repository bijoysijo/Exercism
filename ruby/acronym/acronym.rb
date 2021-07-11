class Acronym
  def self.abbreviate(full_form)
    full_form.split(/[\s-]/).map(&:chr).join.upcase
  end
end

