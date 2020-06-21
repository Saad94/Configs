# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git node nvm vscode z zsh-autosuggestions zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

##########
# PROMPT #
##########

# export PROMPT='%(?:%{%}➜ :%{%}➜ ) %{$fg[cyan]%}%B%/%b%{$reset_color%} $(git_prompt_info)'

########
# JAVA #
########

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

###########
# ALIASES #
###########

alias c="clear"
alias h="head"
alias t="tail"
alias cp="cp -iv"
alias mv="mv -iv"
alias mkdir="mkdir -pv"
alias ls="ls -Gp"
alias ll="ls -lGphA"
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .2='cd ../../'                        # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias .7='cd ../../../../../../../'         # Go back 7 directory levels
alias .8='cd ../../../../../../../../'      # Go back 8 directory levels
alias .9='cd ../../../../../../../../../'   # Go back 9 directory levels
alias cdc="cd ~/Code/"
alias cde="cd ~/Code/Citadel/einstein"
alias cdz="cd ~/Code/zelus-api"
alias cddow="cd ~/Downloads"
alias cddes="cd ~/Desktop"
alias f='open -a Finder ./'                 # Opens current directory in MacOS Finder
alias fhere="find . -name "
alias du="du -ach"
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias histg="history | grep"
alias top="htop"
alias myip="curl http://ipecho.net/plain && echo"
alias extract_logs="/Users/shussain/Code/Citadel/einstein/scripts/bin/logParser.sh"
alias h1d='history | grep "$(date -v-1d +%b\ %d)"'
alias h3d='history | grep "$(date -v-3d +%b\ %d)"'
alias jv="java -version"
alias python="python3"
alias p="python3"
alias p2="python2"
alias p3="python3"

alias fixaudio="sudo killall coreaudiod"

alias ssh_cit_tst="ssh -i ~/.ssh/id_rsa_gatekeeper shussain@ec2-52-53-254-211.us-west-1.compute.amazonaws.com"
alias ssh_cit_stg="ssh -i ~/.ssh/id_rsa_gatekeeper shussain@ec2-34-212-239-84.us-west-2.compute.amazonaws.com"
alias ssh_cit_prd="ssh -i ~/.ssh/id_rsa_gatekeeper shussain@ec2-52-53-242-55.us-west-1.compute.amazonaws.com"
alias ssh_prom_tst="ssh ec2-52-9-216-105.us-west-1.compute.amazonaws.com"
alias ssh_prom_stg="ssh ec2-34-216-125-169.us-west-2.compute.amazonaws.com"
alias ssh_prom_prd="ssh ec2-54-153-78-23.us-west-1.compute.amazonaws.com"

alias ec="subl ~/.aws/credentials"
alias ez="code ~/.zshrc"
alias sz="exec zsh"
alias ga="git add"
alias gaa="git add ."
alias gs="git status"
alias gd="git diff"
alias gf="git fetch"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gcod="git checkout develop"
alias gcom="git checkout master"
alias gp="git pull"
alias gpsh="git push origin"
alias gpshf="git push -f origin"
alias gb="git branch"
alias gcm="git commit -m"
alias gcma="git commit --amend"
alias gcmane="git commit --amend --no-edit"
alias gl="git log"
alias grh="git reset --hard"
alias gc="git clone"
alias gop="git open origin"
alias gr="git rebase -i"
alias grd="git rebase -i develop"
alias grm="git rebase -i master"
alias grc="git rebase --continue"
alias mci="mvn clean install"

alias kp="aws-assume eng kube-prompt"
alias kns="aws-assume eng kubens"
alias kctx="aws-assume eng kubectx"
alias koff="kubeoff"
alias kon="kubeon"

alias dcup="docker-compose up --force-recreate"
alias dcdown="docker-compose down"

alias j8="export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)"
alias j11="export JAVA_HOME=$(/usr/libexec/java_home -v 11)"

alias fdiff="grep -v -F -x -f"

alias start_redis="docker run --name redis --publish 6379:6379 --detach redis:3.2-alpine"
alias release_start="mvn jgitflow:release-start"
alias release_finish="mvn jgitflow:release-finish -Dmaven.javadoc.skip=true"

alias ngrok="~/Tools/ngrok"
alias urldecode='perl -n -E '\''use URI::Escape; print uri_unescape($_);'\'''

##############
# KUBERNETES #
##############

export KUBECONFIG="${HOME}/.kube/kubeconfig-eks"

#############
# FUNCTIONS #
#############

