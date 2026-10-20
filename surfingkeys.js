const {
    Clipboard,
    Front,
    Hints,
    Normal,
    RUNTIME,
    Visual,
    aceVimMap,
    addSearchAlias,
    addSearchAliasX,
    cmap,
    getClickableElements,
    imap,
    imapkey,
    iunmap,
    map,
    mapkey,
    readText,
    removeSearchAlias,
    tabOpenLink,
    unmap,
    unmapAllExcept,
    vmapkey,
    vunmap
} = api;

/**
 * Expose API for using in the browser console
 */
window.surfingkeys = api

map('<Alt-h>', 'E');
map('<Alt-l>', 'R');
map('F', 'C');
map('d', 'x');
map('U', 'X');
map('O', 't');
map('y', 'yy');


mapkey("<Ctrl-d>", "Scroll down", () => { Normal.scroll("pageDown"); });
mapkey("<Ctrl-u>", "Scroll up", () => { Normal.scroll("pageUp"); });
// Map javascript functions
mapkey('on', '#3Open newtab', function () {
    alert("opening link to google");
    tabOpenLink("www.google.com");
});

cmap('<Ctrl-j>', '<Tab>');
cmap('<Ctrl-k>', '<Shift-Tab>');

addSearchAlias('git', 'github', 'https://github.com/search?q=');
addSearchAlias('google' ,'google', 'https://www.google.com/search?udm=50&aep=11&q=');
addSearchAlias('claude' ,'claude', 'https://claude.ai/new?q=');
addSearchAlias('grok' ,'grok', 'https://grok.com/?q=');
addSearchAlias('gpt','gpt', 'https://chatgpt.com/?q=');
addSearchAlias('phind' ,'phind', 'https://www.phind.com/search?q=&searchMode=auto&allowMultiSearch=false');
addSearchAlias('stackoflow','stackoflow', 'https://stackoverflow.com/questions/tagged/');
addSearchAlias('dicnl','dicnl', 'https://nl.thefreedictionary.com/');
addSearchAlias('dic','dic', 'https://www.thefreedictionary.com/');
addSearchAlias('anna','anna', 'https://annas-archive.org/search?index=&q=');
addSearchAlias('ocaml-pack','ocaml-pack', 'https://ocaml.org/packages/search?q=');
addSearchAlias('zig-api','zig-api', 'https://ziglang.org/documentation/master/std/#A;std?');
addSearchAlias('rust-lang','rust-lang', 'https://doc.rust-lang.org/rust-by-example/index.html?search=');
addSearchAlias('rust-forum','rust-forum', 'https://users.rust-lang.org/search?q=');
addSearchAlias('rustapi','rustapi', 'https://doc.rust-lang.org/std/index.html?search=');
addSearchAlias('crates','crates', 'https://crates.io/search?q=');
addSearchAlias('rustref','rustref', 'https://doc.rust-lang.org/reference/items/implementations.html?search=');
addSearchAlias('m','m', 'https://www.marktplaats.nl/q/');
addSearchAlias('rdoc','rdoc', 'https://docs.rs/releases/search?query=');
addSearchAlias('y' ,'y', 'https://www.youtube.com/results?search_query=');
addSearchAlias('d' ,'d', 'https://duckduckgo.com/?q=');
addSearchAlias('g' ,'g', 'https://www.google.nl/search?q=');
addSearchAlias('pdf' ,'pdf','https://welib.org/search?q=');
addSearchAlias('wa','wa', 'https://wiki.archlinux.org/?search=');
addSearchAlias('vpub','vpub', 'https://vdoc.pub/search/');
addSearchAlias('zlib' ,'zlib','https://1lib.sk/s/');
addSearchAlias('zlib2' ,'zlib','https://z-library.website/s/');
addSearchAlias('etynl' ,'etynl', 'https://etymologiebank.nl/trefwoord/');
addSearchAlias('etyen' ,'etyen', 'https://www.etymonline.com/word/');
addSearchAlias('lat' ,'lat', 'https://www.latin-is-simple.com/en/vocabulary/search/?q=');
addSearchAlias('dict' ,'dict', 'https://dictionary.cambridge.org/dictionary/english/');
addSearchAlias('wb' ,'wb', 'https://nl.wiktionary.org/wiki/');
addSearchAlias('hoogle' ,'hoogle', 'https://hoogle.haskell.org/?hoogle=');
addSearchAlias('elixir' ,'elixir', 'https://hexdocs.pm/elixir/search.html?q=');
addSearchAlias('hex' ,'hex', 'https://hex.pm/packages?search=&sort=recent_downloads');



