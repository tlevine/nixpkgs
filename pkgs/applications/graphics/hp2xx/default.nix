{ stdenv, makeWrapper, fetchurl,
  libpng, libtiff, libjpeg, libX11, zlib }:

stdenv.mkDerivation rec {
  name = "hp2xx-3.4.4";
  src = fetchurl {
    url = "ftp://ftp.gnu.org/gnu/hp2xx/${name}.tar.gz";
    sha256 = "47b72fb386a189b52f07e31e424c038954c4e0ce405803841bed742bab488817";
  };

  nativeBuildInputs = [ makeWrapper ];
  buildInputs = [ libpng libtiff libjpeg libX11 zlib texinfo ];

  installPhase = ''
    mkdir -p $out/bin
    cd sources
    make install-bin prefix=$out
  '';

  meta = {
    description = "Convert to and from Hewlett-Packard Graphics Language (HP-GL)";
    longDescription = ''
      The hp2xx program is a versatile tool to convert vector-oriented
      graphics data given in Hewlett-Packard's HP-GL plotter language into a
      variety of popular graphics formats, both vector- and raster-oriented.
    '';
    homepage = https://www.gnu.org/software/hp2xx/;
    license = stdenv.lib.licenses.gpl2;
    maintainers = stdenv.lib.maintainers.tlevine;
    platforms = stdenv.lib.platforms.unix;
  };
}
