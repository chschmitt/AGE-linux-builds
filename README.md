# AGE-linux-builds

This repo is work in progress to compile the [Advanced Genie Editor](https://github.com/Tapsa/AGE) on Linux. 

Patches to AGE and its dependencies for the linux builds will be pushed to

 * https://github.com/chschmitt/AGE
 * https://github.com/chschmitt/pcrio
 * https://github.com/chschmitt/genieutils (no modifications so far)

There is currently no effort make these changes compatible with Tapsa's repos to have them merged back.

Also, this is more of an experiment. So do not except anything to work.

# Installing the builds

There are builds for Ubuntu 22.04 (jammy), Ubuntu 20.04 (focal) and Debian 12 (bookworm).

To install:

- Choose and download your build.
- Unpack to path of your choice.
- Enter AGE subdirectory and start the application with `./AdvancedGenieEditor3`

Also, you may need to **install the required libraries** (`libboost-iostreams`, `libsfml` and `wxwdigets`)

```
# For ubuntu 22.04
sudo apt install libboost-iostreams1.74.0 libsfml-audio2.5 libsfml-system2.5 libwxgtk3.0-gtk3-0v5
```

In the future, there may be instructions on how to run the buillds via docker if you are on a distribution that cannot run the builds natively.



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

