{ inputs, ... }:
{
  imports = [ inputs.treefmt-nix.flakeModule ];
  perSystem = {
    treefmt = {
      projectRootFile = ".git/config";

      programs = {
        # Nix
        nixfmt.enable = true;
        deadnix.enable = true;
        statix.enable = true;

        # Typst
        typstyle.enable = true;

        # General
        keep-sorted.enable = true;
        typos.enable = true;
      };

      settings.global.excludes = [
        "*.lock"
        ".gitignore"
        "result"
      ];
    };
  };
}
