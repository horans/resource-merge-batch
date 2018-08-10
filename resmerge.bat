::merge resource v2
@echo off
setlocal enabledelayedexpansion
::config
set m[1]o=_vendor.js
set m[1]l=.\vendor\
set m[1]f=es6-promise.auto.min.js lodash.min.js vue.min.js vuex.min.js vue-router.min.js md5.min.js uuid.core.js element-ui.min.js jquery.min.js
 
set m[2]o=_vendor.css
set m[2]l=.\vendor\
set m[2]f=element-ui-reset.css element-ui.min.css
 
set m[3]o=_inpage.js
set m[3]l=.\script\
set m[3]f=wsid-auth-l10n.js wsid-auth-excs.js wsid-auth.js
 
set m[4]o=_inpage.css
set m[4]l=.\style\
set m[4]f=bootstrap-ao.css wsid-icon.css wsid-auth.css

::loop
for /l %%n in (1,1,4) do (
  set loc=!m[%%n]l!
  set out=!loc!!m[%%n]o!
  del !out!
  for %%a in (!m[%%n]f!) do (
    type !loc!%%a >> !out!
    echo. >> !out!
  )
)
