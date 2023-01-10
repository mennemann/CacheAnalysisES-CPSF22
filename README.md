# ES/CPSF-coding02-CacheAnalysis
In this lab session you will learn how to implement a LRU cache in abstract representation.

## Exercise
Implement a LRU May-Join as described in the lecture, WCET - Cache Analysis.
A 16 SetCache with an associativity of 4 Assumed, and cache lines can hold two memory words -> CacheSize 1024kB.
In order to do so, complete the function "mayJoin" inside [include/AbstractState.h:138](https://github.com/nilhoel1/ES-CPSF-CacheAnalysis-WS22/blob/ES/CPSF/include/AbstractState.h#L148).
The goal is to join the inbound state into the "this" state.


The Project can be build, tested and Evaluated with the "helper" script.
The Setup and some nice to knows are described in the following sections.

When all MayJoinTests are passed the exercise is considered solved.

Again to hand in this exercise, please use Moodle!

## Disclaimer

Should you encounter something you think is a Bug, please let me (Nils) know, during lab sessions.

Keep track of the Repository as I may add more features.

Also I do not support the usage of Windows, Linux is free of charge so get a copy.
I am more than happy helping you install Linux on your machine.

## Setups
The Setup is very similar to Coding01 and can be repeated.
We also will provide the Github classroom workspaces, enabling you to develop from your browser.
Also the setup using Docker is even stronger recommended, since a specific version of [LLVM](https://llvm.org/) is needed.

Using the recommended Setup, you can config and build the project with "Ctr+Shift+b".
The tests can be run/debugged from the side panel from the lab flask, as done for Coding01.
Please remember to always build before testing or debugging!

### VS Code Docker dev container (recommended setup)

This setup is basically already done if using the GitHub Classroom.

1.) install docker and VS Code on your Distribution. Please keep in mind Dev containers are only supported by the native version of VS Code from Microsoft!

<https://docs.docker.com/get-docker/>

<https://code.visualstudio.com/>

For this setup you cannot use the OSS version of VS code or the version from Snap, as the remote development extensions will not work.

2.) I recommend you install the following extensions in vs code

clangd,
Clang-Format,
CodeLLDB,
Docker and
Remote Development (Microsoft VS Code only!)

For a general and minimal C/C++ setup of VS Code (I consider good) see:
<https://ahemery.dev/2020/08/24/c-cpp-vscode/>

The only annoying thing are the Inlay Hints from clangd, which can be disabled by setting the following setting:
```json
"editor.inlayHints.enabled": "offUnlessPressed"
```

3.) The project comes with a pre configured dev container and should prompt you to use it after opening the project. With this you have a running setup. If not please continue reading the manual points.

3.manual.)<- not recommended. Use the helper script to build and run a Container.

```bash
./helper.sh docker
```

This will build a docker image and run a Docker container with the current directory mounted.

The Docker container can later be started from the Docker VS Code extension.

4.manual)<- not recommended. Attach VS Code to the container, in the Docker Tab, and start developing

### VS Code native setup

This is my personally preferred IDE setup for C/C++ and by no means needed to accomplish this exercise.

1.) Install VS Code on your Distribution or get it from Microsoft.

<https://code.visualstudio.com/>

2.) I recommend you install the following extensions in vs code

clangd,
Clang-Format,
CodeLLDB,
C++ TestMate,
Docker and
Remote Development (Microsoft VS Code only!)

For a general C/C++ setup of VS Code (I consider good) see:
<https://ahemery.dev/2020/08/24/c-cpp-vscode/>

Most parts can be skipped, as they are already integrated in this Repo.

3.a.) Set the LLVM_DIR variable to your LLVM(14) installation. On some distributions llvm-14 can be installed via the package manager.

```bash
export LLVM_DIR=<path/to/your/llvm/installation>
```

3.b.) You can auto config and build by hitting Ctr+Shift+B from the IDE or use the helper script.

4.) Pressing F5 will start a debug session, make sure to set halting points.

### Mac setup (deprecated)

I recommend using docker and VS Code for setup.
Also check out the recommended extensions in the Docker section.
If you prefer to work from Linux or Mac OS X, check the Dockerfile for dependencies.
For Mac (tested on M1 Mac mini) you can also use:

```bash
./poolhelper.sh mac
```

But you will need brew installed and also have to use the poolhelper script instead of the normal helper script.

### Setup on a pool PC (deprecated)

At first get an IRB account from the following link and log in:

<https://irb.cs.tu-dortmund.de/cont/de/account/myacc/reservierung/index.html>

