export ARCHFLAGS="-arch x86_64"

######################
# COMMAND COMPLETION #
######################

###
# Bash
###
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

###
# NVM
###

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

###
# Git
###
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true

###############
# VIRTUAL ENV #
###############

# export WORKON_HOME=$HOME/.virtualenvs
# VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2
# source /usr/local/bin/virtualenvwrapper.sh
source ~/.bash_1prompt
# export PYTHONSTARTUP=$HOME/.pythonrc.py
alias python=python3

########
# PATH #
########

export PATH=/Users/shussain/.virtualenvs/aws/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

###########
# HISTORY #
###########

export HISTTIMEFORMAT="%h %d %H:%M:%S "
export HISTSIZE=10000
export HISTFILESIZE=10000
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
export HISTCONTROL=ignorespace:ignoredups:erasedups
shopt -s cmdhist
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

########
# JAVA #
########

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

##################
# AD HOC SCRIPTS #
##################

export AD_HOC_SCRIPTS_PATH=/Users/shussain/Code/ad-hoc-scripts/

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

alias fixaudio="sudo killall coreaudiod"

alias ssh_cit_tst="ssh -i ~/.ssh/id_rsa_gatekeeper shussain@ec2-52-53-254-211.us-west-1.compute.amazonaws.com"
alias ssh_cit_stg="ssh -i ~/.ssh/id_rsa_gatekeeper shussain@ec2-34-212-239-84.us-west-2.compute.amazonaws.com"
alias ssh_cit_prd="ssh -i ~/.ssh/id_rsa_gatekeeper shussain@ec2-52-53-242-55.us-west-1.compute.amazonaws.com"
alias ssh_prom_tst="ssh ec2-52-9-216-105.us-west-1.compute.amazonaws.com"
alias ssh_prom_stg="ssh ec2-34-216-125-169.us-west-2.compute.amazonaws.com"
alias ssh_prom_prd="ssh ec2-54-153-78-23.us-west-1.compute.amazonaws.com"

alias ec="subl ~/.aws/credentials"
alias eb="subl ~/.bash_profile"
alias sb="source ~/.bash_profile"
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

