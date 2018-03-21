class HomeScreen < PM::Screen
  title "Masonry"
  stylesheet HomeScreenStylesheet

  def viewDidLoad
    super

    self.view.backgroundColor = color.white

    # Padding: 50 from top, 50 from left, 10 from bottom, 10 from right
    padding = UIEdgeInsets.new(50, 50, 10, 10)

    @hello_world = UILabel.new
    @hello_world.text = 'Hello World'
    self.view.addSubview @hello_world

    # mas_makeConstraints takes either a stabby lambda or Proc
    @hello_world.mas_makeConstraints ->(make) {
      make.top.equalTo(self.view.mas_top).with.offset(padding.top)
      make.left.equalTo(self.view.mas_left).with.offset(padding.left)
      make.bottom.equalTo(self.view.mas_bottom).with.offset(-padding.bottom)
      make.right.equalTo(self.view.mas_right).with.offset(-padding.right)
    }
  end

  # Remove the following if you're only using portrait
  def will_animate_rotate(orientation, duration)
    find.all.reapply_styles
  end
end
