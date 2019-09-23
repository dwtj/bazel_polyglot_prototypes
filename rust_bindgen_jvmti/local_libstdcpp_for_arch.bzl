# This is a workaround for bazelbuild/rules_rust#251 for ArchLinux.

LIBSTDCPP_LINUX = """
cc_library(
  name = "libstdc++",
  srcs = ["libstdc++.so.6"],
  visibility = ["//visibility:public"]
)
"""

def _local_libstdcpp_impl(repository_ctx):
    os = repository_ctx.os.name.lower()
    if os == "linux":
        repository_ctx.symlink("/usr/lib/libstdc++.so.6", "libstdc++.so.6")
        repository_ctx.file("BUILD.bazel", LIBSTDCPP_LINUX)
    else:
        fail(os + " is not supported.")

_add_local_libstdcpp_repository = repository_rule(
    implementation = _local_libstdcpp_impl
)

def add_local_libstdcpp_repository():
    _add_local_libstdcpp_repository(name = "local_libstdcpp")
