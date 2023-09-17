<p align="center">
<a href="https://51showai.com/"><img src="/public/assets/51showaibanner.jpg"></a>
</p>


## 51ShowAI

[51ShowAI](https://51showai.com) 专门为您提供AI提示词的平台。您可以轻松获取适合不同场景和需求的高质量提示词，让您的工作效率和创造力得以无上限的提升。

**51ShowAI** 是基于开源论坛 **Flarum** 搭建的，在 **Flarum** 的基础上增加了提示词需要的功能，同样的**51ShowAI** 也是开源的。


**51ShowAI**用起来轻松简便，你可以分享自己专业领域的提示词，也可以很方便的搜索到你需要的提示词，我们诚挚邀请您加入我们，一起分享知识，一起创新思考，一起推动AI提示词的发展。



![51showai主页面](/screenshot/51showai_mainpage.png)

## 安装

需要安装好nginx，php和mysql，把源代码下载到`/var/www/51showai` 目录下。

- nginx的配置如下：

```

server {
	listen 80 default_server;
	listen [::]:80 default_server;


	root /var/www/51showai/public;

    index index.php
	server_name _;
    include /var/www/51showai/.nginx.conf;
	location ~ \.php$ {
                include snippets/fastcgi-php.conf;
                fastcgi_pass unix:/var/run/php/php8.1-fpm.sock;
        }
}

```

- mysql 中新建ShowAi的库，并把`ShowAi.sql` 导入库中。

- 修改`config.php` 下的mysql 账号和密码，这样就能运行网站了。

- 配置邮箱

邮箱的作用是用来给新用户发送注册验证链接，如果没有配置邮箱，新用户无法注册。

先用账号 51showai，密码：51showai


![51showai配置邮箱](/screenshot/51showai_email.png)



## 二次开发

如果需要改到php代码的，修改完就可以生效，有修改到js代码的，需要运行：

```

npm install
npm run build

```

在主目录中运行

```
php flarum cache:clear
```

## 功能

#### 发布提示词

可以自己发布想要的提示词，包含提示词，提示词主题，提示词示例。

![发布提示词](/screenshot/51showai-fabu.jpg)

#### 查看提示词和示例

查看提示词的主题和示例，模仿主题的提示词，根据自己的需要，组织提示词，打开ChatGPT、文心一言，或者其他大模型。

![发布提示词](/screenshot/51showai-shili.jpg)


#### 关注喜欢的提示词

关注自己喜欢的提示词，以免后续好找到。


![发布提示词](/screenshot/51showai-guanzhu.jpg)


#### 问题咨询

有什么问题可以加QQ:1752338621