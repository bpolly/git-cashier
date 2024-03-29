# git-cashier

A helpful tool that shows your project's most recently updated git branches with an intutive selection menu to easily switch between them . Save time remembering all of your branch names - let git-cashier help!

```bash
❯ git-cashier
=== Most Recent Git Branches ===
1) master            3) june19-updates    5) users2
2) august-updates    4) use-single-email
Choose a branch:
```


## Installation

MacOS
```bash
brew install bpolly/tools/git-cashier
```

Brew formula located at https://github.com/bpolly/homebrew-tools/blob/master/Formula/git-cashier.rb

## Contribution Instructions

After merging changes into `master`, create a new release and upload the `vX.X.X.tar.gz` archive. Redownload the file locally from the same page and generate the SHA256 checksum for it by doing `shasum -a 256 git-cashier-X.X.X.tar.gz`. Update the formula with that checksum and the name of the local file you just downloaded.
