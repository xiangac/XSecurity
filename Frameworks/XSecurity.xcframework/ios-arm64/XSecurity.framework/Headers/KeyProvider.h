//
//  KeyProvider.h
//  XSecurityCrypto
//
//  Created by zjwx01 on 2026/7/10.
//

#ifndef KeyProvider_h
#define KeyProvider_h

#include <stdio.h>

void final_key(const unsigned char *external_salt, int salt_len, unsigned char *output_buffer);

#endif /* KeyProvider_h */
