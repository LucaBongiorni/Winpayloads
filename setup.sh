#!/bin/bash
echo '[*] Installing Wine'
apt-get update
apt-get install wine -y
echo '[*] Installing Python Requirements'
pip install blessings
echo '[*] Installting Pyinstaller'
wget https://github.com/pyinstaller/pyinstaller/releases/download/v2.0/pyinstaller-2.0.zip
unzip -q -o -d /opt pyinstaller-2.0.zip
echo '[*] Downloading Python27 For Wine'
wget https://www.python.org/ftp/python/2.7.10/python-2.7.10.msi
wine msiexec /i python-2.7.10.msi
echo '[*] Setting Up Shellter'
wget --user-agent="Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0" "https://www.shellterproject.com/Downloads/Shellter/Latest/shellter.zip"
unzip shellter.zip
cd shellter
rm -r icon
rm -r shellcode_samples
rm -r faq.txt
rm -r readme.txt
rm -r version_history.txt
cd ..
rm python-2.7.10.msi
rm shellter.zip
rm pyinstaller-2.0.zip
echo '[*] Done'