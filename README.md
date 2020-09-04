# autoremove-torrents
## 使用方法
创建data目录 把conf.yml放在data目录 再在data目录创建logs目录
```bash
mkdir data
cd data
mkdir logs
# 此命令的路径替换 /path/to/data
pwd
```
docker run --rm -it -v /pat/to/data:/tmp/data  autoremove-torrents:latest autoremove-torrents --conf=/tmp/data/conf.yml  --log=/tmp/data/logs
群晖中加入定时任务
