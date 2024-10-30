abbr pr "pkg uninstall"
abbr pu "pkg update -y"
abbr pi "pkg install -y"

#Download
abbr dv "yt-dlp"
abbr da "ani-cli -d -q 720 -e"

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
