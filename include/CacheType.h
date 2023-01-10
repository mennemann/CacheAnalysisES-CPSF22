#ifndef CACHETYPE_H
#define CACHETYPE_H
#include <cassert>

// Forward declarations

namespace cacheAnaPass {
class CacheType;

} // namespace cacheAnaPass

/**
 * @brief Class to Check if Set Associate Cache is valid.
 *
 */
class CacheType {
public:
  bool isPower2(int N) { return N && !(N & (N - 1)); }

  int Sets;          // n Sets
  int Associativity; // m Associativity
  int LineSize;      // In Bits
  int CacheSize;     // In Bits, n*m*Linesize

  /**
   * @brief Construct a new Cache Type object
   *
   * @param Sets
   * @param Associativity
   * @param Linesize
   */
  CacheType(unsigned int Sets, unsigned int Associativity,
            unsigned int Linesize) {
    assert(isPower2(Sets));
    assert(isPower2(Associativity));
    assert(isPower2(Linesize));
    this->Sets = Sets;
    this->Associativity = Associativity;
    this->LineSize = Linesize;
    this->CacheSize = Sets * Associativity * Linesize;
  }
  CacheType();
};
#endif // CACHETYPE_H