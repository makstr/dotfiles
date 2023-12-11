alias zrl="source ~/.zshrc"
alias tmx="tmux new-session -A -s ADMIN"
alias tmxkill="tmux kill-server"
alias j="just"

alias lzg="lazygit"
alias gt="git log --graph --oneline --all"
alias gtr="git log --graph --pretty=medium --all"
alias gdss="git diff --shortstat"

alias pn="pnpm"

if docker info >/dev/null 2>&1; then
	alias drc="docker-compose"
	alias drcrun="docker-compose run --rm"
	alias dexec="docker exec -it"
	alias dcps="docker ps | less -S"

	dps() {

		# http://mando.github.io/2016/02/05/docker-ps-formatting.html

		docker ps --format="table {{.Image}}\t{{.Ports}}\t{{.Status}}\t{{.Names}}" $@
		#        docker ps --format="table {{.Image}}\t{{.Status}}\t{{.Names}}" $@
		#docker ps --format="table {{.Image}}\t{{.Status}}\t{{.Ports}}\t{{.Names}}" $@
	}

	docker_stop_all() {
		docker stop $(docker ps -a -q)
	}

	docker_kill_all() {
		docker kill $(docker ps -q)
	}

fi

# obtain ip address

alias ip='ifconfig | grep "^\tinet\ [0-9\.]*\ .*\ b" -i -m 1 | sed -E "s/[^0-9\.]+//g" | sed -E "s/000(.*)//g"'
alias eip='curl --silent http://www.whatsmyip.net | grep "Address is" -m 1 | sed -E "s/[^0-9\.]//g" | sed -E "s/.$//" | sed -E "s/^.//"'

alias st="speedtest"
alias ch="chezmoi"

alias ci="code-insiders"
alias cin="code-insiders ."

alias ytd-01-list-files="youtube-dl -F "
alias ytd-simple="youtube-dl --add-metadata -x"
alias ytd-video="youtube-dl --add-metadata -x"
alias ytd-best="youtube-dl --audio-format best --embed-thumbnail --add-metadata -x"
alias ytd-m4a="youtube-dl --audio-format m4a --embed-thumbnail --add-metadata -x"
