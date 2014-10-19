require File.expand_path("../../Abstract/abstract-php-extension", __FILE__)

class Php53Ioncubeloader < AbstractPhp53Extension
  init
  homepage 'http://www.ioncube.com/loaders.php'
  if Hardware.is_64_bit?
    version '4.6.1'
    url 'http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_dar_x86-64.tar.gz'
<<<<<<< HEAD
    sha1 '62b2b2f0328cbee95e71fae0f03ea87f611a6a3c'
=======
    sha1 '1c4879d248b6bc472a8cd215026c02bec98f6f2f'
>>>>>>> bd4b8117546ddfc83e7ab5d68b977fa35e5be7ea
  else
    version '4.6.1'
    url 'http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_dar_x86.tar.gz'
<<<<<<< HEAD
    sha1 'd8033fbbcd0ad6f48103c1b5429ec21414e13e22'
=======
    sha1 'ad2dac48d5889886fccbebb81d3da8db8d79f717'
>>>>>>> bd4b8117546ddfc83e7ab5d68b977fa35e5be7ea
  end

  def extension_type; "zend_extension"; end

  def install
    prefix.install "ioncube_loader_dar_5.3.so" => "ioncubeloader.so"
    write_config_file if build.with? "config-file"
  end
end
