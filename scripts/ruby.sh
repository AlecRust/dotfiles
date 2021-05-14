echo "== Installing latest Ruby via rbenv =="

# Initialize rbenv to run now
eval "$(rbenv init -)"

# Save the latest Ruby version
latest_version="$(rbenv install -l | grep -v - | tail -1)"

# Install latest Ruby
rbenv install "$latest_version"
rbenv global "$latest_version"
rbenv shell "$latest_version"

# Upgrade RubyGems
gem update --system

echo "== Installing Ruby gems =="

# Install global gems
gem install bundler
gem install tmuxinator
gem install rails

# Install shims for Ruby executables known to rbenv
rbenv rehash
