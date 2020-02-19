# QA

**说明**:本文件主要记录了运行本项目代码时遇到的一些bug以及其解决方案.

**Q**:

```shell
files_a, files_b = map(list, zip(*data))
ValueError: not enough values to unpack (expected 2, got 0)
```
**A**: 是数据集文件夹和文件的问题,需要检查一下训练集和验证集的文件夹和文件是否存在.

