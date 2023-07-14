export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
alias ll='ls -l'
alias la='ls -a'
alias l='ls -la'
alias WMachine='/Users/zhangdeyu/software/jump.sh'
alias HMachine='ssh deyu@192.168.1.3'
alias HMvps='ssh root@45.12.110.146'
alias HMNvps='ssh root@78.142.195.117'
alias MarkDownGit='sh /Users/zhangdeyu/software/MarkDownGit.sh'

#set color
export CLICOLOR=1
export LSCOLORS=gxfxaxdxcxegedabagacad

#Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH:.
export CLASSPATH=$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar:.

# Scala
export SCALA_HOME=/Users/zhangdeyu/software/scala-2.11.8
export PATH=$SCALA_HOME/bin:$PATH
export PATH="/usr/local/Cellar/thrift@0.9/0.9.3/bin:$PATH"
export PATH="/usr/local/opt/sbt@0.13/bin:$PATH"

# HomeBrew
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# Maven
export M2_HOME=/Users/zhangdeyu/software/apache-maven-3.8.1
export PATH=$PATH:$M2_HOME/bin

# protobuf
export PROTOBUF=/Users/zhangdeyu/software/protobuf/protoc-3.15.8-osx-x86_64
export PATH=$PROTOBUF/bin:$PATH