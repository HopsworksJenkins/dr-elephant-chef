name             'drelephant'
maintainer       'Jim Dowling'
maintainer_email ''
license          'All rights reserved'
description      'Installs/Configures drelephant'
long_description 'Installs/Configures drelephant'
version          '0.1.0'

%w{ ubuntu debian centos rhel }.each do |os|
  supports os
end

depends 'kagent'
depends 'scala'

recipe  "drelephant::install", "Installs the binaries for Dr Elephant"

recipe  "drelephant::default", "Starts Dr Elephant server."


attribute "drelephant/user",
          :description => "Username that runs the Dr Elephant server",
          :type => 'string'

attribute "drelephant/port",
          :description => "Port for running the Dr Elephant server",
          :type => 'string'
