#pragma once

#include <stddef.h>
#include <stdint.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef size_t usz;

typedef int8_t i8;
typedef int16_t i16;
typedef int32_t i32;
typedef int64_t i64;

#if defined(__linux__)
#include <sys/types.h>
typedef ssize_t isz;
#else
typedef i64 isz;
#endif

#define UNUSED(x) (void)(x)
