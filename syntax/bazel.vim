" Vim syntax file
" Langauge: Bazel Build File
" Maintainer: James Durand

if exists("b:current_syntax")
	finish
endif

" Language features
syntax keyword bazelTodo contained TODO FIXME XXX NOTE
syntax match bazelComment '#.*$' contains=bazelTodo
syntax match bazelString '".*"'

" Android build rules
syntax keyword androidBinary android_binary
	\ name
	\ deps
	\ srcs
	\ assets
	\ assets_dir
	\ custom_package
	\ densities
	\ deprecation
	\ dex_shards
	\ dexopts
	\ distribs
	\ exports_manifest
	\ features
	\ inline_constants
	\ javacopts
	\ legacy_native_support
	\ licenses
	\ main_dex_list
	\ main_dex_list_opts
	\ main_dex_proguard_specs
	\ mainifest
	\ multidex
	\ nocompress_extensions
	\ plugins
	\ proguard_generate_mapping
	\ proguard_specs
	\ resource_configuration_filters
	\ resource_files
	\ tags
	\ testonly
	\ visibility

syntax keyword androidLibrary
	\ name
	\ deps
	\ srcs
	\ data
	\ assets
	\ assets_dir
	\ custom_package
	\ deprecation
	\ distribs
	\ exports_manifest
	\ features
	\ idl_import_root
	\ idl_parcelables
	\ idl_srcs
	\ inline_constants
	\ javacopts
	\ licenses
	\ mainifest
	\ neverlink
	\ plugins
	\ proguard_specs
	\ resource_files
	\ tags
	\ testonly
	\ visibility

" C/C++ build rules
syntax keyword cCPPRules cc_binary cc_library cc_test

" Java build rules
syntax keyword javaRules java_binary java_import java_library java_test java_plugin java_toolchain

" Objective-C build rules
syntax keyword objcRules ios_application ios_device ios_extension ios_extension_binary ios_framework ios_framework_binary objc_binary
syntax keyword objcRules j2objc_library objc_bundle objc_bundle_library objc_framework objc_import objc_library objc_proto_library
syntax keyword objcRules experimental_ios_test ios_test
syntax keyword objcRules objc_xcodeproj

" Protocol buffer rules
" None, yet...

" Python build rules
syntax keyword pythonRules py_binary py_library py_test

" Shell build rules
syntax keyword shellRules sh_binary sh_library sh_test

" Actions
syntax keyword actionRules action_listener extra_action

" General rules
syntax keyword generalRules filegroup genquery test_suite config_setting genrule

" Workspace rules
syntax keyword workspaceRules bind git_repository http_archive http_file http_jar
syntax keyword workspaceRules local_repository maven_jar maven_server new_git_repository new_http_archive new_local_repository



let b:current_syntax = "bazel"

highlight default link bazelTodo      Todo
highlight default link bazelComment   Comment
highlight default link bazelString    String
highlight default link androidBinary  Statement
highlight default link androidLibrary Statement
highlight default link cCPPRules      Keyword
highlight default link javaRules      Keyword
highlight default link objcRules      Keyword
highlight default link pythonRules    Keyword
highlight default link shellRules     Keyword
highlight default link actionRules    Keyword
highlight default link workspaceRules Keyword

