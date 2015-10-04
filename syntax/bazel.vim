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

syntax keyword androidLibrary android_library
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
syntax keyword ccBinary cc_binary
	\ name
	\ deps
	\ srcs
	\ data
	\ abi
	\ abi_deps
	\ args
	\ copts
	\ defines
	\ deprecation
	\ distribs
	\ features
	\ hdrs_check
	\ includes
	\ licenses
	\ linkopts
	\ linkshared
	\ linkstatic
	\ malloc
	\ nocopts
	\ output_licenses
	\ stamp
	\ tags
	\ testonly
	\ visibility

syntax keyword ccLibrary cc_library
	\ name
	\ deps
	\ srcs
	\ data
	\ hdrs
	\ abi
	\ abi_deps
	\ alwayslink
	\ copts
	\ defines
	\ deprecation
	\ distribs
	\ features
	\ hdrs_check
	\ includes
	\ licenses
	\ linkopts
	\ linkstatic
	\ nocopts
	\ tags
	\ testonly
	\ textual_hdrs
	\ visibility

syntax keyword ccTest cc_test
	\ name
	\ deps
	\ srcs
	\ data
	\ abi
	\ abi_deps
	\ args
	\ copts
	\ defines
	\ deprecation
	\ distribs
	\ features
	\ flaky
	\ hdrs_check
	\ includes
	\ licenses
	\ linkopts
	\ linkstatic
	\ local
	\ malloc
	\ nocopts
	\ shard_count
	\ size
	\ stamp
	\ tags
	\ testonly
	\ timeout
	\ visibility

" Java build rules
syntax keyword javaBinary java_binary
	\ name
	\ deps
	\ srcs
	\ data
	\ resources
	\ args
	\ classpath_resources
	\ create_executable
	\ deploy_manifest_lines
	\ deprecation
	\ distribs
	\ features
	\ javacopts
	\ jvm_flags
	\ licenses
	\ main_class
	\ output_licenses
	\ plugins
	\ runtime_deps
	\ stamp
	\ tags
	\ testonly
	\ visibility

syntax keyword javaImport java_import
	\ name
	\ deps
	\ data
	\ constraints
	\ deprecation
	\ distribs
	\ exports
	\ features
	\ jars
	\ licenses
	\ neverlink
	\ runtime_deps
	\ srcjar
	\ tags
	\ testonly
	\ visibility

syntax keyword javaLibrary java_library
	\ name
	\ deps
	\ srcs
	\ data
	\ resources
	\ deprecation
	\ distribs
	\ exported_plugins
	\ exports
	\ features
	\ javacopts
	\ licenses
	\ neverlink
	\ plugins
	\ runtime_deps
	\ tags
	\ testonly
	\ visibility

syntax keyword javaTest java_test
	\ name
	\ deps
	\ srcs
	\ data
	\ resources
	\ args
	\ classpath_resources
	\ create_executable
	\ deploy_manifest_lines
	\ deprecation
	\ distribs
	\ features
	\ flaky
	\ javacopts
	\ jvm_flags
	\ licenses
	\ local
	\ main_class
	\ plugins
	\ runtime_deps
	\ shard_count
	\ size
	\ stamp
	\ tags
	\ testonly
	\ timeout
	\ visibility

syntax keyword javaPlugin java_plugin
	\ name
	\ deps
	\ srcs
	\ data
	\ resources
	\ deprecation
	\ distribs
	\ features
	\ javacopts
	\ licenses
	\ neverlink
	\ plugins
	\ processor_class
	\ tags
	\ testonly
	\ visibility

syntax keyword javaToolchain java_toolchain
	\ name
	\ deprecation
	\ distribs
	\ encoding
	\ features
	\ jvm_opts
	\ licenses
	\ misc
	\ source_version
	\ tags
	\ target_version
	\ testonly
	\ visibility
	\ xlint

" Objective-C build rules
syntax keyword iosApplication ios_application
	\ name
	\ app_icon
	\ binary
	\ bundle_id
	\ deprecation
	\ distribs
	\ entitlements
	\ extensions
	\ families
	\ features
	\ infoplist
	\ launch_image
	\ licenses
	\ provisioning_profile
	\ tags
	\ testonly
	\ visibility

syntax keyword iosDevice ios_device
	\ name
	\ deprecation
	\ distribs
	\ features
	\ ios_version
	\ licenses
	\ tags
	\ testonly
	\ type
	\ visibility

syntax keyword iosExtension ios_extension
	\ name
	\ app_icon
	\ binary
	\ bundle_id
	\ deprecation
	\ distribs
	\ entitlements
	\ families
	\ features
	\ infoplist
	\ launch_image
	\ licenses
	\ provisioning_profile
	\ tags
	\ testonly
	\ visibility

