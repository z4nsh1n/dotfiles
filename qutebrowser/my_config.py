# fonts

c.fonts.web.size.minimum = 12
c.fonts.default_size = '12pt'
c.fonts.default_family = "JetBrains Mono"

# colors
c.colors.webpage.preferred_color_scheme = 'dark'
c.colors.webpage.darkmode.policy.page = 'smart'
c.colors.webpage.darkmode.enabled = True

# tabs 

# c.colors.tabs.selected.odd.fg = 'white'
# c.colors.tabs.selected.odd.bg = '#00a6a8' #'lightgrey'
# c.colors.tabs.selected.even.fg = 'white'
# c.colors.tabs.selected.even.bg = '#00a6a8' #'lightgrey'
# c.colors.tabs.odd.fg = 'white'
# c.colors.tabs.odd.bg = 'lightgrey' #'darkgrey'
# c.colors.tabs.even.fg = 'white'
# c.colors.tabs.even.bg = 'darkgrey'

config.source("./themes/gruvbox.py")
# search engines

c.url.searchengines = {'DEFAULT': 'https://www.google.nl/search?q={}',
                       'google' : 'https://www.google.com/search?udm=50&aep=11&q={}',
                       'claude' : 'https://claude.ai/new?q={}',
                       'grok' : 'https://grok.com/?q={}',
                       'gpt': 'https://chatgpt.com/?q={}',
                       'ocamlh' : 'https://www.google.nl/search?q=site%3Ahttps%3A//courses.cs.cornell.edu/cs3110/2021sp/textbook/%20{}',
                       'phind' : 'https://www.phind.com/search?q={}&searchMode=auto&allowMultiSearch=false',
                       'stackoflow': 'https://stackoverflow.com/questions/tagged/{}',
                       'dicnl': 'https://nl.thefreedictionary.com/{}',
                       'dic': 'https://www.thefreedictionary.com/{}',
                       'anna': 'https://annas-archive.org/search?index=&q={}&sort=',
                       'ocaml-pack': 'https://ocaml.org/packages/search?q={}',
                       'zig-api': 'https://ziglang.org/documentation/master/std/#A;std?{}',
                       'rust-lang': 'https://doc.rust-lang.org/rust-by-example/index.html?search={}',
                       'rust-forum': 'https://users.rust-lang.org/search?q={}',
                       'rustapi': 'https://doc.rust-lang.org/std/index.html?search={}',
                       'crates': 'https://crates.io/search?q={}',
                       'rustref': 'https://doc.rust-lang.org/reference/items/implementations.html?search={}',
                       'm': 'https://www.marktplaats.nl/q/{}',
                       'rdoc': 'https://docs.rs/releases/search?query={}',
                       'y' : 'https://www.youtube.com/results?search_query={}',
                       'd' : 'https://duckduckgo.com/?q={}',
                       'i' :'https://www.investopedia.com/search?q={}',
                       'g' : 'https://www.google.nl/search?q={}',
                       'git':'https://github.com/search?q={}&type=repositories',
                       'pdf' :'https://welib.org/search?q={}',
                       'wa': 'https://wiki.archlinux.org/?search={}',
                       'vpub': 'https://vdoc.pub/search/{}',
                       # 'zlib' :'https://1lib.sk/s/{}',
                       'zlib' :'https://z-library.website/s/{}',
                       'etynl' : 'https://etymologiebank.nl/trefwoord/{}',
                       'etyen' : 'https://www.etymonline.com/word/{}',
                       'lat' : 'https://www.latin-is-simple.com/en/vocabulary/search/?q={}',
                       'dict' : 'https://dictionary.cambridge.org/dictionary/english/{}',
                       'wb' : 'https://nl.wiktionary.org/wiki/{}',
                       'hoogle' : 'https://hoogle.haskell.org/?hoogle={}',
                       'elixir' : 'https://hexdocs.pm/elixir/search.html?q={}',
                       'hex' : 'https://hex.pm/packages?search={}&sort=recent_downloads'}

# c.url.start_pages = ['file:///home/zanshin/index.html']
c.url.default_page = "about:blank"  #"file:///home/zanshin/index.html" #'http://www.google.nl/'
c.url.start_pages = "about:blank"

