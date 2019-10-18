
# Tell ls to be colourful
export CLICOLOR=1
 
# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export ANDROID_STUDIO_PATH="$HOME/bin/android-studio"
export NODEJS_PATH="$HOME/bin/node-v10.16.3-linux-x64"
export GOPATH=$HOME/go
export ANDROID_HOME=$HOME/Android/Sdk
export ANDROID_PLATFORM_TOOLS=$ANDROID_HOME/platform-tools
export ANDROID_TOOLS=$ANDROID_HOME/tools
export JAVA_HOME="/usr/lib/jvm/java-12-oracle/"

export PATH="$PATH:$HOME/.rvm/bin:$HOME/bin:$ANDROID_STUDIO_PATH/bin:$NODEJS_PATH/bin/:$GOPATH/bin:$ANDROID_TOOLS:$ANDROID_TOOLS/bin/:$ANDROID_PLATFORM_TOOLS"
export PATH=$PATH:/usr/local/go/bin

function nonzero_return {
	RETVAL=$?
	[ $RETVAL -ne 0 ] && echo -ne "${red}✗${none} "
	#echo -ne "${red}"
}

gold="\033[33m"
blue="\033[34m"
cyan="\033[36m"
red="\033[31m"
darkgrey="\033[90m"
none="\033[m"

function parse_git_branch {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		STAT=`parse_git_dirty`
		[ "$STAT" != "" ] && echo -ne $red || echo -ne $darkgrey
		echo -e "($BRANCH)$none"
	else
		echo ""
	fi
}

# get current status of git repo
function parse_git_dirty {
	status=`git status 2>&1 | tee`
	dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
	untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
	ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
	newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
	renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
	deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
	bits=''
	if [ "${renamed}" == "0" ]; then
		bits=">${bits}"
	fi
	if [ "${ahead}" == "0" ]; then
		bits="*${bits}"
	fi
	if [ "${newfile}" == "0" ]; then
		bits="+${bits}"
	fi
	if [ "${untracked}" == "0" ]; then
		bits="?${bits}"
	fi
	if [ "${deleted}" == "0" ]; then
		bits="x${bits}"
	fi
	if [ "${dirty}" == "0" ]; then
		bits="!${bits}"
	fi
	if [ ! "${bits}" == "" ]; then
		echo " ${bits}"
	else
		echo ""
	fi
}
export PS1="\w \`parse_git_branch\`\n→ "
function prompt_command {
	nonzero_return
}
export PROMPT_COMMAND=prompt_command

alias a2c="aria2c -x 16 -s 16"
alias y2c="youtube-dl --external-downloader aria2c\
  --external-downloader-args \"-x 16 -s 16\" --no-check-certificate\
  -o \"%(uploader)s.%(playlist_title)s_%(autonumber)03d.%(alt_title)s.%(display_id)s.%(id)s.%(width)sx%(height)s.%(ext)s\""
alias pj="python -m json.tool"
alias py="python3"
alias py2="python2"
alias pfind="ps -e | grep"
alias hfind="history | grep"
alias p3="ping -c 3"
alias p3g="ping -c 3 www.google.com"
alias put="http put"
alias get="http get"
alias post="http post"
alias delete="http delete"

function getIP {
	ifconfig en0 inet | grep inet | awk '{print $2}'
}

function adbWifi {
	adb tcpip 5555
	adb connect $1:5555
}

function loc {
	find . -name "$1" | xargs wc -l | grep total
}

source <(kitty + complete setup bash)
