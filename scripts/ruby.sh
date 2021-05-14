ruby_version=3.0.1

echo "== Installing Ruby $ruby_version via rbenv =="

# Setup rbenv in shell
eval "$(rbenv init -)"

# Install Ruby
rbenv install "$ruby_version"
rbenv global "$ruby_version"
rbenv shell "$ruby_version"

# Upgrade RubyGems
gem update --system

echo "== Installing Ruby gems =="

# Install global gems
gem install bundler
gem install tmuxinator
gem install rails

# Install shims for Ruby executables known to rbenv
rbenv rehash
