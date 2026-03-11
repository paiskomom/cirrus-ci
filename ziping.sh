#!/bin/bash

cd /home/cirrus

# Menggunakan level kompresi -1 agar eksekusi jauh lebih cepat
time tar --use-compress-program="pigz -k -1" -cf ccache.tar.gz ccache
