Server Dotfiles
===============
Config files for staging/production Ubuntu servers

Supported Apps
---------------

- vim
- bash
- tmux
- pip
- gem

Install
-------

``` bash
git clone https://github.com/humiaozuzu/server-dotfiles.git ~/.server-dotfiles
cd ~/.server-dotfiles
sh install.sh
```

Update
------

``` bash
cd ~/.server-dotfiles
git pull
sh relink.sh
```

if `.bashrc` has been updated, you need to reload it by running `source ~/.bashrc`.

Notice: if your VPS lives in china mainland, replace `install.sh`/`relink.sh` with `install-cn.sh`/`relink-cn.sh`
