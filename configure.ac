dnl Process this file with autoconf
AC_PREREQ([2.69])
AC_INIT(quantum, 0.2, thedevilsvoice@dead10c5.org, https://github.com/devsecfranklin/quantum-computing)
AC_CONFIG_MACRO_DIR(config/m4)
AC_CONFIG_AUX_DIR(config)
AM_INIT_AUTOMAKE

LT_INIT

AC_CONFIG_COMMANDS([franklin-build],
 [echo "(⊃｡•‿•｡)⊃━⭑･ﾟﾟ･*:༅｡.｡༅:*ﾟ:*:✼✿ Configuring for $mypkgname ☽༓･*˚⁺‧"],
 [mypkgname=$PACKAGE_NAME])
AM_PATH_PYTHON(3.8) # minimum version of Python
AC_CONFIG_FILES(
  Makefile
  src/aws/Makefile
  ) # Makefiles to generate, one per line
PY39="python$PYTHON_VERSION" # define the python interpreter
dnl LDFLAGS="$LDFLAGS -l$PY39"
AC_SUBST(PY39, python$PYTHON_VERSION)

dnl put other macros here

AC_OUTPUT