# Release X.Y (202?-??-??)

- Two new builtin functions,
  [`builtins.parseFlakeRef`](@docroot@/language/builtins.md#builtins-parseFlakeRef)
  and
  [`builtins.flakeRefToString`](@docroot@/language/builtins.md#builtins-flakeRefToString),
  have been added.
  These functions are useful for converting between flake references encoded as attribute sets and URLs.

- [`builtins.toJSON`](@docroot@/language/builtins.md#builtins-parseFlakeRef) now prints [--show-trace](@docroot@/command-ref/conf-file.html#conf-show-trace) items for the path in which it finds an evaluation error.

- Introduced the store [`mounted-ssh-ng://`](@docroot@/command-ref/new-cli/nix3-help-stores.md). This store allows full access to a Nix store on a remote machine and additionally requires that the store be mounted in the local filesystem.