# normal mode
config.bind('<Alt-l>', 'tab-next')
config.bind('<Alt-h>', 'tab-prev')
config.bind('<Ctrl-Alt-h>', 'tab-move -')
config.bind('<Ctrl-Alt-l>', 'tab-move +')
config.bind(',r', 'reload')
config.bind('<Ctrl-Alt-1>', 'tab-focus 11')
config.bind('<Ctrl-Alt-2>', 'tab-focus 12')
config.bind('<Ctrl-Alt-3>', 'tab-focus 13')
config.bind('<Ctrl-Alt-4>', 'tab-focus 14')
config.bind('<Ctrl-Alt-5>', 'tab-focus 15')
config.bind('<Ctrl-Alt-6>', 'tab-focus 16')
config.bind('<Ctrl-Alt-7>', 'tab-focus 17')
config.bind('<Ctrl-Alt-8>', 'tab-focus 18')
config.bind('<Ctrl-Alt-9>', 'tab-focus 19')
config.bind('<Alt-9>', 'tab-focus 9')
config.bind('<Alt-0>', 'tab-focus 10')
config.bind('gT', 'cmd-set-text --space :tab-give')
config.bind('tT', 'cmd-set-text --space :tab-take')
config.bind('cr', 'config-source ~/.config/qutebrowser/config.py')
config.bind('F', 'hint all tab-bg')
config.bind('=', 'zoom-in')

# input fields
config.bind('<Ctrl-c>', 'mode-leave', mode='insert')
config.bind('<Ctrl-f>', 'fake-key <Ctrl-Right>', mode='insert')
config.bind('<Ctrl-b>', 'fake-key <Ctrl-Left>', mode='insert')
config.bind('<Ctrl-w>', 'fake-key <Ctrl-Backspace>', mode='insert')
config.bind('<Ctrl-a>', 'fake-key <Home>', mode='insert')
config.bind('<Ctrl-e>', 'fake-key <End>', mode='insert')
config.bind('<Ctrl-u>', 'fake-key <End><Shift-Home><Delete>', mode='insert')
config.bind('<Ctrl-j>', 'fake-key <Down>', mode='insert')
config.bind('<Ctrl-k>', 'fake-key <Up>', mode='insert')

# command mode
config.bind('<Ctrl-k>', 'completion-item-focus prev', mode='command')
config.bind('<Ctrl-j>', 'completion-item-focus next', mode='command')


# hints
c.hints.next_regexes = ['\\bnext\\b', '\\bmore\\b', '\\bnewer\\b', '\\b[>→≫]\\b', '\\b(>>|»)\\b', '\\bcontinue\\b']
c.hints.selectors = {'all': ['a', 'area', 'textarea', 'select', 'input:not([type="hidden"])', 'button', 'frame', 'iframe', 'img', 'link', 'summary', '[contenteditable]:not([contenteditable="false"])', '[onclick]', '[onmousedown]', '[role="link"]', '[role="option"]', '[role="button"]', '[ng-click]', '[ngClick]', '[data-ng-click]', '[x-ng-click]', '[tabindex]'], 
                     'links': ['a[href]', 'area[href]', 'link[href]', '[role="link"][href]'], 
                     'images': ['img'], 
                     'media': ['audio', 'img', 'video'], 
                     'url': ['[src]', '[href]'], 
                     'divids': ['div[id]'],
                     'youtube' : ['ytd-guide-section-renderer'],
                     'inputs': ['input[type="text"]', 'input[type="date"]', 'input[type="datetime-local"]', 'input[type="email"]', 'input[type="month"]', 'input[type="number"]', 'input[type="password"]', 'input[type="search"]', 'input[type="tel"]', 'input[type="time"]', 'input[type="url"]', 'input[type="week"]', 'input:not([type])', '[contenteditable]:not([contenteditable="false"])', 'textarea']
                     }
c.hints.selectors['myscrolls'] = [
                               'body',
                               'ul',
                               'ol',
                               'pre',
                               'figure',
                               
                               '[id^="nav"]',
                               '[class^="nav"]',
                               ':root',
                               #'ytd-app',
                               #'ytd-browse',
                               # 'div[id="navigation"]',
                               # 'div[id="guide-inner-content"]',
                               # '[player]',
                               # '[contents]',
                               #'[playlist]',
                               #'[container]',
                               #'div[id="below"]',
                               #'[id*="container"]',
                               #'[id*="header"]',
                               #'[class*="header"]',
                               #'[id*="content"]',
                               #'[class*="content"]',
                               #'[class*="container"]'  
                               ]
c.hints.selectors['headings'] = ['h1', 'h2', 'h3', 'h4', 'h5']
c.hints.selectors['divs'] = ['div']

c.hints.selectors['para'] = ['p', 'li', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6',
                             'blockquote', 'dd', 'dt', 'pre', 'td', 'th',
                             'figcaption']
config.bind(';v', 'hint para userscript caret-anchor')
config.bind(";s", 'hint myscrolls')
config.bind(";D", 'hint divs')
c.hints.selectors['headings'] = ['h1', 'h2', 'h3', 'h4', 'h5']
c.hints.selectors['href'] = ['.flex']
c.hints.selectors['grease'] = ['.__qb_scrollable__']

config.bind(";s", 'hint myscrolls')
config.bind(";D", 'hint href')
config.bind(";q", 'hint grease')
config.bind(";d", 'hint divids')
config.bind(";H", 'hint headings')
config.bind(";T", 'hint testing')
config.bind("td", 'config-cycle colors.webpage.darkmode.enabled true false')

