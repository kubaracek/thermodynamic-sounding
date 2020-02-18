{ mkDerivation, base, stdenv }:
mkDerivation {
  pname = "sounding";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base ];
  executableHaskellDepends = [ base ];
  doHaddock = false;
  homepage = "https://github.com/kubaracek/sounding";
  description = "Library for weather thermodynamic analysis";
  license = "unknown";
  hydraPlatforms = stdenv.lib.platforms.none;
}
