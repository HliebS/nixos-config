{
  wayland.windowManager.mango.settings = ''
    # [WINDOW_BINDS]
    # Move window to monitor on the left
    bind=SUPER+ALT,Left,tagmon,left 
    # Move window to monitor on the right
    bind=SUPER+ALT,Right,tagmon,right

    # [WINDOW_BINDS]: Switch focus
    bind=SUPER,j,focusstack,next
    bind=SUPER,k,focusstack,prev
    bind=SUPER,h,focusdir,left
    bind=SUPER,l,focusdir,right

    # [WINDOW_BINDS]: Swap
    bind=SUPER+SHIFT,j,exchange_client,down
    bind=SUPER+SHIFT,k,exchange_client,up
    bind=SUPER+SHIFT,h,exchange_client,left
    bind=SUPER+SHIFT,l,exchange_client,right

    # [WINDOW_BINDS]: Fullscreen and floating
    bind=SUPER,f,togglefullscreen,
    bind=SUPER+SHIFT,f,togglefloating,

    # [WINDOW_BINDS]: Change status
    # bind=SUPER,g,toggleglobal,
    # bind=ALT,Tab,toggleoverview,
    # bind=ALT,a,togglemaxmizescreen,
    # bind=ALT+SHIFT,f,togglefakefullscreen,
    bind=SUPER,m,minimized,
    bind=SUPER,o,toggleoverlay,
    bind=SUPER+SHIFT,m,restore_minimized
    # bind=ALT,z,toggle_scratchpad

    # [WWINDOW_BINDS]: Move gradually | Not used
    # bind=CTRL+SHIFT,Up,movewin,+0,-50
    # bind=CTRL+SHIFT,Down,movewin,+0,+50
    # bind=CTRL+SHIFT,Left,movewin,-50,+0
    # bind=CTRL+SHIFT,Right,movewin,+50,+0

    # [WINDOW_BINDS]: Resize gradually | Not used
    # bind=CTRL+ALT,Up,resizewin,+0,-50
    # bind=CTRL+ALT,Down,resizewin,+0,+50
    # bind=CTRL+ALT,Left,resizewin,-50,+0
    # bind=CTRL+ALT,Right,resizewin,+50,+0
  '';
}
