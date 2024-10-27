# MLHub Installers

Flutter supports multiple platform targets and the app will run native
on Android, iOS, Linux, MacOS, and Windows, as well as directly in a
browser from the web. While the Flutter functionality is in theory identical
across all platforms, mlhub relies on mlhub packages being
available on the platform. At present we only support dekstops (Linux,
MacOS, and Windows).

## Prerequisite

Install [mlhub](https:///mlhub.au) and the mlhub
[openai](https://survivor.togaware.com/mlhub/openai.html), [colorize photos](https://survivor.togaware.com/mlhub/colorize.html), [cars identification](https://survivor.togaware.com/mlhub/cars.html):

```bash
pip install mlhub
mlhub configure
ml install Ting-TT/openai
ml configure openai
ml install mlhubber/colorize
ml configure colorize
ml install gitlab:kayontoga/cars
ml configure cars
```

## Linux tar Archive

Download [mlflutter.tar.gz](https://access.togaware.com/mlflutter.tar.gz)

To try it out:

```bash
wget https://access.togaware.com/mlflutter.tar.gz
tar zxvf mlflutter.tar.gz
mlflutter/mlfutter
```

To install for the local user and to make it known to Gnome and KDE,
with a desktop icon:

```bash
wget https://access.togaware.com/mlflutter.tar.gz
tar zxvf mlflutter.tar.gz -C ${HOME}/.local/share/
ln -s ${HOME}/.local/share/mlflutter/mlflutter ${HOME}/.local/bin/mlhub
wget https://raw.githubusercontent.com/gjwgit/mlflutter/dev/installers/mlhub.desktop -O ${HOME}/.local/share/applications/mlhub.desktop
sed -i "s/USER/$(whoami)/g" ${HOME}/.local/share/applications/mlhub.desktop
mkdir -p ${HOME}/.local/share/icons/hicolor/256x256/apps/
wget https://github.com/gjwgit/mlflutter/raw/dev/installers/mlhub.png -O ${HOME}/.local/share/icons/hicolor/256x256/apps/mlhub.png
```

To install for any user on the computer:

```bash
wget https://access.togaware.com/mlflutter.tar.gz
sudo tar zxvf mlflutter.tar.gz -C /opt/
sudo ln -s /opt/mlflutter/mlflutter /usr/local/bin/mlhub
``` 

The `rattle.desktop` and app icon can be installed into
`/usr/local/share/applications/` and `/usr/local/share/icons/`
respectively.

Once installed you can run the app as Alt-F2 and type `mlhub` then
Enter.

## MacOS

The package file `mlflutter.dmg` can be installed on MacOS. Download
the file and open it on your Mac. Then, holding the Control key click
on the app icon to display a menu. Choose `Open`. Then accept the
warning to then run the app. The app should then run without the
warning next time.

Sometimes when running `ml configure`, you may encounter an error message 
such as "sudo: apt-get: command not found", which occurs because apt-get is specific to Linux. 
To resolve this issue, please use `pip install` or `brew install` to install the required dependencies.

## Windows Installer

Download and run the `mlflutter.exe` to self install the app on
Windows.
