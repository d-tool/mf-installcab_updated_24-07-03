#!/bin/sh

[ -z "$WINEPREFIX" ] && echo "WINEPREFIX not set" && exit 1

set -e

scriptdir=$(dirname "$0")
cd "$scriptdir"

if [ ! -f "windows6.1-kb976932-x64_74865ef2562006e51d7f9333b4a8d45b7a749dab.exe" ]; then
    wget --no-check-certificate "https://catalog.s.download.windowsupdate.com/msdownload/update/software/svpk/2011/02/windows6.1-kb976932-x64_74865ef2562006e51d7f9333b4a8d45b7a749dab.exe"
fi

python2 installcab.py windows6.1-kb976932-x64_74865ef2562006e51d7f9333b4a8d45b7a749dab.exe mediafoundation
python2 installcab.py windows6.1-kb976932-x64_74865ef2562006e51d7f9333b4a8d45b7a749dab.exe mf_
python2 installcab.py windows6.1-kb976932-x64_74865ef2562006e51d7f9333b4a8d45b7a749dab.exe mfreadwrite
python2 installcab.py windows6.1-kb976932-x64_74865ef2562006e51d7f9333b4a8d45b7a749dab.exe wmadmod
python2 installcab.py windows6.1-kb976932-x64_74865ef2562006e51d7f9333b4a8d45b7a749dab.exe wmvdecod
python2 installcab.py windows6.1-kb976932-x64_74865ef2562006e51d7f9333b4a8d45b7a749dab.exe wmadmod

echo -e "\nNow you need to get mfplat.dll in your application directory"
