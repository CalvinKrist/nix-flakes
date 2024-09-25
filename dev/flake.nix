{
  description = "My first flake";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  outputs = { self, nixpkgs }:
    let
      system = "aarch64-darwin";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      devShells.${system} = rec {
        nodejs = pkgs.mkShell {
          packages = [ pkgs.nodejs ];
        };
        python = pkgs.mkShell {
          packages = [ pkgs.python3 pkgs.poetry ];
        };
        caldev = pkgs.mkShell {
          inputsFrom = [ python nodejs ];
        };
        default = pkgs.mkShell {
          inputsFrom = [ python nodejs ];
        };
      };
    };
}
