#include "MetroTRK/TrkInit.h"
#include <stdio.h>

#ifdef __cplusplus
extern "C" {
#endif

// 80003640
void EnableMetroTRKInterrupts() {}

// 80003644
void InitMetroTRK() {}

// 80003648
int __read_console(__file_handle file, fpos_t* position, int mode, __idle_proc __idle_proc) {
  return 0;
}

// 80003650
int __TRK_write_console() { return 0; }

#ifdef __cplusplus
}
#endif
