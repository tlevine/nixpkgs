{stdenv, fetchurl}:

stdenv.mkDerivation {
  name = "gobi_loader-0.7";
  src = fetchurl {
    url = "http://www.codon.org.uk/~mjg59/gobi_loader/download/gobi_loader-0.7.tar.gz";
    sha256 = "78bdc255451cde1caa406e146b01a88828480c9c43272de8cffdb61627be754a";
  };
  driver = fetchurl {
    url = "https://download.lenovo.com/ibmdl/pub/pc/pccbbs/mobiles/7xwc48ww.exe";
    sha256 = "0ebe933da62bb38db556a4a20d25f4109cc1ae062ddce2f679059628e2487aeb";
  }
  meta = {
    description = "IBM ThinkPad hardware functions driver";
    homepage = "http://www.codon.org.uk/~mjg59/gobi_loader/";
    license = stdenv.lib.licenses.gpl2;
    maintainers = [ stdenv.lib.maintainers.tlevine ];
    # This is for Linux ThinkPads with Qualcomm Gobi.
    # I took these platfroms from tp_smapi.
    platforms = [ "x86_64-linux" "i686-linux" ];
  };
}
