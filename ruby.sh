# Install Ruby via rbenv

ruby_version=3.0.1

rbenv install "$ruby_version"
rbenv global "$ruby_version"
rbenv shell "$ruby_version"

# Upgrade RubyGems
gem update --system

# Install useful gems
gem install bundler
gem install tmuxinator
gem install rails

# Install shims for Ruby executables known to rbenv
rbenv rehash
