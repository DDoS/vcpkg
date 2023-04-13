vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO realtimechris/jsonifier
    REF "v${VERSION}"
    # Auto-generated by release CI action at realtimechris/Jsonifier
    SHA512 146a2c899e8280a9a0ad7dfb51f4446c864b0c0a7b3f74685f02d3bfd8fce6a51e0a24dc31cfe47d7f8a6633319515da947be130cdf0afed3382a1528141e2b0
	HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/License.md")