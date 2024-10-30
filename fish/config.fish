abbr pr "pkg uninstall"
abbr pu "pkg update -y"
abbr pi "pkg install -y"

alias da="ani-cli -d -q 720"
alias dv="yt-dlp -f \"bv*[height<=720]+ba/b[height<=720] / wv*+ba/w\""

# Yazi
function yy
  set tmp (mktemp -t "yazi-cwd.XXXXXX")
  yazi $argv --cwd-file="$tmp"
  if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
    builtin cd -- "$cwd"
  end
  rm -f -- "$tmp"
end

starship init fish | source
