{
  wayland.windowManager.mango.settings = ''
    # [LAYOUT_BINDS]
    bind=SUPER,n,switch_layout

    # [LAYOUT_BINDS]: Scroller layout
    # bind=ALT,e,set_proportion,1.0
    # bind=ALT,x,switch_proportion_preset,

    # [LAYOUT]: Scroller
    scroller_structs=20
    scroller_default_proportion=0.8
    scroller_focus_center=0
    scroller_prefer_center=0
    edge_scroller_pointer_focus=1
    scroller_default_proportion_single=1.0
    scroller_proportion_preset=0.5,0.8,1.0

    # [LAYOUT]: Master-Stack
    new_is_master=1
    default_mfact=0.55
    default_nmaster=1
    smartgaps=0

    # [LAYOUT]: Overview
    hotarea_size=10
    enable_hotarea=1
    ov_tab_mode=0
    overviewgappi=5
    overviewgappo=30
  '';
}
