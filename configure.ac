#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([{{name}}], [0.1.0])
AC_CONFIG_SRCDIR([c_src/{{name}}.c])
AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_HEADERS([c_src/config.h])
AM_INIT_AUTOMAKE

# Checks for programs.
AC_PROG_CXX
AC_PROG_AWK
AC_PROG_CC
AC_PROG_CPP
AM_PROG_AR
AC_PROG_INSTALL
AC_PROG_LN_S
AC_PROG_MAKE_SET

LT_INIT

# Checks for header files.
AC_CHECK_HEADERS([arpa/inet.h fcntl.h inttypes.h limits.h memory.h netinet/in.h stddef.h stdint.h stdlib.h string.h sys/ioctl.h sys/time.h unistd.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_CHECK_HEADER_STDBOOL
AC_C_INLINE
AC_TYPE_INT16_T
AC_TYPE_INT32_T
AC_TYPE_INT8_T
AC_TYPE_OFF_T
AC_TYPE_SIZE_T
AC_TYPE_SSIZE_T
AC_TYPE_UINT16_T
AC_TYPE_UINT32_T
AC_TYPE_UINT64_T
AC_TYPE_UINT8_T

# Checks for library functions.
AC_FUNC_FORK
AC_FUNC_MALLOC
AC_FUNC_MKTIME
AC_FUNC_MMAP
AC_FUNC_REALLOC
#AC_FUNC_STRNLEN
AC_CHECK_FUNCS([atexit clock_gettime ftruncate gethostname gettimeofday memmove memset mkdir munmap pow select strchr strdup strerror strncasecmp strrchr strstr strtol strtoul])

# https://github.com/erlang/otp/pull/4527
PKG_CHECK_MODULES(EI, erl_ei)

AC_ARG_ENABLE([stubbed],
[  --enable-stubbed    Turn on stubbed mode],
[case "${enableval}" in
  yes) stubbed=true
       AC_MSG_WARN([Sutubbed mode enabled]) ;;
  no)  stubbed=false ;;
  *) AC_MSG_ERROR([bad value ${enableval} for --enable-stubbed]) ;;
esac],[stubbed=false])
AM_CONDITIONAL([STUBBED_MODE], [test x$stubbed = xtrue])

AC_CONFIG_FILES([Makefile c_src/Makefile])

AC_OUTPUT
