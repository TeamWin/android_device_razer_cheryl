#!/sbin/sh

if [ ! -d "/vendor" ]; then
  rm -f /vendor
  mkdir -p /vendor/lib64
fi
if [ ! -d "/vendor/lib64" ]; then
  mkdir -p /vendor/lib64
fi
mv /odm/lib64/libQSEEComAPI.so /vendor/lib64/libQSEEComAPI.so
setprop crypto.ready 1
