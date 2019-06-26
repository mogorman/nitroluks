with import <nixpkgs> {};
let
in
stdenv.mkDerivation rec {
name = "env";
  buildInputs = [
    gcc
    pkgconfig
    libnitrokey
  ];
}
