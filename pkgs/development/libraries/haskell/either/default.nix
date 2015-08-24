# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, bifunctors, exceptions, free, monadControl, MonadRandom
, mtl, profunctors, semigroupoids, semigroups, transformers
, transformersBase
}:

cabal.mkDerivation (self: {
  pname = "either";
  version = "4.3.2";
  sha256 = "0bmw4qc263fs5ivf94qfzrq26v8kflb13gims7c474d4jhg8g0w1";
  buildDepends = [
    bifunctors exceptions free monadControl MonadRandom mtl profunctors
    semigroupoids semigroups transformers transformersBase
  ];
  noHaddock = self.stdenv.lib.versionOlder self.ghc.version "7.6";
  meta = {
    homepage = "http://github.com/ekmett/either/";
    description = "An either monad transformer";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})