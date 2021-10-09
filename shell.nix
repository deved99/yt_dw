with import <nixpkgs> {};
let
  my-python = python39.withPackages(ps: with ps; [ youtube-dl ]);
in
  stdenv.mkDerivation {
    name = "yt_dw";
    buildInputs = [
      my-python libnotify
    ];
    # nativeBuildInputs = [ pkgconfig wrapGAppsHook ];
  }
