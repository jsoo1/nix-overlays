let
  pkgs = import <nixpkgs> {};
  checkmake = import ./default.nix;
in pkgs.callPackage checkmake {}
