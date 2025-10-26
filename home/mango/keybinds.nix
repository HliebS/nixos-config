{
  wayland.windowManager.mango.settings = ''
    # [CONFIG_BINDS]
    bind=SUPER+SHIFT+ALT,r,reload_config

    # [LAUNCH_BINDS]
    bind=super,d,spawn,rofi -show drun
    bind=super,space,spawn,wezterm
    bind=super,b,spawn,brave

    # [EXIT_BINDS]
    bind=SUPER+SHIFT+ALT,m,quit
    bind=SUPER+SHIFT,q,killclient
  '';
}
