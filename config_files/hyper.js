module.exports = {
  config: {
    fontSize: 12,
    fontFamily: '"Hack Nerd Font", Menlo, "DejaVu Sans Mono", "Lucida Console", monospace',

    cursorColor: '#888888',
    cursorShape: 'BEAM',
    cursorBlink: true,
    webGLRenderer: false,

    foregroundColor: '#fff',
    backgroundColor: '#000436',
    borderColor: '#333',

    css: '',
    showHamburgerMenu: '',
    showWindowControls: '',
    padding: '12px 14px',

    colors: {
      black: '#000000',
      red: '#888888',
      green: '#6be08d',
      yellow: '#ffff00',
      blue:  '#a972ff',
      magenta: '#03fbca',
      cyan: '#76d6ff',
      white: '#d0d0d0',
      lightBlack: '#808080',
      lightRed: '#ff2f92',
      lightGreen: '#6be08d',
      lightYellow: '#ffff00',
      lightBlue: '#8AA8D9',
      lightMagenta: '#888888',
      lightCyan: '#8ae4f5',
      lightWhite: '#ffffff'
    },

    shell: '/bin/zsh',
    shellArgs: ['--login'],
    env: {},
    bell: 'SOUND',
    copyOnSelect: false
  },
  plugins: [
    "hyperlinks",
    "hyper-search",
    "hyper-startup",
    "hyperminimal",
    "hyper-font-ligatures"
  ],
  localPlugins: []
};
