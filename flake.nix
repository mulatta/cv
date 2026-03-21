{
  description = "Seungwon Lee's CV in Typst";

  outputs =
    inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "aarch64-darwin"
        "aarch64-linux"
        "x86_64-linux"
      ];

      imports = [
        ./nix/cv.nix
        ./nix/formatter.nix
        ./nix/shell.nix
      ];

      perSystem =
        { system, ... }:
        {
          _module.args.pkgs = import inputs.nixpkgs { inherit system; };
        };
    };

  inputs = {
    # keep-sorted start
    flake-parts.inputs.nixpkgs-lib.follows = "nixpkgs";
    flake-parts.url = "github:hercules-ci/flake-parts";
    gitignore.inputs.nixpkgs.follows = "nixpkgs";
    gitignore.url = "github:hercules-ci/gitignore.nix";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    treefmt-nix.inputs.nixpkgs.follows = "nixpkgs";
    treefmt-nix.url = "github:numtide/treefmt-nix";
    # keep-sorted end
  };
}
