#!/bin/bash

# 获取当前文件所在目录的绝对路径
script_dir=$(dirname "$(readlink -f "$0")")
cd $script_dir/../sql/
docker exec -i ruoyi-mysql mysql -h localhost -u root -p123456 < ./ry_config_*.sql
docker exec -i ruoyi-mysql mysql -h localhost -u root -p123456 < ./ry_seata_*.sql
cd -
echo '初始数据库导入成功'