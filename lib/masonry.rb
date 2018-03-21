# Masonry RubyMotion shim

module RMMasonry
  def equalTo(view)
    self.mas_equalTo.call(view)
  end

  def greaterThanOrEqualTo(view)
    self.mas_greaterThanOrEqualTo.call(view)
  end

  def lessThanOrEqualTo(view)
    self.mas_lessThanOrEqualTo.call(view)
  end

  # Fix missing macro
  def mas_offset(view)
    self.offset = view
  end

  alias_method :offset, :mas_offset
end

class MASViewConstraint
  include RMMasonry
end

class MASCompositeConstraint
  include RMMasonry
end
