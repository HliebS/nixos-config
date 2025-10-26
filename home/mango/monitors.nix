{
  # "eDP-1, 1920x1080@60, 0x0, 1.25"
  # "HDMI-A-1, 2560x1440@60, 1536x0, 1.0"
  # "DP-5, 1920x1080@60, 4096x0, 1"

  wayland.windowManager.mango.settings = ''
    # [MONITOR]
    monitorrule=eDP-1,0.55,1,tile,0,1.25,0,0,1920,1080,60
    monitorrule=HDMI-A-1,0.55,1,tile,0,1,1536,0,2560,1440,60
    monitorrule=DP-5,0.55,1,tile,0,1,4096,0,1920,1080,60

    # [MONITOR_BINDS]
    # Move focus to monitor on the left
    bind=SUPER+SHIFT,Left,focusmon,left
    # Move focus to monitor on the right
    bind=SUPER+SHIFT,Right,focusmon,right
  '';
}
