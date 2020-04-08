if exists('b:current_syntax') | finish |  endif

syntax keyword policyAction     Approve Deny MoreInformation
syntax keyword policyYield      yield
syntax keyword policyDef        Check Exports Name
syntax keyword policySignal     signals
syntax keyword policyImport     policies
syntax keyword policyNone       None
syntax keyword policyBoolean    True False
syntax keyword policyNone       None
syntax keyword policyOperator   and in is not or
syntax keyword policyTodo       TODO FIXME XXX contained

syntax match policyComment      '#.*$' display contains=policyTodo,@Spell
syntax match policyFunction     '\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*\ze\%(\s*(\)'

syntax region policyString      start=+\z(["']\)+  skip=+\\\%(\z1\|$\)+  end=+\z1+ end=+$+

hi def link policyComment       Comment
hi def link policyTodo          Todo
hi def link policyImport        Include
hi def link policyAction        Function
hi def link policyYield         Statement
hi def link policySignal        Keyword
hi def link policyDef           StorageClass
hi def link policyBoolean       Boolean
hi def link policyNone          Constant
hi def link policyOperator      Operator
hi def link policyString        String
hi def link policyFunction      Function

let b:current_syntax = "policy"

