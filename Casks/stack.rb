cask 'stack' do
  version '2.6.2.20200306'
  sha256 'f3b03c6a3a6f4bdafdceb2a7c626ed473cdb127e8254a517c4c998d5c286eabd'

  # transip.net/stack was verified as official when first introduced to the cask
  url "https://mirror.transip.net/stack/software/osx/stack-#{version}.pkg"
  appcast 'https://mirror.transip.net/stack/update/?version=0.0.0&platform=macos&oem=stack&versionsuffix=&sparkle=true'
  name 'STACK'
  homepage 'https://www.transip.nl/stack'

  pkg "stack-#{version}.pkg"

  uninstall login_item: 'stack',
            signal:     ['TERM', 'nl.transip.stack'],
            pkgutil:    'nl.transip.stack'

  zap trash: [
               '~/Library/Caches/nl.transip.stack',
               '~/Library/Application Support/STACK/',
             ]
end
