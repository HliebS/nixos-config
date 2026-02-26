{
  # "eDP-1, 1920x1080@60, 0x0, 1.25"
  # "DP-5, 2560x1440@60, 1536x0, 1.0"
  # "HDMI-A-1, 1920x1080@60, 4096x0, 1"

  wayland.windowManager.mango.settings = ''
    # [MONITOR]
    monitorrule=name:eDP-1,width:1920,height:1080,refresh:60,x:0,y:0,scale:1.25,vrr:0,rr:0
    monitorrule=name:DP-5,width:3440,height:1440,refresh:144,x:1536,y:0,scale:1,vrr:0,rr:0

    # [MONITOR_BINDS]
    # Move focus to monitor on the left
    bind=SUPER+SHIFT,Left,focusmon,left
    # Move focus to monitor on the right
    bind=SUPER+SHIFT,Right,focusmon,right
  '';
}
