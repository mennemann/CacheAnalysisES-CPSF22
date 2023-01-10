#ifndef CONCRETESTATE_H
#define CONCRETESTATE_H

// Currently Unused.

#include <cassert>
#include <cstddef>
#include <cstdlib>
#include <iostream>
#include <list>
#include <map>
#include <sstream>
#include <string>

#include "Address.h"
// Forward declarations

namespace cacheAnaPass {
class ConcreteState;

} // namespace cacheAnaPass

class ConcreteState {
public: // everything is public, because IDGAF
  struct Entry {
    unsigned int Block;
    unsigned int Age;
  };

  struct Set {
    std::map<unsigned int, unsigned int> Entries;
  };

  std::map<unsigned int, Set> Sets;

  ConcreteState(Address Addr) { Sets[Addr.Index].Entries[0] = Addr.Tag; }

};     // namespace
#endif // CONCRETESTATE_H