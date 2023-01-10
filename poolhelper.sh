#!/bin/bash

clean () {
  echo "==== Cleaning build folder ===="
  rm -rf build/
  rm compile_commands.json
}

config () {
  echo "==== Crating build folder ===="
  cd llvm
  export LLVM_DIR=$(pwd)
  cd ..
  mkdir build
  cd build
  echo "==== Configuring cmake ===="
  cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -DLT_LLVM_INSTALL_DIR=$LLVM_DIR ..
  cd ..
  cp build/compile_commands.json compile_commands.json
  echo "==== Done! ===="
}

compile () {
  cd build
  echo "==== Compiling Project ===="
  make
  cd ..
  echo "==== Done! ===="
}

run () {
  echo "==== Running $1 ===="
  ./llvm/bin/opt -load-pass-plugin build/lib/libCacheAnalysisPass.so \
    -passes='lru-misses(function(loop-unroll-and-jam))' \
    test/$1.ll -o /dev/null
  #llvm-dis < out.bc > out.ll
}

test () {
  ./build/bin/UnitTest --gtest_brief=1
}

buildllvm() {
  mkdir llvm
  cd llvm
  wget https://github.com/llvm/llvm-project/releases/download/llvmorg-13.0.1/llvm-13.0.1.src.tar.xz
  tar -xf llvm-13.0.1.src.tar.xz
  rm llvm-13.0.1.src.tar.xz
  cmake -DCMAKE_BUILD_TYPE=MinSizeRel -DLLVM_INCLUDE_TESTS=FALSE -DLLVM_TARGETS_TO_BUILD=host llvm-13.0.1.src/
  make -j 4
  export LLVM_DIR=$(pwd) >> ~/.zshrc
  export LLVM_DIR=$(pwd) >> ~/.bashrc
  cd ..
}


mac() {
  brew install cmake make wget ninja
  buildllvm
  cd llvm
  export LLVM_DIR=$(pwd) >> ~/.zshrc
  cd ..
}


allBenchs=( "adpcm"
  "bs"
  "bsort100"
  "cnt"
  "compress"
  "cover"
  "crc"
  "dijkstra"
  "duff"
  "edn"
  "expint"
  "fdct"
  "fft1"
  "fibcall"
  "fir"
  "hello"
  "insertsort"
  "janne_complex"
  "jfdctint"
  "lcdnum"
  "lms"
  "ludcmp"
  "matmult"
  "minver"
  "ndes"
  "nsichneu"
  "ns"
  "prime"
  "qsort-exam"
  "qurt"
  "recursion"
  "select"
  "sqrt"
  "statemate"
  "ud"
  "whet"
)

runall () {
  for str in ${allBenchs[@]}; do
    echo
    run $str
  done
}

case $1 in
  llvm)
    buildllvm
    ;;
  continuellvm)
    cd llvm
    make -j 4
    cd ..
    ;;
  clean)
    clean
    ;;
  config)
    config
    ;;
  c | compile)
    compile
    ;;
  cr)
    compile
    if [ $2 ]; then
      run $2
    else
      echo "==== Please provide name of the test as second argument! ===="
    fi
    ;;
  r | run)
    if [ $2 ]; then
      run $2
    else
      echo "==== Please provide name of the test as second argument! ===="
    fi
    ;;
  t | test)
    test
    ;;
  ra | runall)
    runall
    ;;
  docker)
    docker build -t rtsalab01cacheanalysis:latest .
    docker run -i -d -v "$(pwd)"/.:/root:rw --name RTSAlab01 rtsalab01cacheanalysis
    ;;
  evaluation | eval)
    run "crc"
    echo "==== Correct crc ===="
    echo "MustHits: 90"
    echo
    run "cnt"
    echo "==== Correct cnt ===="
    echo "MustHits: 28"
    echo
    run "duff"
    echo "==== Correct duff ===="
    echo "MustHits: 78"
    echo
    run "fft1"
    echo "==== Correct fft1 ===="
    echo "MustHits: 74"
    echo
    run "insertsort"
    echo "==== Correct insertsort ===="
    echo "MustHits: 61"
    echo
    run "matmult"
    echo "==== Correct matmult ===="
    echo "MustHits: 34"
    echo
    ;;
  a | all)
    clean
    config
    cd build
    make
    echo "==== Done! ===="
    ;;
  *)
    if [ $1 ]; then
      echo "Unknown argument: $1"
    fi
    echo "Please provide one of the following arguments:"
    echo "  llvm                Build LLVM from source"
    echo "  llvmcontinue        Contionue building llvm where you left off last time"
    echo "  mac                 Setup LLVM for mac (needs brew)"
    echo "  clean               Deletes the build folder"
    echo "  config              Creates build folder and configures build System"
    echo "  docker              Build and Run Docker container for development"
    echo "  eval                Run a subset of tests for evaluation of your implementation"
    echo "  c | compile             Compiles the Project"
    echo "  a | all                 Cleans, configures and compiles the project"
    echo "  r | run [name]          Run pass on test/[name] from the test folder"
    echo "  cr [name]               Compile and run pass on test/[name] from the test folder"
    echo "  ra | runall              Run pass on all tests from the test folder"
    echo "  t | test                 Execute Unit tests, only test that Fail are printed."
    exit
  ;;
esac
