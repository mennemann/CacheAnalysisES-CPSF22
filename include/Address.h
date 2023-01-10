#ifndef ADDRESS_H
#define ADDRESS_H

// Forward declarations
#include <cassert>
namespace cacheAnaPass {
class Address;

} // namespace cacheAnaPass

class Address {
public: // everything is public, because IDGAF
  unsigned int Addr;
  unsigned int Offset;
  unsigned int Index;
  unsigned int Tag;

  // Object holding Tag, Index and Offset for a 16Sets, 4Assoc ,2CL Cache
  Address(unsigned int Addr) {
    this->Addr = Addr;
    // Ignoring Offset
    this->Offset = Addr & 0b1;
    assert(Offset <= 1);
    this->Index = (Addr & 0b11110) >> 1;
    assert(Index <= 15);
    this->Tag = Addr >> 5;
  }

};     // namespace
#endif // STATE_H