###
# Recognises the input file type and calls the appropriate utility to extract it.
###
function extract {
  if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
    echo "       extract <path/file_name_1.ext> [path/file_name_2.ext] [path/file_name_3.ext]"
    return 1
  else
    for n in $@
    do
      if [ -f "$n" ] ; then
          case "${n%,}" in
            *.tar.bz2|*.tar.gz|*.tar.xz|*.tbz2|*.tgz|*.txz|*.tar)
                         tar xvf "$n"       ;;
            *.lzma)      unlzma ./"$n"      ;;
            *.bz2)       bunzip2 ./"$n"     ;;
            *.rar)       unrar x -ad ./"$n" ;;
            *.gz)        gunzip ./"$n"      ;;
            *.zip)       unzip ./"$n"       ;;
            *.z)         uncompress ./"$n"  ;;
            *.7z|*.arj|*.cab|*.chm|*.deb|*.dmg|*.iso|*.lzh|*.msi|*.rpm|*.udf|*.wim|*.xar)
                         7z x ./"$n"        ;;
            *.xz)        unxz ./"$n"        ;;
            *.exe)       cabextract ./"$n"  ;;
            *)
                         echo "extract: '$n' - unknown archive method"
                         return 1
                         ;;
          esac
      else
          echo "'$n' - file does not exist"
          return 1
      fi
    done
  fi
}

###
# Unzips all *.gz files in the current directory
###
function extract_all {
  for file in `find . -name "*.gz"` ; do
    gunzip $file ;
  done
}

function assume_tst {
  assume_role "tst" "278890653358"
}

function assume_stg {
  assume_role "stg" "455570743117"
}

function assume_prd {
  assume_role "prd" "871166422776"
}

function assume_role {
  json=`aws --profile $1 sts assume-role --role-arn arn:aws:iam::$2:role/cit-web-app --role-session-name tmp-role`

  if [ ! -z "$json" ] ; then
    printf '\n\n[tmp-role]\naws_access_key_id = %s\naws_secret_access_key = %s\naws_session_token = %s' \
        `jq '.Credentials.AccessKeyId'      <<< $json | sed -e 's/^"//' -e 's/"$//'` \
        `jq '.Credentials.SecretAccessKey'  <<< $json | sed -e 's/^"//' -e 's/"$//'` \
        `jq '.Credentials.SessionToken'     <<< $json | sed -e 's/^"//' -e 's/"$//'` \
    | pbcopy

    echo -e "\n> Credentials copied and pasted in ~/.aws/credentials. Backup created in ~/.aws/backup/credentials."

    printf 'y' | cp ~/.aws/credentials ~/.aws/backup/credentials
    perl -0777pe 's/\n\n\[tmp-role\].*\n.*\n.*\n.*//' ~/.aws/backup/credentials > ~/.aws/credentials
    pbpaste >> ~/.aws/credentials
  fi
}

function id {
  grep -A2 $1 ~/.aws/credentials | tail -1 | grep -Eo \\d+
  grep -A2 $1 ~/.aws/credentials | tail -1 | grep -Eo \\d+ | tr -d '\n' | pbcopy
}

function ids {
  grep '\[' ~/.aws/credentials
}

function heap_usage {
  if [ -z "$1" ]; then
    echo "Usage: heap_usage [pid]"
    return 1
  fi

  used=`jstat -gc $1 | tail -n +2 | head -1 | tr -s ' ' | cut -d\  -f3,4,6,8,10 | tr ' ' '+' | bc`
  total=`jstat -gc $1 | tail -n +2 | head -1 | tr -s ' ' | cut -d\  -f1,2,6,7,9 | tr ' ' '+' | bc`
  percent=`echo "scale=2; $used * 100 / $total" | bc`
  echo "$percent%"
}

function find_subdirectories_matching_pattern {
  if [ -z "$1" ]; then
    echo "Usage: find_subdirectories_matching_pattern [pattern]"
    return 1
  fi

  for dirname in `find . -name *$1* -type d` ; do echo $dirname ; done
}

function rename_subdirectories_matching_pattern {
  if [ -z "$1" ]; then
    echo "Usage: rename_subdirectories_matching_pattern [pattern] [replacement_string]"
    return 1
  fi
  if [ -z "$2" ]; then
    echo "Usage: rename_subdirectories_matching_pattern [pattern] [replacement_string]"
    return 1
  fi

  for dirname in `find . -name *$1* -type d` ; do mv $dirname `echo $dirname | sed s/$1/$2/`; done
}

function dlq_currents_prd {
  if [ -z "$1" ]; then
    echo "Usage: dlq_currents [file_s3_key]"
    return 1
  fi

  dlq_location=`echo $1 | sed s/currents/unprocessable/`

  aws --profile var s3 mv s3://$1 s3://$dlq_location
}

function clean_branch {
  if [ -z "$1" ]; then
    echo "Usage: clean_branch [branch_name]"
    return 1
  fi

  git push origin :$1
  git branch -D $1
  git remote prune origin
  git update-ref -d refs/heads/$1
}

function delete_all_merged_branches {
  echo -n "Are you sure you want to delete all branches that have been merged to master? y/n:"
  read option

  # exit on unknown option passed in.
  if [[ $option != "y" && $option != "n" ]]
  then
      echo "--unknown option"
      exit
  fi

  if [[ $option = "y" ]]
  then
    git branch -r --merged master | grep -v master | sed 's/origin\///' | xargs -n 1 git push --delete origin
  fi
}

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
