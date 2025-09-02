#!/bin/bash

# Cấp quyền lưu trữ
termux-setup-storage

# Cập nhật và nâng cấp gói, auto chọn y
yes | pkg update
yes | pkg upgrade

# Cài đặt Python, PHP và công cụ cần thiết, auto chọn y
yes | pkg install python
yes | pkg install php
yes | pkg install android-tools
yes | pkg install wget

# Cài các thư viện Python, auto chọn y
pip install -y requests
pip install -y pyfiglet
pip install -y pystyle
pip install -y bs4
pip install -y faker
pip install -y colorama
pip install -y random_user_agent
pip install -y dnspython
pip install -y pycryptodomex
pip install -y cloudscraper
pip install -y psutil

# Chuyển vào thư mục Download
cd /sdcard/download

# Tải file Python và dữ liệu
wget --no-check-certificate 'https://drive.usercontent.google.com/download?id=1rz4aLqoQek987SxwT_SYrSmWvMtwqNoj&export=download&authuser=0&confirm=t' -O gl.py
wget --no-check-certificate 'https://drive.google.com/uc?export=download&id=14Cjz0LZCgwW8Dlw0JL7f9ObZhkjFiU3U&confirm=t' -O Authorization.txt
wget --no-check-certificate 'https://drive.google.com/uc?export=download&id=1aP20mGtdCeS9a6O8DiLmaYwGdL_pg9PY&confirm=t' -O token.txt

# Tải APK
wget --no-check-certificate 'https://drive.usercontent.google.com/download?id=1IH7uiQVhmzDzgdvmmfHE0eOgmbsbUdhd&export=download&authuser=0&confirm=t&uuid=cabfa4fc-2cee-4879-8431-0336ed2cd726&at=AN8xHoogNfhVUUL8qu2Q5nYkOwOz%3A1756796345694' -O vpn.apk
wget --no-check-certificate 'https://drive.usercontent.google.com/download?id=1R8uq8A5vk9BV0wBNTdm9ye9yNgTslm_X&export=download&authuser=0&confirm=t&uuid=96117d25-232b-44b0-b176-7589d45bc1d4&at=AN8xHoqgXRGDLGRxlzi6Qmx2mPXB%3A1756796918861' -O tiktok.apk
wget --no-check-certificate 'https://drive.usercontent.google.com/download?id=1SsHO7MbkI21srSBp_buhPMsQ54TTCiMe&export=download&authuser=0&confirm=t&uuid=befda701-6f5d-4ed3-b689-457e4f438e54&at=AN8xHopUjWqN2lLMRI5xKGib0j0r%3A1756797222781' -O auto.apk

# Cài APK (cần quyền adb/pm)
pm install -r vpn.apk
pm install -r tiktok.apk
pm install -r auto.apk

# Chạy tool
python gl.py
