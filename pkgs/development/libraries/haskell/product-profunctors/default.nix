# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, contravariant, profunctors }:

cabal.mkDerivation (self: {
  pname = "product-profunctors";
  version = "0.5";
  sha256 = "02hkcq4vzk4641hkm1rf2v2qdbaqalbfgnwfdk7yfz497qv9lmad";
  buildDepends = [ contravariant profunctors ];
  jailbreak = true;
  meta = {
    homepage = "https://github.com/tomjaguarpaw/product-profunctors";
    description = "product-profunctors";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = with self.stdenv.lib.maintainers; [ ocharles ];
  };
})