syntax keyword iosExtensionBinary ios_extension_binary
	\ name
	\ deps
	\ srcs
	\ data
	\ resources
	\ hdrs
	\ asset_catalogs
	\ bridging_header
	\ bundles
	\ copts
	\ datamodels
	\ defines
	\ deprecation
	\ distribs
	\ enable_modules
	\ features
	\ includes
	\ licenses
	\ non_arc_srcs
	\ non_propagated_deps
	\ pch
	\ sdk_dylibs
	\ sdk_frameworks
	\ sdk_includes
	\ storyboards
	\ strings
	\ structured_resources
	\ tags
	\ testonly
	\ textual_hdrs
	\ visibility
	\ weak_sdk_frameworks
	\ xibs

syntax keyword iosFramework ios_framework
	\ name
	\ hdrs
	\ app_icon
	\ binary
	\ bundle_id
	\ deprecation
	\ distribs
	\ entitlements
	\ families
	\ features
	\ infoplist
	\ launch_image
	\ licenses
	\ provisioning_profile
	\ tags
	\ testonly
	\ visibility

syntax keyword iosFrameworkBinary ios_framework_binary
	\ name
	\ deps
	\ srcs
	\ data
	\ resources
	\ hdrs
	\ asset_catalogs
	\ bridging_header
	\ bundles
	\ copts
	\ datamodels
	\ defines
	\ deprecation
	\ distribs
	\ enable_modules
	\ features
	\ includes
	\ licenses
	\ non_arc_srcs
	\ non_propagated_deps
	\ pch
	\ sdk_dylibs
	\ sdk_frameworks
	\ sdk_includes
	\ storyboards
	\ strings
	\ structured_resources
	\ tags
	\ testonly
	\ textual_hdrs
	\ visibility
	\ weak_sdk_frameworks
	\ xibs

syntax keyword objcBinary objc_binary
	\ name
	\ deps
	\ srcs
	\ data
	\ resources
	\ hdrs
	\ app_icon
	\ asset_catalogs
	\ bridging_header
	\ bundle_id
	\ bundles
	\ copts
	\ datamodels
	\ defines
	\ deprecation
	\ distribs
	\ enable_modules
	\ entitlements
	\ families
	\ features
	\ includes
	\ infoplist
	\ launch_image
	\ licenses
	\ non_arc_srcs
	\ non_propagated_deps
	\ pch
	\ provisioning_profile
	\ sdk_dylibs
	\ sdk_frameworks
	\ sdk_includes
	\ storyboards
	\ strings
	\ structured_resources
	\ tags
	\ testonly
	\ textual_hdrs
	\ visibility
	\ weak_sdk_frameworks
	\ xibs

syntax keyword j2objcLibrary j2objc_library
	\ name
	\ deps
	\ deprecation
	\ distribs
	\ entry_classes
	\ features
	\ licenses
	\ tags
	\ testonly
	\ visibility

syntax keyword objcBundle objc_bundle
	\ name
	\ bundle_imports
	\ deprecation
	\ distribs
	\ features
	\ licenses
	\ tags
	\ testonly
	\ visibility

syntax keyword objcBundleLibrary objc_bundle_library
	\ name
	\ resources
	\ asset_catalogs
	\ bundles
	\ datamodels
	\ deprecation
	\ distribs
	\ families
	\ features
	\ infoplist
	\ licenses
	\ storyboards
	\ strings
	\ structured_resources
	\ tags
	\ testonly
	\ visibility
	\ xibs

syntax keyword objcFramework objc_framework
	\ name
	\ deprecation
	\ distribs
	\ features
	\ framework_imports
	\ licenses
	\ sdk_dylibs
	\ sdk_frameworks
	\ tags
	\ testonly
	\ visibility
	\ weak_sdk_frameworks

syntax keyword objcImport objc_import
	\ name
	\ resources
	\ hdrs
	\ alwayslink
	\ archives
	\ asset_catalogs
	\ bridging_header
	\ bundles
	\ datamodels
	\ deprecation
	\ distribs
	\ features
	\ includes
	\ licenses
	\ sdk_dylibs
	\ sdk_frameworks
	\ sdk_includes
	\ storyboards
	\ strings
	\ structured_resources
	\ tags
	\ testonly
	\ textual_hdrs
	\ visibility
	\ weak_sdk_frameworks
	\ xibs

syntax keyword objcLibrary objc_library
	\ name
	\ deps
	\ srcs
	\ data
	\ resources
	\ hdrs
	\ alwayslink
	\ asset_catalogs
	\ bridging_header
	\ bundles
	\ copts
	\ datamodels
	\ defines
	\ deprecation
	\ distribs
	\ enable_modules
	\ features
	\ includes
	\ licenses
	\ non_arc_srcs
	\ non_propagated_deps
	\ pch
	\ sdk_dylibs
	\ sdk_frameworks
	\ sdk_includes
	\ storyboards
	\ strings
	\ structured_resources
	\ tags
	\ testonly
	\ textual_hdrs
	\ visibility
	\ weak_sdk_frameworks
	\ xibs

syntax keyword objcProtoLibrary objc_proto_library
	\ name
	\ deps
	\ data
	\ deprecation
	\ distribs
	\ features
	\ licenses
	\ options_file
	\ output_cpp
	\ per_proto_includes
	\ tags
	\ testonly
	\ use_objc_header_names
	\ visibility

