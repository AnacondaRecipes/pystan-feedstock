@REM set "STAN_VER=%PKG_VERSION:~0,-2%"

@REM pushd pystan\\stan\\lib\\stan_math
@REM if errorlevel 1 exit 1

@REM rd /q /s doc doxygen make test lib\\cpplist_4.45 lib\\gtest_1.7.0
@REM if errorlevel 1 exit 1

@REM popd
@REM if errorlevel 1 exit 1


@REM :: For VS<10 copy stdint to the pystan directory so models can be compiled.
@REM if %VS_MAJOR% LSS 10 (
@REM   robocopy %LIBRARY_INC% pystan\\stan\\src stdint.h
@REM   if errorlevel GTR 1 exit 1
@REM )

@REM python setup.py install -q --single-version-externally-managed --record=record.txt --no-deps --no-build-isolation
@REM if errorlevel 1 exit 1
