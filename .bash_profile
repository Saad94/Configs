######################
## USEFUL SHORTCUTS ##
######################

alias ls="ls --color=auto 2> /dev/null"
alias ll="ls -la"
alias l.="ls -a"
alias vb="vi ~/.bash_profile"
alias sb="source ~/.bash_profile"
alias subl="/mnt/c/Program\ Files/Sublime\ Text\ 3/subl.exe"
alias clip="/mnt/c/Windows/System32/clip.exe"
alias cd~="cd /mnt/c/Users/saad_/"
alias cdcnc="cd /mnt/c/Users/saad_/Desktop/CnC"
alias cdjs="cd /mnt/c/Users/saad_/Desktop/udemy/complete-javascript-course"
alias cl="clear"


######################
## USEFUL FUNCTIONS ##
######################

function npm_init() {
    # Initialize npm
    npm init -y;

    # Install useful packages
    sudo npm install --save-dev dotenv-webpack@1.7.0;
    sudo npm install --save-dev webpack@4.28.3 webpack-cli@3.1.2 webpack-dev-server@3.1.14;
    sudo npm install --save-dev html-webpack-plugin@3.2.0 @babel/core@7.2.2 @babel/preset-env@7.2.3 babel-loader@8.0.4;
    sudo npm install --save babel-polyfill@6.26.0;

    # Set up the default npm scripts
    sed -i 's/"test".*/"dev": "webpack --mode development",\n    "build": "webpack --mode production",\n    "start": "webpack-dev-server --mode development --open"/' package.json

    # Create a webpack config file
    echo -e "const path = require('path');\nconst HtmlWebpackPlugin = require('html-webpack-plugin');\nconst Dotenv = require('dotenv-webpack');\n\nmodule.exports = {\n\tentry: ['babel-polyfill', './src/js/index.js'],\n\toutput: {\n\t\tpath: path.resolve(__dirname, 'dist'),\n\t\tfilename: 'js/bundle.js'\n\t},\n\tdevServer: {\n\t\tcontentBase: './dist'\n\t},\n\tplugins: [\n\t\tnew HtmlWebpackPlugin({\n\t\t\tfilename: 'index.html',\n\t\t\ttemplate: './src/index.html'\n\t\t}),\n\t\tnew Dotenv()\n\t],\n\tmodule: {\n\t\trules: [\n\t\t\t{\n\t\t\t\ttest: '/\.js$/',\n\t\t\t\texclude: '/node_modules/',\n\t\t\t\tuse: {\n\t\t\t\t\tloader: 'babel-loader'\n\t\t\t\t}\n\t\t\t}\n\t\t]\n\t}\n};" > webpack.config.js;

    # Create a .babelrc file
    echo -e "{\n\t\"presets\": [\n\t\t[\n\t\t\t\"env\", \n\t\t\t{\n\t\t\t\t\"targets\": {\n\t\t\t\t\t\"browsers\": [\n\t\t\t\t\t\t\"last 5 versions\",\n\t\t\t\t\t\t\"ie >= 8\"\n\t\t\t\t\t]\n\t\t\t\t}\n\t\t\t}\n\t\t]\n\t]\n}" > .babelrc;

    # Create a .env file
    echo -e "MY_TEST=thisisatest" > ./.env

    # Create the src and dist folders
    mkdir ./src ./src/js ./dist

    # Create the index.html file
    echo -e "<!DOCTYPE html>\n<html>\n\t<head>\n\t\t<title>The Minimal Webpack Babel Setup</title>\n\t</head>\n\t<body>\n\t\t<div id="app"></div>\n\n\t</body>\n</html>" > ./src/index.html

    # Create the index.js file
    echo -e "console.log('Hello Node.js project.');\n\nconsole.log('This is an example environment variable: ' + process.env.MY_TEST);" > ./src/js/index.js
}

#########
## GIT ##
#########

alias gs="git status"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gp="git pull"
alias gpsh="git push"
alias gcm="git commit -m"
alias gcma="git commit --amend"
alias gb="git branch"
alias gl="git log"


############
## COLORS ##
############
source ~/.git-completion.bash
export PS1='\[\e[37;1m\]\u@\[\e[35m\]\w\[\e[93m\]$(__git_ps1 " (%s)")\[\e[0m\]\$ '
export LS_COLORS='rs=0:di=1;4;33:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=1;4;33:ow=1;4;33:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36'


#############
## HISTORY ##
#############

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth
 
# append to the history file, don't overwrite it
shopt -s histappend
 
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=100000
 
# single command history across all shells
PROMPT_COMMAND="history -a; history -c; history -r; chown saad \${HISTFILE}; $PROMPT_COMMAND"
  
# make up arrow and down arrow search
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'




