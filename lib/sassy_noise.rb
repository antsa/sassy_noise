require 'compass'
require "chunky_png"
require "base64"
require File.join(File.dirname(__FILE__), 'sassy_noise', 'sass_extensions')

extension_path = File.expand_path(File.join(File.dirname(__FILE__), ".."))
Compass::Frameworks.register('sassy-noise', :path => extension_path)