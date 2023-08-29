source common.sh

requireSandboxSupport
[[ $busybox =~ busybox ]] || skipTest "no busybox"

# Avoid store dir being inside sandbox build-dir
unset NIX_STORE_DIR
unset NIX_STATE_DIR

enableFeatures mounted-ssh-store

nix build -Lvf simple.nix \
  --arg busybox $busybox \
  --out-link $TEST_ROOT/result-from-remote \
  --store mounted-ssh-ng://localhost

# This verifies that the out link was actually created and valid. The ability
# to create out links (permanent gc roots) is the distinguishing feature of
# the mounted-ssh-ng store.
cat $TEST_ROOT/result-from-remote/hello | grepQuiet 'Hello World!'
