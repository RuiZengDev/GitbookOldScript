# GitbookOldScript

> 新版Gitbook已经很方便可以在网页端直接操作，可以不用本地部署
>
> 官网：[Gitbook](https://www.gitbook.com/)
>
> npm：[gitbook-cli](https://www.npmjs.com/package/gitbook-cli)



1. 安装gitbook

```bash
npm install -g gitbook-cli
```

2. 具体注释可以看脚本
   主要原理就是：将gitbook生成的静态网页文件复制到一个临时文件夹，再切换分支将静态文件复制进去，两个分支可以做到均上传到GitHub防止文件丢失。
