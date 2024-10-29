# Yazi
abbr dv = "yt-dlp -f \"bv*[height<=720]+ba/b[height<=720] / wv*+ba/w\""

function yy
  set tmp (mktemp -t "yazi-cwd.XXXXXX")
  yazi $argv --cwd-file="$tmp"
  if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
    builtin cd -- "$cwd"
  end
  rm -f -- "$tmp"
end

starship init fish | source
