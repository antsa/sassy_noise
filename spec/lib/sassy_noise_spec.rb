require "spec_helper"

def render(scss)
  scss = %Q(@import "compass"; #{scss})
  options = Compass.sass_engine_options
  options[:line_comments] = false
  options[:style] = :expanded
  options[:syntax] = :scss
  css = Sass::Engine.new(scss, options).render
  # reformat to fit result of heredoc:
  "      #{css.gsub('@charset "UTF-8";', '').gsub(/\n/, "\n      ").strip}\n"
end

describe "sassy-noise mixin" do
  before do
    Compass.reset_configuration! 
    Compass.configure_sass_plugin!
  end

  it "renders correct CSS with the default arguments" do
    Base64.should_receive(:encode64).and_return("encoded_string")

    css = render <<-SCSS
      @import "sassy-noise";

      body {
        @include sassy-noise;
      }
    SCSS

    expected_css = <<-CSS
      ._sassy-noise-repeat, body {
        background-repeat: repeat;
      }
      
      body {
        background-image: url('data:image/png;base64,encoded_string');
      }
    CSS

    css.should eq expected_css
  end
end

