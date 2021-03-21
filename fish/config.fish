set fish_greeting

if status is-login
  ~/cfg/fish/onedrive-sync &
  if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
    exec startx -- -keeptty
  end
end
