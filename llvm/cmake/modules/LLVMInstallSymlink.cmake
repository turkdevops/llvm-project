# We need to execute this script at installation time because the
# DESTDIR environment variable may be unset at configuration time.
# See PR8397.

include(GNUInstallDirs)

function(install_symlink name target outdir)
  set(DESTDIR $ENV{DESTDIR})
  GNUInstallDirs_get_absolute_install_dir(bindir "${outdir}" BINDIR)
  set(bindir "${DESTDIR}${bindir}")

  message(STATUS "Creating ${name}")

  execute_process(
    COMMAND "${CMAKE_COMMAND}" -E create_symlink "${target}" "${name}"
    WORKING_DIRECTORY "${bindir}" ERROR_VARIABLE has_err)
  if(CMAKE_HOST_WIN32 AND has_err)
    execute_process(
      COMMAND "${CMAKE_COMMAND}" -E copy "${target}" "${name}"
      WORKING_DIRECTORY "${bindir}")
  endif()

endfunction()