//addSearchAlias('gh', 'github', 'https://github.com/search?q=', 's');
settings.theme = `
/* Edit these variables for easy theme making */
:root {
  /* Font */
  /* --font: 'Source Code Pro', Ubuntu, sans; */
  --font-size: 14px;
  --font-weight: bold;

  /* -------------- */
  /* --- THEMES --- */
  /* -------------- */

  /* -------------------- */
  /* -- Tomorrow Night -- */
  /* -------------------- */
  /* -- DELETE LINE TO ENABLE THEME
  --fg: #C5C8C6;
  --bg: #282A2E;
  --bg-dark: #1D1F21;
  --border: #373b41;
  --main-fg: #81A2BE;
  --accent-fg: #52C196;
  --info-fg: #AC7BBA;
  --select: #585858;
  -- DELETE LINE TO ENABLE THEME */

  /* Unused Alternate Colors */
  /* --cyan: #4CB3BC; */
  /* --orange: #DE935F; */
  /* --red: #CC6666; */
  /* --yellow: #CBCA77; */

  /* -------------------- */
  /* --      NORD      -- */
  /* -------------------- */
  
  --fg: #E5E9F0;
  --bg: #3B4252;
  --bg-dark: #2E3440;
  --border: #4C566A;
  --main-fg: #88C0D0;
  --accent-fg: #A3BE8C;
  --info-fg: #5E81AC;
  --select: #4C566A;
 

  /* Unused Alternate Colors */
  /* --orange: #D08770; */
  /* --red: #BF616A; */
  /* --yellow: #EBCB8B; */

  /* -------------------- */
  /* --    DOOM ONE    -- */
  /* -------------------- */
 /*
  --fg: #51AFEF;
  --bg: #2E3440;
  --bg-dark: #21242B;
  --border: #2257A0;
  --main-fg: #51AFEF;
  --accent-fg: #98be65;
  --info-fg: #C678DD;
  --select: #4C566A;
  */

  /* Unused Alternate Colors */
  /* --border-alt: #282C34; */
  /* --cyan: #46D9FF; */
  /* --orange: #DA8548; */
  /* --red: #FF6C6B; */
  /* --yellow: #ECBE7B; */

  /* -------------------- */
  /* --    MONOKAI    -- */
  /* -------------------- */
 /*
  --fg: #F8F8F2;
  --bg: #272822;
  --bg-dark: #1D1E19;
  --border: #2D2E2E;
  --main-fg: #F92660;
  --accent-fg: #E6DB74;
  --info-fg: #A6E22E;
  --select: #556172;
  */
  
  /* Unused Alternate Colors */
  /* --red: #E74C3C; */
  /* --orange: #FD971F; */
  /* --blue: #268BD2; */
  /* --violet: #9C91E4; */
  /* --cyan: #66D9EF; */
}

/* ---------- Generic ---------- */
.sk_theme {
background: var(--bg);
color: var(--fg);
  background-color: var(--bg);
  border-color: var(--border);
  font-family: var(--font);
  font-size: var(--font-size);
  font-weight: var(--font-weight);
}

input {
  font-family: var(--font);
  font-weight: var(--font-weight);
}

.sk_theme tbody {
  color: var(--fg);
}

.sk_theme input {
  color: var(--fg);
}

/* Hints */
#sk_hints .begin {
  color: var(--accent-fg) !important;
}

#sk_tabs .sk_tab {
  background: var(--bg-dark);
  border: 1px solid var(--border);
}

#sk_tabs .sk_tab_title {
  color: var(--fg);
}

#sk_tabs .sk_tab_url {
  color: var(--main-fg);
}

#sk_tabs .sk_tab_hint {
  background: var(--bg);
  border: 1px solid var(--border);
  color: var(--accent-fg);
}

.sk_theme #sk_frame {
  background: var(--bg);
  opacity: 0.2;
  color: var(--accent-fg);
}

/* ---------- Omnibar ---------- */
/* Uncomment this and use settings.omnibarPosition = 'bottom' for Pentadactyl/Tridactyl style bottom bar */
 .sk_theme#sk_omnibar {
  width: 100%;
  left: 0;
}

.sk_theme .title {
  color: var(--accent-fg);
}

.sk_theme .url {
  color: var(--main-fg);
}

.sk_theme .annotation {
  color: var(--accent-fg);
}

.sk_theme .omnibar_highlight {
  color: var(--accent-fg);
}

.sk_theme .omnibar_timestamp {
  color: var(--info-fg);
}
.sk_theme .omnibar_folder {
 color: var(--accent-fg);
}
.sk_theme .omnibar_visitcount {
  color: var(--accent-fg);
}

.sk_theme #sk_omnibarSearchResult ul li:nth-child(odd) {
  background: var(--bg-dark);
}

.sk_theme #sk_omnibarSearchResult ul li.focused {
  background: var(--border);
}

.sk_theme #sk_omnibarSearchArea {
  border-top-color: var(--border);
  border-bottom-color: var(--border);
}

.sk_theme #sk_omnibarSearchArea input,
.sk_theme #sk_omnibarSearchArea span {
  font-size: var(--font-size);
}

.sk_theme .separator {
  color: var(--accent-fg);
}

/* ---------- Popup Notification Banner ---------- */
#sk_banner {
  font-family: var(--font);
  font-size: var(--font-size);
  font-weight: var(--font-weight);
  background: var(--bg);
  border-color: var(--border);
  color: var(--fg);
  opacity: 0.9;
}

/* ---------- Popup Keys ---------- */
#sk_keystroke {
  background-color: var(--bg);
}

.sk_theme kbd .candidates {
  color: var(--info-fg);
}

.sk_theme span.annotation {
  color: var(--accent-fg);
}

/* ---------- Popup Translation Bubble ---------- */
#sk_bubble {
  background-color: var(--bg) !important;
  color: var(--fg) !important;
  border-color: var(--border) !important;
}

#sk_bubble * {
  color: var(--fg) !important;
}

#sk_bubble div.sk_arrow div:nth-of-type(1) {
  border-top-color: var(--border) !important;
  border-bottom-color: var(--border) !important;
}

#sk_bubble div.sk_arrow div:nth-of-type(2) {
  border-top-color: var(--bg) !important;
  border-bottom-color: var(--bg) !important;
}

/* ---------- Search ---------- */
#sk_status,
#sk_find {
  font-size: var(--font-size);
  border-color: var(--border);
}

.sk_theme kbd {
  background: var(--bg-dark);
  border-color: var(--border);
  box-shadow: none;
  color: var(--fg);
}

.sk_theme .feature_name span {
  color: var(--main-fg);
}

/* ---------- ACE Editor ---------- */
#sk_editor {
  background: var(--bg-dark) !important;
  height: 50% !important;
  /* Remove this to restore the default editor size */
}

.ace_dialog-bottom {
  border-top: 1px solid var(--bg) !important;
}

.ace-chrome .ace_print-margin,
.ace_gutter,
.ace_gutter-cell,
.ace_dialog {
  background: var(--bg) !important;
}

.ace-chrome {
  color: var(--fg) !important;
}

.ace_gutter,
.ace_dialog {
  color: var(--fg) !important;
}

.ace_cursor {
  color: var(--fg) !important;
}

.normal-mode .ace_cursor {
  background-color: var(--fg) !important;
  border: var(--fg) !important;
  opacity: 0.7 !important;
}

.ace_marker-layer .ace_selection {
  background: var(--select) !important;
}

.ace_editor,
.ace_dialog span,
.ace_dialog input {
  font-family: var(--font);
  font-size: var(--font-size);
  font-weight: var(--font-weight);
}
`;
