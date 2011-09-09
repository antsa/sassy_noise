Gem::Specification.new do |s|
  # Release Specific Information
  s.version = "0.1.3"
  s.date = "2011-09-09"

  # Gem Details
  s.name = "sassy_noise"
  s.authors = ["Antti Salonen", "Vesa Vänskä"]
  s.summary = %q{a sass port of the noisy js plugin as a compass extension}
  s.description = %q{a sass port of the noisy js plugin as a compass extension that creates backgrond noise images as base64 data URIs}
  s.email = "salosen.antti@gmail.com"
  s.homepage = "https://github.com/antsa/sassy_noise"

  # Gem Files
  s.files = %w(README.md)
  s.files += Dir.glob("lib/**/*.*")
  s.files += Dir.glob("stylesheets/**/*.*")
  s.files += Dir.glob("templates/**/*.*")

  # Gem Bookkeeping
  s.rubygems_version = %q{1.6.2}
  s.add_dependency("compass")
  s.add_dependency("chunky_png")
  s.add_development_dependency("rspec", ">=2.0")
end
