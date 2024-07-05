#!/bin/sh

[ -z "$WINEPREFIX" ] && echo "WINEPREFIX not set" && exit 1

set -e

scriptdir=$(dirname "$0")
cd "$scriptdir"

if [ ! -f "windows6.1-kb976932-x86_c3516bc5c9e69fee6d9ac4f981f5b95977a8a2fa.exe" ]; then
    wget "https://catalog.s.download.windowsupdate.com/msdownload/update/software/svpk/2011/02/windows6.1-kb976932-x86_c3516bc5c9e69fee6d9ac4f981f5b95977a8a2fa.exe"
fi

python2 installcab.py windows6.1-kb976932-x86_c3516bc5c9e69fee6d9ac4f981f5b95977a8a2fa.exe mediafoundation
python2 installcab.py windows6.1-kb976932-x86_c3516bc5c9e69fee6d9ac4f981f5b95977a8a2fa.exe mf_
python2 installcab.py windows6.1-kb976932-x86_c3516bc5c9e69fee6d9ac4f981f5b95977a8a2fa.exe mfreadwrite
python2 installcab.py windows6.1-kb976932-x86_c3516bc5c9e69fee6d9ac4f981f5b95977a8a2fa.exe wmadmod
python2 installcab.py windows6.1-kb976932-x86_c3516bc5c9e69fee6d9ac4f981f5b95977a8a2fa.exe wmvdecod
python2 installcab.py windows6.1-kb976932-x86_c3516bc5c9e69fee6d9ac4f981f5b95977a8a2fa.exe wmadmod

echo -e "\nNow you need to get mfplat.dll in your application directory"
