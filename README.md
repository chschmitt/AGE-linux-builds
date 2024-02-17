# AGE-linux-builds

This repo is work in progress to compile the [Advanced Genie Editor](https://github.com/Tapsa/AGE) on Linux. 

Patches to AGE and its dependencies for the linux builds will be pushed to

 * https://github.com/chschmitt/AGE
 * https://github.com/chschmitt/pcrio
 * https://github.com/chschmitt/genieutils (no modifications so far)

There is currently no effort make these changes compatible with Tapsa's repos to have them merged back.

# Installing the builds

tbd

# Build it yourself

tbd

# What was patched?

## AGE

* Replace `\` with `/` in path calculations
* Remove usage of wxwidgets features > 3.0
    * Refactor LRU_SLP to use `std::string` instead of `wxString` (not hashable)
    * Fix display scaling to 1 (no DIP-dependent scaling)
    * Add some includes
* Adjust CMakeLists.txt

##  pcrio

*  use regular libc functions instead of the "safe" ones with _s suffix.

