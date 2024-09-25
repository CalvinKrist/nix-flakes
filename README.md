## Nix Flakes

New nix user here! I'm interested in learning to use nix flakes and shells to help standardize environments
across my organization, as well as for my personal use. My ideal usecase, as I currently understand it, is:

1. Have a series of nix flakes hosted remotely (such as in this repository!)
2. Within my organization's repos, use `direnv` to insert transparent shells
  * These shells will use the remote flakes by default, but if needed can ovveride package versions (for example, if the remote shell upgrades to Go 1.23 and the repo needs to stay on Go 1.22 for a while longer).
