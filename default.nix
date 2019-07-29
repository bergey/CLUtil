{ mkDerivation, base, bytestring, containers, lens, linear, mtl
, OpenCL, stdenv, tagged, tasty, tasty-hunit, transformers, vector
}:
mkDerivation {
  pname = "CLUtil";
  version = "0.10.0";
  src = ./.;
  doCheck = false;  # broken because can't find platform
  doHaddock = false;  # out of scope identifiers
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base bytestring containers lens linear mtl OpenCL tagged
    transformers vector
  ];
  testHaskellDepends = [ base tasty tasty-hunit vector ];
  homepage = "http://github.com/acowley/CLUtil";
  description = "A thin abstraction layer over the OpenCL library";
  license = stdenv.lib.licenses.bsd3;
}
