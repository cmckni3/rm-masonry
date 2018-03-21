# RubyMotion Masonry demo

1. Add CocoaPods to RubyMotion project

    ```ruby
    # Gemfile
    gem "motion-cocoapods"
    ```

1.  Install

    ```sh
    bundle install
    ```

1. Add `Masonry` to project

    ```ruby
    Motion::Project::App.setup do |app|
      # ...
      app.pods do
        pod 'Masonry'
      end
    end
    ```

1. Install `Masonry`

    ```sh
    [bundle exec] rake pod:install
    ```

1. Use `Masonry` as usual but remember to call the `Proc` returned by methods

    ```ruby
    # mas_makeConstraints takes either a stabby lambda or Proc
    @my_button.mas_makeConstraints ->(make) {
      make.top.equalTo.call(self.view.mas_top).with.offset.call(padding.top)
      make.left.equalTo.call(self.view.mas_left).with.offset.call(padding.left)
      make.bottom.equalTo.call(self.view.mas_bottom).with.offset.call(-padding.bottom)
      make.right.equalTo.call(self.view.mas_right).with.offset.call(-padding.right)
    }
    ```

Note the `.call` for calling the `Proc` with an argument.

[lib/masonry.rb](lib/masonry.rb) adds some shortcuts to `MASViewConstraint` and `MASCompositeConstraint` eliminating the need for `.call`.