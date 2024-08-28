config.load_autoconfig(False)
config.bind('ge', 'scroll-to-perc')

c.statusbar.show = 'in-mode'
c.tabs.show = 'never'
c.scrolling.bar = 'never'

config.set('tabs.tabs_are_windows', True)

# TODO:
# setup only the keybindings i want.
# print(c.bindings.default)

c.fonts.completion.entry = '11pt "Fira Code"'
c.fonts.debug_console = '11pt "Fira Code"'
c.fonts.prompts = '11pt "Fira Code"'
c.fonts.statusbar = '11pt "Fira Code"'

c.url.start_pages = "about:blank"
c.url.default_page = "about:blank"
c.url.searchengines = {'DEFAULT': 'https://www.qwant.com/?q={}'}

c.colors.webpage.preferred_color_scheme = 'dark'
