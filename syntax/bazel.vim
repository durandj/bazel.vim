" Vim syntax file
" Langauge: Bazel Build File
" Maintainer: James Durand

echo "test"

if exists("b:current_syntax")
	finish
endif

" Language features
syntax keyword bazelTodo contained TODO FIXME XXX NOTE
syntax match bazelComment "#.*$" contains=bazelTodo

" Android build rules
syntax keyword androidRules android_binary android_library

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
highlight default link androidRules   Keyword
highlight default link cCPPRules      Keyword
highlight default link javaRules      Keyword
highlight default link objcRules      Keyword
highlight default link pythonRules    Keyword
highlight default link shellRules     Keyword
highlight default link actionRules    Keyword
highlight default link workspaceRules Keyword

