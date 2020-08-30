/* See LICENSE file for copyright and license details. */

/* appearance */
static const unsigned int borderpx  = 0;        /* border pixel of windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const int showbar            = 0;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */
static const char *fonts[]          = { "xos4 Terminus:size=10" };
static const char dmenufont[]       = "xos4 Terminus:size=10";
static const char col_black[]       = "#1c1c1c";
static const char col_white[]       = "#dfe2ec";
static const char col_blue[]        = "#5f87ff";
static const char *colors[][3]      = {
	/*               fg         bg         border   */
	[SchemeStatus]  = { col_white, col_black, "#000000" },
	[SchemeTagsSel]  = { col_white, col_blue, "#000000" },
    [SchemeTagsNorm]  = { col_white, col_black, "#000000" },
    [SchemeInfoSel]  = { col_white, col_black, "#000000" }, 
    [SchemeInfoNorm]  = { col_white, col_black, "#000000" },
};

/* tagging */
static const char *tags[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9", "10" };

/* layout(s) */
static const float mfact     = 0.55; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 1;    /* 1 means respect size hints in tiled resizals */

static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "[]=",      tile },    /* first entry is default */
	{ "[M]",      monocle },
};

/* key definitions */
#define MODKEY Mod1Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

static Key keys[] = {
	/* modifier                     key        function        argument */
	{ MODKEY,                       XK_h,      spawn,          SHCMD("amixer -D pulse sset Master 5%+") },
	{ MODKEY,                       XK_n,      spawn,          SHCMD("amixer -D pulse sset Master 5%-") },

	{ MODKEY,                       XK_r,      spawn,          SHCMD("rofi -show run") },
	{ MODKEY,                       XK_d,      spawn,          SHCMD("rofi -show drun") },
	{ MODKEY,                       XK_w,      spawn,          SHCMD("rofi -show window") },
	{ MODKEY,                       XK_Return, spawn,          SHCMD("urxvt") },

	{ MODKEY,                       XK_r,      spawn,          SHCMD("rofi -show run") },
	{ MODKEY,                       XK_d,      spawn,          SHCMD("rofi -show drun") },
	{ MODKEY,                       XK_w,      spawn,          SHCMD("rofi -show window") },

	{ MODKEY,                       XK_b,      togglebar,      {0} },
	{ MODKEY,                       XK_j,      focusstack,     {.i = +1 } },
	{ MODKEY,                       XK_k,      focusstack,     {.i = -1 } },
	{ MODKEY,                       XK_i,      incnmaster,     {.i = +1 } },
	{ MODKEY,                       XK_o,      incnmaster,     {.i = -1 } },
	{ MODKEY,                       XK_h,      setmfact,       {.f = -0.05} },
	{ MODKEY,                       XK_l,      setmfact,       {.f = +0.05} },
    { MODKEY,                       XK_z,      zoom,           {0} },
	{ MODKEY,                       XK_Tab,    view,           {0} },
	{ MODKEY,                       XK_q,      killclient,     {0} },
	{ MODKEY,                       XK_t,      setlayout,      {.v = &layouts[0]} },
	{ MODKEY,                       XK_m,      setlayout,      {.v = &layouts[1]} },
	TAGKEYS(                        XK_1,                      4)
	TAGKEYS(                        XK_2,                      5)
	TAGKEYS(                        XK_3,                      6)
	TAGKEYS(                        XK_4,                      7)
	TAGKEYS(                        XK_5,                      8)
	TAGKEYS(                        XK_6,                      9)
	TAGKEYS(                        XK_7,                      0)
	TAGKEYS(                        XK_8,                      1)
	TAGKEYS(                        XK_9,                      2)
	TAGKEYS(                        XK_0,                      3)
	{ MODKEY|ControlMask,           XK_q,      quit,           {0} },
};

/* some inneeds things */
static Button buttons[0];
static const Rule rules[0];
static char dmenumon[1];
static const char *dmenucmd[] = { "dmenu", NULL };
static const char *termcmd[]  = { "st", NULL };