alias queries_stage_rmn_subs_info="printf \"SELECT \n\tsu.email, \n\tsu.emailUuid, \n\tsu.charonUuid, \n\tsu.lastActivityDate, \n\tsu.subscriptions, \n\tsu.lastKnownNotificationSettings, \n\tsu.createTimestamp, \n\tCOALESCE(sbu.id, 0) AS sbuId, \n\tsbu.externalId, \n\tsbu.emailSubscribe, \n\tsbu.isValid, \n\tsbav1.attributeValue AS stagedSubscription, \n\tsbav2.attributeValue AS stagedEmailUuid, \n\tsbav3.attributeValue AS stagedLastActivityDate, \n\tsbav4.attributeValue AS stagedEmailSubscribeDate, \n\tsbav5.attributeValue AS stagedUserUuid \nFROM subscription_user su \n\tLEFT JOIN staged_braze_user sbu ON su.email = sbu.email \n\tLEFT JOIN staged_braze_attribute_value sbav1 ON sbu.id = sbav1.stagedBrazeUserId AND sbav1.attributeName = 'subscription' \n\tLEFT JOIN staged_braze_attribute_value sbav2 ON sbu.id = sbav2.stagedBrazeUserId AND sbav2.attributeName = 'email_uuid' \n\tLEFT JOIN staged_braze_attribute_value sbav3 ON sbu.id = sbav3.stagedBrazeUserId AND sbav3.attributeName = 'last_activity_date' \n\tLEFT JOIN staged_braze_attribute_value sbav4 ON sbu.id = sbav4.stagedBrazeUserId AND sbav4.attributeName = 'email_subscribe_date' \n\tLEFT JOIN staged_braze_attribute_value sbav5 ON sbu.id = sbav5.stagedBrazeUserId AND sbav5.attributeName = 'user_uuid' \nWHERE (su.emailUuid IS NOT NULL OR su.charonUuid IS NOT NULL) AND (sbu.isValid IS NULL OR sbu.isValid = 'Y') AND su.lastActivityDate >= DATE_SUB(NOW(), INTERVAL 180 day);\" | pbcopy && echo \"query copied to clipboard\""
alias queries_top_offers="printf \"SELECT 'null' AS placementUuid, CASE WHEN rpc.productCardId IS NULL THEN 'OFFER' ELSE 'PRODUCT' END AS placementType, tof.title as offerTitle, tof.couponId, rc.uuid, rc.couponType, rc.couponRedemptionType, rc.couponRedemptionChannel, tof.endDate, tof.domain, rs.title, 'null' AS ratio4To3, 'null' AS landingUrl, rpc.productCardId, rpc.ideaUrl, rpc.imageUrl, rpc.originalPrice, rpc.finalPrice, tof.dateLastUsed, tof.campaignLastUsedIn \nFROM top_offer tof \nJOIN rmn_coupon rc ON tof.offerUuid = rc.uuid \nLEFT JOIN rmn_site rs ON rc.site = rs.siteId \nLEFT JOIN rmn_product_card rpc ON rc.uuid = rpc.couponUuid \nWHERE \n\t tof.category = 'top_cashback' AND \n\t tof.startDate <= CURRENT_DATE AND tof.endDate >= CURRENT_DATE AND rc.score >= 50 AND tof.offerUuid IN (\n\t\t\t SELECT offerUuid \n\t\t\t FROM top_offer\n\t\t\t WHERE rank IS NOT NULL \n\t\t\t GROUP BY offerUuid \n\t\t) \nORDER BY tof.rank ASC;\" | pbcopy && echo \"query copied to clipboard\""
alias queries_update_braze="printf \"SELECT id, externalId, brazeId, GROUP_CONCAT(attributeNames) AS attributeNames, GROUP_CONCAT(attributeValues) AS attributeValues, GROUP_CONCAT(email) AS email, \n\t\tGROUP_CONCAT(emailSubscribe) AS emailSubscribe, GROUP_CONCAT(pushSubscribe) AS pushSubscribe \nFROM (\n   SELECT sbu.id AS id, sbu.externalId AS externalId, sbu.brazeId AS brazeId, SUM(sbav.dirtiness * ba.dirtinessweight) AS overallDirtiness, GROUP_CONCAT(sbav.attributeName SEPARATOR '-;-') AS attributeNames, \n\t\tGROUP_CONCAT(sbav.attributeValue SEPARATOR '-;-') AS attributeValues, sbu.email AS email, sbu.emailSubscribe AS emailSubscribe, sbu.pushSubscribe AS pushSubscribe \n   FROM staged_braze_user AS sbu \n   JOIN staged_braze_attribute_value AS sbav ON sbu.id = sbav.stagedBrazeUserId \n   JOIN braze_attribute AS ba ON ba.attributeName = sbav.attributeName \n   WHERE sbu.isValid = 'Y' AND sbav.dirtiness > 0 \n   GROUP BY sbu.id \n   UNION \n   SELECT sbu.id AS id, sbu.externalId AS externalId, bu.brazeId AS brazeId, 10000 AS overallDirtiness, null, null, sbu.email, sbu.emailSubscribe, sbu.pushSubscribe \n   FROM braze_user AS bu \n   JOIN staged_braze_user AS sbu ON bu.brazeId = sbu.brazeId \n   WHERE sbu.isValid = 'Y' AND ( \n\t   (sbu.email != bu.email) \n\t   OR (sbu.email IS NULL AND bu.email IS NOT NULL) \n\t   OR (sbu.email IS NOT NULL AND bu.email IS NULL) \n\t   OR (sbu.emailSubscribe != bu.emailSubscribe) \n\t   OR (sbu.emailSubscribe IS NULL AND bu.emailSubscribe IS NOT NULL) \n\t   OR (sbu.emailSubscribe IS NOT NULL AND bu.emailSubscribe IS NULL) \n\t   OR (sbu.pushSubscribe != bu.pushSubscribe) \n\t   OR (sbu.pushSubscribe IS NULL AND bu.pushSubscribe IS NOT NULL) \n\t   OR (sbu.pushSubscribe IS NOT NULL AND bu.pushSubscribe IS NULL) \n   ) \n) temp \nGROUP BY id \nORDER BY MAX(overallDirtiness) DESC;\" | pbcopy && echo \"query copied to clipboard\""
alias queries_update_segment="printf \"SELECT \n\tsbu.id, \n\tsbu.brazeId, \n\tsbu.deviceId, \n\tsbu.email, \n\tsbu.emailSubscribe, \n\tsu.emailUuid, \n\tsu.charonUuid, \n\tsu.lastActivityDate, \n\tsu.originalSubscriptionSource \nFROM staged_braze_user sbu \n\tLEFT JOIN subscription_user su ON sbu.email = su.email \nWHERE sbu.brazeId IS NOT NULL AND sbu.isValid = 'Y' AND (sbu.lastUpdateTimestamp > DATE_SUB(CURRENT_DATE(), INTERVAL 1 DAY) OR su.lastUpdateTimestamp > DATE_SUB(CURRENT_DATE(), INTERVAL 1 DAY));\" | pbcopy && echo \"query copied to clipboard\""
alias queries_ep_update="printf \"UPDATE email_placement SET startDate = CURRENT_DATE, endDate = CURRENT_DATE WHERE startDate = '';\" | pbcopy && echo \"query copied to clipboard\""
alias queries_epc="printf \"SELECT ep.placementTarget, epc.* FROM email_placement ep JOIN email_placement_content epc ON ep.id = epc.placementId WHERE ep.startDate = CURRENT_DATE;\" | pbcopy && echo \"query copied to clipboard\""
alias queries_epcf="printf \"SELECT ep.placementTarget, epc.* FROM email_placement ep JOIN email_placement_content epc ON ep.id = epc.placementId WHERE ep.startDate = CURRENT_DATE AND ep.emailType = 'FLAGSHIP';\" | pbcopy && echo \"query copied to clipboard\""
alias queries_epcb="printf \"SELECT ep.placementTarget, epc.* FROM email_placement ep JOIN email_placement_content epc ON ep.id = epc.placementId WHERE ep.startDate = CURRENT_DATE AND ep.emailType IN ('FLAGSHIP', 'OTHER');\" | pbcopy && echo \"query copied to clipboard\""

alias ngrok="~/Tools/ngrok"

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

alias urldecode='perl -n -E '\''use URI::Escape; print uri_unescape($_);'\'''

npmauth=$(perl -ne 'print "$1" if m{npm.rmn.io/:_authToken="(.*?)"}' ~/.npmrc);
export NPM_RMN_TOKEN="$npmauth";
export AD_HOC_SCRIPTS_PATH=/Users/shussain/Code/ad-hoc-scripts
export PYTHONPATH=/Users/shussain/Code/ad-hoc-scripts/common

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
