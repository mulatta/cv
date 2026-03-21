{ inputs, ... }:
{
  perSystem =
    { pkgs, self', ... }:
    let
      inherit (inputs.gitignore.lib) gitignoreSource;
    in
    {
      packages = {
        cv = pkgs.stdenvNoCC.mkDerivation {
          pname = "cv";
          version =
            let
              d = inputs.self.lastModifiedDate;
            in
            "${builtins.substring 0 4 d}-${builtins.substring 4 2 d}-${builtins.substring 6 2 d}";
          src = gitignoreSource ../typst;

          nativeBuildInputs = [ pkgs.typst ];

          buildPhase = ''
            typst compile main.typ cv.pdf
          '';

          installPhase = ''
            mkdir -p $out
            cp cv.pdf $out/
          '';
        };

        default = self'.packages.cv;
      };

      apps.watch = {
        type = "app";
        program = toString (
          pkgs.writeShellScript "watch" ''
            cd typst
            ${pkgs.typst}/bin/typst watch main.typ cv.pdf
          ''
        );
      };
    };
}
