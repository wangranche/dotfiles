# !/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Binaries
binaries=( autoconf autojump automake boost brew-cask cmake coreutils ctags dos2unix docker flow figlet findutils freetype gcc gdbm gearman gettextgeoip git git-flow gmp graphicsmagick grc heroku-toolbelt htop-osx hub imagemagick isl jpeg libevent libgpg-error libksba libmpc libpng libtiff libtool libyaml mackup mongodb mpfr mpg123 multitail mysql nginx node numpy nvm openssl pcre pkg-config postgresql proxychains-ng pyqt python python3 qt rbenv rcm readline reattach-to-user-namespace redis ruby-build scipy sip source-highlight sqlite sshfs swig the_silver_searcher thefuck tmux trash tree unar vim watch watchman wget xz z zeromq zsh zsh-completions zsh-syntax-highlighting )

  # mysql
  # nginx
  # node
  # mongodb
  # boot2docker
  # docker
  # grc
  # hub
  # legit
  # nvm
  # ssh-copy-id
  # trash


# Apps
apps=(
  androidtool # android逆向工具
  atom #编辑器
  bettertouchtool #触控板强化
  betterzipql #解压缩软件
  beyond-compare #文件比较神器
  charles #抓包工具
  cheatsheet #按住command就会弹窗提醒你常用的命令
  clipmenu #这个得翻墙下载,安装包在dropbox,但是是很赞的剪贴板收集工具
  dropbox #配合翻墙使用的云同步软件
  filezilla #FTP工具
  google-drive #谷歌云盘
  icons8
  iterm2 #最好用的terminal
  jitouch #触控版功能加强
  launchrocket 
  mpv #播放器
  qlcolorcode
  qlimagesize
  qlmarkdown
  qlprettypatch
  qlstephen
  qlvideo
  quicklook-csv
  quicklook-json 
  webpquicklook #这几个软件都是强化各种格式的预览
  scroll-reverser #鼠标和触控板下滑的方向相反
  skim #pdf阅读软件
  slate #窗口调整
  sourcetree #github客户端
  spectacle #窗口大小调节的吧
  the-unarchiver #解压缩软件
  wine
  winebottler #wine模拟器
  visual-studio-code #微软出品的编辑器
  xtrafinder  # 加强finder
  
)

# Fonts
fonts=(
  # font-roboto
  font-source-code-pro
)

echo "Update Homebrew..."
# Update homebrew recipes
# brew update

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils
# Install Bash 4
brew install bash
# Install Homebrew Cask
brew tap caskroom/fonts
brew tap caskroom/versions
brew install caskroom/cask/brew-cask
brew upgrade brew-cask

echo "Installing binaries..."
brew install ${binaries[@]}

echo "Installing fonts..."
brew cask install ${fonts[@]}

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "Installing apps..."
sudo brew cask install --appdir="/Applications" ${apps[@]}

# clean things up
brew cleanup
brew cask cleanup

exit 0
