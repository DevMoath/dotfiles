// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

module.exports = {
    config: {
        // choose either `'stable'` for receiving highly polished,
        // or `'canary'` for less polished but more frequent updates
        updateChannel: 'stable',

        // default font size in pixels for all tabs
        fontSize: 18,

        // font family with optional fallbacks
        fontFamily: 'Menlo, \'DejaVu Sans Mono\', Consolas, \'Lucida Console\', monospace',

        // default font weight: 'normal' or 'bold'
        fontWeight: 'normal',

        // font weight for bold characters: 'normal' or 'bold'
        fontWeightBold: 'bold',

        // line height as a relative unit
        lineHeight: 1.5,

        // letter spacing as a relative unit
        letterSpacing: 0,

        // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
        cursorColor: 'rgba(248,28,229,0.8)',

        // terminal text color under BLOCK cursor
        cursorAccentColor: '#000000',

        // `'BEAM'` for |, `'UNDERLINE'` for _, `'BLOCK'` for █
        cursorShape: 'BLOCK',

        // set to `true` (without backticks and without quotes) for blinking cursor
        cursorBlink: true,

        // color of the text
        foregroundColor: '#ffffff',

        // terminal background color
        // opacity is only supported on macOS
        backgroundColor: '#000000',

        // terminal selection color
        selectionColor: 'rgba(248,28,229,0.3)',

        // border color (window, tabs)
        borderColor: '#333333',

        // custom CSS to embed in the main window
        css: '',

        // custom CSS to embed in the terminal window
        termCSS: '',

        // if you're using a Linux setup which show native menus, set to false
        // default: `true` on Linux, `true` on Windows, ignored on macOS
        showHamburgerMenu: '',

        // set to `false` (without backticks and without quotes) if you want to hide the minimize, maximize and close
        // buttons additionally, set to `'left'` if you want them on the left, like in Ubuntu default: `true` (without
        // backticks and without quotes) on Windows and Linux, ignored on macOS
        showWindowControls: '',

        // custom padding (CSS format, i.e.: `top right bottom left`)
        padding: '12px 14px',

        // the full list. if you're going to provide the full color palette,
        // including the 6 x 6 color cubes and the grayscale map, just provide
        // an array here instead of a color map object
        colors: {
            black: '#000000',
            red: '#c51e14',
            green: '#1dc121',
            yellow: '#c7c329',
            blue: '#0a2fc4',
            magenta: '#c839c5',
            cyan: '#20c5c6',
            white: '#c7c7c7',
            lightBlack: '#686868',
            lightRed: '#fd6f6b',
            lightGreen: '#67f86f',
            lightYellow: '#fffa72',
            lightBlue: '#6a76fb',
            lightMagenta: '#fd7cfc',
            lightCyan: '#68fdfe',
            lightWhite: '#ffffff'
        },

        // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
        // if left empty, your system's login shell will be used by default
        //
        // Windows
        // - Make sure to use a full path if the binary name doesn't work
        // - Remove `--login` in shellArgs
        //
        // Bash on Windows
        // - Example: `C:\\Windows\\System32\\bash.exe`
        //
        // PowerShell on Windows
        // - Example: `C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\powershell.exe`
        shell: '',

        // for setting shell arguments (i.e. for using interactive shellArgs: `['-i']`)
        // by default `['--login']` will be used
        shellArgs: ['--login'],

        // for environment variables
        env: {},

        // The number of rows to be persisted in terminal buffer for scrolling
        scrollback: 20000,

        // set to `false` for no bell
        bell: 'SOUND',

        // if `true` (without backticks and without quotes), selected text will automatically be copied to the clipboard
        copyOnSelect: false,

        // if `true` (without backticks and without quotes), hyper will be set as the default protocol client for SSH
        defaultSSHApp: true,

        // if `true` (without backticks and without quotes), on right click selected text will be copied or pasted if no
        // selection is present (`true` by default on Windows and disables the context menu feature)
        quickEdit: false,

        // choose either `'vertical'`, if you want the column mode when Option key is hold during selection (Default)
        // or `'force'`, if you want to force selection regardless of whether the terminal is in mouse events mode
        // (inside tmux or vim with mouse mode enabled for example).
        macOptionSelectionMode: 'vertical',

        // URL to custom bell
        // bellSoundURL: 'http://example.com/bell.mp3',

        // Whether to use the WebGL renderer. Set it to false to use canvas-based
        // rendering (slower, but supports transparent backgrounds)
        webGLRenderer: true,

        // for advanced config flags please refer to https://hyper.is/#cfg

        hypercwd: {
            initialWorkingDirectory: '~'
        },

        hyperTabs: {
            trafficButtons: true,
            tabIconsColored: true
        },

        hypest: {
            darkmode: true,
            vibrancy: false,
            borders: false,
            hideControls: true,
            // Default is 'blue'
            // Use one of 'black', 'red', 'green', 'yellow', 'blue', 'magenta', 'cyan' or 'white'
            accentColor: 'white'
            // Supported  colors are 'black', 'red', 'green', 'yellow', 'blue', 'magenta', 'cyan' and 'white'
            // Custom colors must be specified as 6 character hexadecimals
            /*colors: {
             blue: '#0067FF'
             }*/
        },

        paneNavigation: {
            debug: false,
            hotkeys: {
                navigation: {
                    up: 'ctrl+alt+up',
                    down: 'ctrl+alt+down',
                    left: 'ctrl+alt+left',
                    right: 'ctrl+alt+right'
                },
                jump_prefix: 'ctrl+alt', // completed with 1-9 digits
                permutation_modifier: 'shift', // Added to jump and navigation hotkeys for pane permutation
                maximize: 'meta+enter'
            },
            showIndicators: true, // Show pane number
            indicatorPrefix: '^⌥', // Will be completed with pane number
            indicatorStyle: { // Added to indicator <div>
                position: 'absolute',
                top: 0,
                left: 0,
                fontSize: '10px'
            },
            focusOnMouseHover: false,
            inactivePaneOpacity: 0.6 // Set to 1 to disable inactive panes dimming
        }
    },

    // a list of plugins to fetch and install from npm
    // format: [@org/]project[#version]
    // examples:
    //   `hyperpower`
    //   `@company/project`
    //   `project#1.0.1`
    plugins: [
        'hyper-search',
        'hypercwd',
        'hyper-pane',
        'hyper-hypest',
        'hyper-statusline',
        'hyper-tab-icons',
        'hyper-highlight-active-pane',
        'hyper-fading-scrollbar',
        'hyper-savetext'
    ],

    // in development, you can create a directory under
    // `~/.hyper_plugins/local/` and include it here
    // to load it and avoid it being `npm install`ed
    localPlugins: [],

    keymaps: {
        // Example
        // 'window:devtools': 'cmd+alt+o',
    }
}
