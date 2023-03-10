{
  description = "hello world";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      rec {
        packages.default = pkgs.haskellPackages.callPackage ./default.nix { };
        devShells.default = pkgs.mkShell { inputsFrom = [ packages.default.env ]; };
        formatter = pkgs.nixpkgs-fmt;
      }
    );
}
