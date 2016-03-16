{ stdenv, fetchurl, buildPythonPackage, leveldb, cython }:

buildPythonPackage rec {
  version = "0.9";
  name = "plyvel-${version}";

  src = fetchurl {
    url = "https://pypi.python.org/packages/source/p/plyvel/${name}.tar.gz";
    sha256 = "587d93681ae44936ae086b4b45486eb302e3853ba5af149aac3be9e9713998e9";
  };

  doCheck = false;
  buildInputs = [ leveldb cython ];
  meta = {
    description = "a fast and feature-rich Python interface to LevelDB";
    homepage = "https://plyvel.readthedocs.org/";
    license = stdenv.lib.licenses.bsd3;
  };
}
