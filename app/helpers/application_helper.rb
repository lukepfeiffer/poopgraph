module ApplicationHelper

  def active?(a, b)
    "active" if a.to_s == b.to_s
  end

end