syntax keyword experimentalIOSTest experimental_ios_test
	\ name
	\ deps
	\ srcs
	\ data
	\ resources
	\ hdrs
	\ app_icon
	\ args
	\ asset_catalogs
	\ bridging_header
	\ bundle_id
	\ bundles
	\ copts
	\ datamodels
	\ defines
	\ deprecation
	\ distribs
	\ enable_modules
	\ entitlements
	\ families
	\ features
	\ flaky
	\ includes
	\ infoplist
	\ ios_device_arg
	\ ios_test_target_device
	\ launch_image
	\ licenses
	\ local
	\ non_arc_srcs
	\ non_propagated_deps
	\ pch
	\ plugins
	\ provisioning_profile
	\ sdk_dylibs
	\ sdk_frameworks
	\ sdk_includes
	\ shard_count
	\ size
	\ storyboards
	\ strings
	\ structured_resources
	\ tags
	\ target_device
	\ testonly
	\ textual_hdrs
	\ timeout
	\ visibility
	\ weak_sdk_frameworks
	\ xctest
	\ xctest_app
	\ xibs

syntax keyword iosTest ios_test
	\ name
	\ deps
	\ srcs
	\ data
	\ resources
	\ hdrs
	\ app_icon
	\ args
	\ asset_catalogs
	\ bridging_header
	\ bundle_id
	\ bundles
	\ copts
	\ datamodels
	\ defines
	\ deprecation
	\ distribs
	\ enable_modules
	\ entitlements
	\ families
	\ features
	\ flaky
	\ includes
	\ infoplist
	\ ios_device_arg
	\ ios_test_target_device
	\ launch_image
	\ licenses
	\ local
	\ non_arc_srcs
	\ non_propagated_deps
	\ pch
	\ plugins
	\ provisioning_profile
	\ sdk_dylibs
	\ sdk_frameworks
	\ sdk_includes
	\ shard_count
	\ size
	\ storyboards
	\ strings
	\ structured_resources
	\ tags
	\ target_device
	\ testonly
	\ textual_hdrs
	\ timeout
	\ visibility
	\ weak_sdk_frameworks
	\ xctest
	\ xctest_app
	\ xibs

syntax keyword objcXCodeProj objc_xcodeproj
	\ name
	\ deps
	\ deprecation
	\ distribs
	\ features
	\ licenses
	\ tags
	\ testonly
	\ visibility

" Protocol buffer rules
" None, yet...

" Python build rules
syntax keyword pythonBinary py_binary
	\ name
	\ deps
	\ srcs
	\ data
	\ args
	\ default_python_version
	\ deprecation
	\ distribs
	\ features
	\ licenses
	\ main
	\ output_licenses
	\ srcs_version
	\ stamp
	\ tags
	\ testonly
	\ visibility

syntax keyword pythonLibrary py_library
	\ name
	\ deps
	\ srcs
	\ data
	\ deprecation
	\ distribs
	\ features
	\ licenses
	\ srcs_version
	\ tags
	\ testonly
	\ visibility

syntax keyword pythonTest py_test
	\ name
	\ deps
	\ srcs
	\ data
	\ args
	\ default_python_version
	\ deprecation
	\ distribs
	\ features
	\ flaky
	\ licenses
	\ local
	\ main
	\ shard_count
	\ size
	\ srcs_version
	\ stamp
	\ tags
	\ testonly
	\ timeout
	\ visibility

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

highlight default link bazelTodo           Todo
highlight default link bazelComment        Comment
highlight default link bazelString         String
highlight default link androidBinary       Statement
highlight default link androidLibrary      Statement
highlight default link ccBinary            Statement
highlight default link ccLibrary           Statement
highlight default link ccTest              Statement
highlight default link javaBinary          Statement
highlight default link javaImport          Statement
highlight default link javaLibrary         Statement
highlight default link javaTest            Statement
highlight default link javaPlugin          Statement
highlight default link javaToolchain       Statement
highlight default link iosApplication      Statement
highlight default link iosDevice           Statement
highlight default link iosExtension        Statement
highlight default link iosExtensionBinary  Statement
highlight default link iosFramework        Statement
highlight default link iosFrameworkBinary  Statement
highlight default link objcBinary          Statement
highlight default link j2objcLibrary       Statement
highlight default link objcBundle          Statement
highlight default link objcBundleLibrary   Statement
highlight default link objcFramework       Statement
highlight default link objcImport          Statement
highlight default link objcLibrary         Statement
highlight default link objcProtoLibrary    Statement
highlight default link experimentalIOSTest Statement
highlight default link iosTest             Statement
highlight default link objcXCodeProj       Statement
highlight default link pythonBinary        Statement
highlight default link pythonLibrary       Statement
highlight default link pythonTest          Statement
highlight default link shellRules          Keyword
highlight default link actionRules         Keyword
highlight default link workspaceRules      Keyword

