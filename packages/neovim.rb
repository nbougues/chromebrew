require 'package'

class Neovim < Package
  version '0.1.7'
  source_url 'https://github.com/neovim/neovim/archive/v0.1.7.tar.gz'
  source_sha1 '00e67f981105f1acbe06df1dbea21b6f7fa6d9b8'

  depends_on 'libtool'
  depends_on 'autoconf'
  depends_on 'automake'
  depends_on 'cmake'
  depends_on 'gcc'
  depends_on 'pkgconfig'

  def self.build
    system "make"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end
