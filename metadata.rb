maintainer        "Guillermo Carrasco"
maintainer_email  "guillermo.carrasco@scilifelab.se"
license           "Apache 2.0"
description       "Installs hadoop and sets up basic cluster per Cloudera's quick start docs"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.8.1"
depends           "java"

recipe "hadoop", "Installs hadoop from Cloudera's repo"
recipe "hadoop::namenode", "Installs hadoop-namenode packages"
recipe "hadoop::datanode", "Installs hadoop-datanode packages"
recipe "hadoop::hive", "Installs hadoop's hive package"
recipe "hadoop::pig", "Installs hadoop's pig package"

%w{ debian ubuntu }.each do |os|
  supports os
end
