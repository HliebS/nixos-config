{
  wayland.windowManager.mango.settings = ''
    # [TAG]: Rules
    # Supported layouts:
    # tile,scroller,grid,deck,monocle,center_tile,vertical_tile,vertical_scroller
    tagrule=id:1,layout_name:tile
    tagrule=id:2,layout_name:tile
    tagrule=id:3,layout_name:tile
    tagrule=id:4,layout_name:tile
    tagrule=id:5,layout_name:tile
    tagrule=id:6,layout_name:tile
    tagrule=id:7,layout_name:tile
    tagrule=id:8,layout_name:tile
    tagrule=id:9,layout_name:tile

    # [TAG]: Numerical switching
    bind=SUPER,1,view,1,0
    bind=SUPER,2,view,2,0
    bind=SUPER,3,view,3,0
    bind=SUPER,4,view,4,0
    bind=SUPER,5,view,5,0
    bind=SUPER,6,view,6,0
    bind=SUPER,7,view,7,0
    bind=SUPER,8,view,8,0
    bind=SUPER,9,view,9,0

    # [TAG]: Numerical client to tag switching
    # bind=Alt,1,tagsilent,1 | Move but do not focus
    bind=SUPER+SHIFT,1,tag,1,0
    bind=SUPER+SHIFT,2,tag,2,0
    bind=SUPER+SHIFT,3,tag,3,0
    bind=SUPER+SHIFT,4,tag,4,0
    bind=SUPER+SHIFT,5,tag,5,0
    bind=SUPER+SHIFT,6,tag,6,0
    bind=SUPER+SHIFT,7,tag,7,0
    bind=SUPER+SHIFT,8,tag,8,0
    bind=SUPER+SHIFT,9,tag,9,0

    # [TAG]: Directional switching | Not used
    # bind=SUPER,Left,viewtoleft,0
    # bind=SUPER,Right,viewtoright,0
    # bind=CTRL+SUPER,Left,tagtoleft,0
    # bind=CTRL+SUPER,Right,tagtoright,0
    # bind=CTRL,Left,viewtoleft_have_client,0
    # bind=CTRL,Right,viewtoright_have_client,0
  '';
}
