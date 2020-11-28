#import setproctitle
#setproctitle.setproctitle("qutebrowser")

# Bindings
config.bind("gi", "hint inputs")
config.bind("<f12>", "inspector")

config.bind("zi", "zoom-in")
config.bind("zo", "zoom-out")
config.bind("zz", "zoom")

config.bind("jk", "leave-mode", mode="insert")

config.unbind("d")
config.bind("dit", "download")
config.bind("dd", "download-delete")
config.bind("dcl", "download-clear")
config.bind("dcn", "download-cancel")

config.unbind("l")
config.unbind("h")
config.bind("l", "tab-next")
config.bind("h", "tab-prev")

config.unbind("ZQ")
config.unbind("ZZ")
config.unbind("<ctrl+q>")
config.bind("ZQ", "wq")

c.aliases = {
    "w": "session-save",
    "wq": "quit --save",
}

c.auto_save.session = True

c.colors.statusbar.url.success.https.fg = "white"
c.colors.tabs.odd.fg = c.colors.tabs.even.fg
c.completion.height = "20%"
c.completion.quick = False
c.completion.show = "auto"

# Whether quitting the application requires a confirmation.
# Valid values:
#   - always: Always show a confirmation.
#   - multiple-tabs: Show a confirmation if multiple tabs are opened.
#   - downloads: Show a confirmation if downloads are running
#   - never: Never show a confirmation.
c.confirm_quit = ["downloads"]

# Value to send in the `Accept-Language` header.
c.content.headers.accept_language = "en-US,en;q=0.8,fi;q=0.6"

# The proxy to use. In addition to the listed values, you can use a
# `socks://...` or `http://...` URL.
# Valid values:
#   - system: Use the system wide proxy.
#   - none: Don"t use any proxy
c.content.proxy = "none"
c.content.ssl_strict = True
c.content.user_stylesheets = "user.css"

# The directory to save downloads to. If unset, a sensible os-specific
# default is used.
c.downloads.location.directory = "~/Downloads/"

# Prompt the user for the download location. If set to false,
# `downloads.location.directory` will be used.
c.downloads.location.prompt = False

# The editor (and arguments) to use for the `open-editor` command. `{}`
# gets replaced by the filename of the file to be edited.
c.editor.command = ["gnome-terminal", "-e", "vim '{}'"]

monospace = "14px 'Terminus'"
average = "bold 13px 'DejaVu Sans Mono'"
c.fonts.completion.category = f"bold {monospace}"
c.fonts.completion.entry = monospace
c.fonts.debug_console = monospace
c.fonts.downloads = monospace
c.fonts.keyhint = monospace
c.fonts.messages.error = monospace
c.fonts.messages.info = monospace
c.fonts.messages.warning = monospace
c.fonts.prompts = monospace
c.fonts.statusbar = monospace
c.fonts.tabs.selected = monospace
c.fonts.tabs.unselected = monospace

c.fonts.hints = average
c.hints.chars = "asdfghjkl;"
c.input.insert_mode.auto_leave = True
c.input.insert_mode.auto_load = True
c.scrolling.smooth = False
c.tabs.background = False
c.tabs.last_close = "close"

c.tabs.padding = {
    "left": 0,
    "right": 0,
    "top": 0,
    "bottom": 0,
}

# Which tab to select when the focused tab is removed.
# Valid values:
#   - prev: Select the tab which came before the closed one (left in horizontal, above in vertical).
#   - next: Select the tab which came after the closed one (right in horizontal, below in vertical).
#   - last-used: Select the previously selected tab.
c.tabs.select_on_remove = "prev"

c.url.default_page = "about:blank"
c.url.searchengines = {"DEFAULT": "https://www.google.com/search?q={}"}

# The page(s) to open at the start.
c.url.start_pages = ["https://www.google.com"]
