#!/bin/bash
# Phigros 4.0.1.1 —— .so bind-mount 热替换 + 存档写入，一次到位（幂等、可重复）
# 用法: tools/deploy.sh <本机.so> [<本机.xml>]
set -euo pipefail
export ANDROID_SERIAL=${ANDROID_SERIAL:-127.0.0.1:16384}

SO=${1:?usage: deploy.sh <libil2cpp.so> [save.xml]}
XML=${2:-}

PKG=com.PigeonGames.Phigros
LIB="/data/app/~~CwCT6M_-iR-Rz4bnagEdGQ==/${PKG}-8BAuXbk5fHCRsDcsZD48lA==/lib/arm64/libil2cpp.so"
TMP=/data/local/tmp/phi_$(basename "$SO")_$$
PREFS="/data/data/$PKG/shared_prefs/$PKG.v2.playerprefs.xml"

echo "== 1. force-stop"
adb shell am force-stop $PKG || true
sleep 1

echo "== 2. umount -> push -> mount  ($LIB)"
adb push -q "$SO" "$TMP"
adb shell "su -c 'umount $LIB 2>/dev/null || true'"
adb shell "su -c 'mount -o bind $TMP $LIB'"
adb shell "su -c 'chmod 644 $LIB'"

LOCAL_MD5=$(md5sum "$SO" | cut -d' ' -f1)
DEVI_MD5=$(adb shell "su -c 'md5sum $LIB'" | awk '{print $1}')
echo "   local=$LOCAL_MD5  device=$DEVI_MD5"
[ "$LOCAL_MD5" = "$DEVI_MD5" ] || { echo "!! md5 mismatch, 挂载失败"; exit 1; }

if [ -n "$XML" ]; then
  echo "== 3. 写存档 $XML"
  adb push -q "$XML" /data/local/tmp/pp_new.xml
  adb shell "su -c '
    cp /data/local/tmp/pp_new.xml /data/local/tmp/pp_stage.xml
    chown u0_a48:u0_a48 /data/local/tmp/pp_stage.xml
    chmod 660 /data/local/tmp/pp_stage.xml
    restorecon /data/local/tmp/pp_stage.xml 2>/dev/null || true
    cp /data/local/tmp/pp_stage.xml \"$PREFS\"
    chown u0_a48:u0_a48 \"$PREFS\"
    chmod 660 \"$PREFS\"
    restorecon \"$PREFS\" 2>/dev/null || true
    ls -lZ \"$PREFS\"'"
fi

echo "== 4. launch"
adb shell monkey -p $PKG -c android.intent.category.LAUNCHER 1 >/dev/null 2>&1
echo "   启动完成（等 14s 后点 MuMu 加速弹窗 (744,669)，再等 5s 点屏 (960,720)）"
