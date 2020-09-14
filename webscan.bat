@echo off

rem webscan.bat
rem Copyright (C) 2019  Scott C. MacCallum
rem scott@scm.guru

rem This program scans a network using a web browser.

rem This program is free software: you can redistribute it and/or modify
rem it under the terms of the GNU Affero General Public License as published by
rem the Free Software Foundation, either version 3 of the License, or
rem (at your option) any later version.

rem This program is distributed in the hope that it will be useful,
rem but WITHOUT ANY WARRANTY; without even the implied warranty of
rem MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
rem GNU Affero General Public License for more details.

rem You should have received a copy of the GNU Affero General Public License
rem along with this program.  If not, see <https://www.gnu.org/licenses/>.

rem If you find this program useful, or you would like me to add a feature,
rem please make a financial contribution at Patreon:
rem https://www.patreon.com/helloscottm. Thank you.

set NumberAddresses=254
set FirstOctet=192
set SecondOctet=168
set ThirdOctet=1
set FourthOctet=0
set browser="microsoft-edge:"
rem set browser="firefox "
set port=80
set seconds=2

:while
  if %FourthOctet%==%NumberAddresses% (exit 0)

  set /A FourthOctet=FourthOctet+1

  start %browser%http://%FirstOctet%.%SecondOctet%.%ThirdOctet%.%FourthOctet%:%port%

  timeout %seconds%
goto :while

exit 1
