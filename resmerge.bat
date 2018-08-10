::merge resource v2
@echo off
setlocal enabledelayedexpansion
::config
set m[1]o=_vendor.js
set m[1]l=.\vendor\
set m[1]f=vendor1.min.js vendor2.min.js vendor3.min.js vendor4.min.js vendor5.min.js vendor6.min.js
 
set m[2]o=_vendor.css
set m[2]l=.\vendor\
set m[2]f=vendor1.min.css vendor2.min.css vendor3.min.css
 
set m[3]o=_inpage.js
set m[3]l=.\script\
set m[3]f=a.js b.js c.js d.js e.js
 
set m[4]o=_inpage.css
set m[4]l=.\style\
set m[4]f=a.css b.css c.css

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
