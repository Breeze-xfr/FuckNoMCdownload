#!/bin/bash
# ---------------------------------------
# FuckNoMCdownload(FNMCD)
# 又可以说是：去他妈的禁用 Minecraft 下载
# ----------------------------------------------------------------
HMCL_JAR=$(ls HMCL-*.jar | grep -v "Unlocked" | head -n 1)

if [ -z "$HMCL_JAR" ]; then
    echo -e "当前目录下没有HMCL-*.jar\n请将HMCL-*.jar移动到本目录"
    exit 1
fi


mkdir -p org/jackhuang/hmcl/util
cp RegionUtils.class org/jackhuang/hmcl/util/


zip -q "$HMCL_JAR" "org/jackhuang/hmcl/util/RegionUtils.class" 2>/dev/null 


rm -rf org

echo -e "End.\nGoodBye."