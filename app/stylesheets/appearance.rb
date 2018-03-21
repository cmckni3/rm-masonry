# UIAppearance. All settings here apply to all views of that type.
# What you can't do here, do in ApplicationStylesheet
class StandardAppearance
  def self.apply(window)
    Dispatch.once do
      UIWindow.appearance.tap do |o|
        o.tintColor = rmq.color.blue
      end
    end
  end
end

