{ stdenv, fetchurl, python, buildPythonPackage, leveldb, cython }:

buildPythonPackage rec {
  version = "0.9";
  name = "plyvel-${version}";

  src = fetchurl {
    url = "https://pypi.python.org/packages/source/p/plyvel/plyvel-0.9.tar.gz";
    sha256 = "587d93681ae44936ae086b4b45486eb302e3853ba5af149aac3be9e9713998e9";
  };

  buildInputs = [ python leveldb cython ];
  meta = {
    description = "a fast and feature-rich Python interface to LevelDB";
    homepage = "https://plyvel.readthedocs.org/";
    license = stdenv.lib.licenses.bsd3;
  };
}