Non Informatics Students: Choose the drop Item "Gast and der Fakultät Informatik"

I am sorry but this Website is only available in German.

You will have to use the poolhelper.sh script instead of the normal helper script.

Get and build llvm from source !!This will take a while!!

```bash
./poolhelper.sh llvm
```

In case you can not finish building llvm in one Session just abort it and run this at a later point in time:

```bash
./poolhelper.sh continuellvm
```

Now you have a llvm13 source build.

Remember to use the poolhelper.sh instead of the helper.sh.



## Debugging

When you are using VS Code you can simply use the Debugging Tab, I prepared a debug script for you.
You can also set the following variables in the CacheAnalysisPass/CacheAnalysisPass.cpp file, for more output:

```cpp
  // Development Options
  bool PrintAddresses = false;
  bool PrintEdges = false;
  bool PrintEdgesPost = false;
  bool DumpToDot = false;
  bool DumpNodes = false;
```

Helpful to understand what the program does but not very so much for the actual exercise.

## UnitTest

The best way to see what your function does is to use the [UnitTest.cpp](https://git.cs.tu-dortmund.de/nils.hoelscher/RTSA-lab01-CacheAnalysis/src/branch/master/UnitTest/UnitTest.cpp).
With "C++ TestMate" install you can simply run or debug the test from the side panel in VS Code (Flask Icon).
The "C++ TestMate" is not installed in the VM as I just added this feature now.
Please feel free to add more test cases to your liking in [UnitTest.cpp](https://git.cs.tu-dortmund.de/nils.hoelscher/RTSA-lab01-CacheAnalysis/src/branch/master/UnitTest/UnitTest.cpp).


## Configuring and building

The easiest way is to use the VS Code tasks in this project.
By using CTR+Shift+B you can config and then build the project.

### Use the helper script

Again if you work on a Pool PC use poolhelper.sh insted of the helper.sh script.

### Initial setup

```bash
./helper.sh all
```

To get a list of what the helper script can do simply type

```bash
./helper.sh
```

### Run

Run the pass on a single test.
fft1 is recommended during development.

```bash
./helper.sh run fft1
```

### Eval

Runs the Pass on a set of tests and also prints the expected results.
This will be used to measure correctness of you implementation.

```bash
./helper.sh eval
```

## Use the Terminal (Obsolete if script is used)

This section is not needed, fi you are using the script but for the sake of completeness it is provided anyways.

Initial Setup:

```bash
mkdir build
cd build
cmake -DLT_LLVM_INSTALL_DIR=$LLVM_DIR ../CacheAnalysisPass/
make
cd ..
```

Run:

```bash
opt -load-pass-plugin build/libCacheAnalysisPass.so \
-passes=lru-misses test/crc.ll
```

## Alternative Setups

These Setups are alternatives and I do not recommend them.
These are here in case you want to "play around" with the Code and LLVM.

### Installing LLVM 14 on Mac OS X

On Darwin you can install LLVM 13 with [Homebrew](https://brew.sh/):

```bash
brew install llvm@14
```

If you already have an older version of LLVM installed, you can upgrade it to
LLVM 14 like this:

```bash
brew upgrade llvm
```

Once the installation (or upgrade) is complete, all the required header files,
libraries and tools will be located in `/usr/local/opt/llvm/`.

### Installing LLVM 14 on Ubuntu

On Ubuntu Bionic, you can [install modern
LLVM](https://blog.kowalczyk.info/article/k/how-to-install-latest-clang-6.0-on-ubuntu-16.04-xenial-wsl.html)
from the official [repository](http://apt.llvm.org/):

```bash
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
sudo apt-add-repository "deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic-13 main"
sudo apt-get update
sudo apt-get install -y llvm-14 llvm-14-dev llvm-14-tools clang-14
```

This will install all the required header files, libraries and tools in
`/usr/lib/llvm-14/`.

### Building LLVM 14 From Sources

Building from sources can be slow and tricky to debug. It is not necessary, but
might be your preferred way of obtaining LLVM 14. The following steps will work
on Linux and Mac OS X:

```bash
git clone https://github.com/llvm/llvm-project.git
cd llvm-project
git checkout release/14.x
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_TARGETS_TO_BUILD=host -DLLVM_ENABLE_PROJECTS=clang <llvm-project/root/dir>/llvm/
cmake --build .
```

For more details read the [official
documentation](https://llvm.org/docs/CMake.html).

This will install all the required header files, libraries and tools in `your/llvm/build/path`.
