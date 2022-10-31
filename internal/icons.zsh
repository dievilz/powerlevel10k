typeset -gA icons

function _p9k_init_icons() {
  [[ -n ${POWERLEVEL9K_MODE-} || ${langinfo[CODESET]} == (utf|UTF)(-|)8 ]] || local POWERLEVEL9K_MODE=ascii
  [[ $_p9k__icon_mode == $POWERLEVEL9K_MODE/$POWERLEVEL9K_LEGACY_ICON_SPACING/$POWERLEVEL9K_ICON_PADDING ]] && return
  typeset -g _p9k__icon_mode=$POWERLEVEL9K_MODE/$POWERLEVEL9K_LEGACY_ICON_SPACING/$POWERLEVEL9K_ICON_PADDING

  if [[ $POWERLEVEL9K_LEGACY_ICON_SPACING == true ]]; then
    local s=
  else
    local s=' '
  fi

  case $POWERLEVEL9K_MODE in
    'nerdfont-complete'|'nerdfont-fontconfig')
      # nerd-font patched (complete) font required! See:
      # https://github.com/ryanoasis/nerd-fonts
      # http://nerdfonts.com/#cheat-sheet
      icons=(
        ARCH_ICON                       '\uE266'               # 
        ANDROID_ICON                    '\uF17B'               # 
        APPLE_ICON                      '\uF179'               # 
        AWS_EB_ICON                     '\uF1BD'               # 
        AWS_ICON                        '\uF270'               # 
        AZURE_ICON                      '\uFD03'               # ﴃ
        BACKGROUND_JOBS_ICON            '\uF013'               # 
        BATTERY_ICON                    '\uF240'               # 
        CARRIAGE_RETURN_ICON            '\u21B5'               # ↵
        DATE_ICON                       '\uF073'               # 
        DIRENV_ICON                     '\u25BC'               # ▼
        DISK_ICON                       '\uF0A0'               # 
        DOTNET_CORE_ICON                '\uE77F'               # 
        DOTNET_ICON                     '\uE77F'               # 
        DROPBOX_ICON                    '\uF16B'               # 
        ELIXIR_ICON                     '\uE62D'               # 
        ERLANG_ICON                     '\uE7B1'               # 
        ETC_ICON                        '\uF085'               # 
        EXECUTION_TIME_ICON             '\uF252'               # 
        FAIL_ICON                       '\uF00D'               # 
        FLUTTER_ICON                    '\uF10B'               # 
        FOLDER_ICON                     '\uF115'               # 
        FOLDER2_ICON                    '\uF114'               # 
        FREEBSD_ICON                    '\uF30C'               # 
        GCLOUD_ICON                     '\uF7B7'               # 
        GO_ICON                         '\uE626'               # 
        GOLANG_ICON                     '\uE626'               # 
        HASKELL_ICON                    '\uE61F'               # 
        HOME_ICON                       '\uF015'               # 
        HOME_SUB_ICON                   '\uF07C'               # 
        HOME_SUB2_ICON                  '\uF07B'               # 
        HOST_ICON                       '\uF109'               # 
        JAVA_ICON                       '\uE738'               # 
        JULIA_ICON                      '\uE624'               # 
        KUBERNETES_ICON                 '\u2388'               # ⎈
        LARAVEL_ICON                    '\uE73F'               # 
        LEFT_SEGMENT_END_SEPARATOR      ' '                    # Whitespace
        LEFT_SEGMENT_SEPARATOR          '\uE0B0'               # 
        LEFT_SUBSEGMENT_SEPARATOR       '\uE0B1'               # 
        LOAD_ICON                       '\uF080'               # 
        LOCK_ICON                       '\uF023'               # 
        LUA_ICON                        '\uE620'               # 
        MIDNIGHT_COMMANDER_ICON         '\uF489'               # 
        MULTILINE_FIRST_PROMPT_PREFIX   '\u256D\U2500'         # ╭─
        MULTILINE_NEWLINE_PROMPT_PREFIX '\u251C\U2500'         # ├─
        MULTILINE_LAST_PROMPT_PREFIX    '\u2570\U2500'         # ╰─
        NETWORK_ICON                    '\uF50D'               # 
        NIX_SHELL_ICON                  '\uF313'               # 
        NNN_ICON                        '\uF489'               # 
        NODEJS_ICON                     '\uE617'               # 
        NODE_ICON                       '\uE617'               # 
        NORDVPN_ICON                    '\uF023'               # 
        OK_ICON                         '\uF00C'               # 
        PACKAGE_ICON                    '\uF8D6'               # 
        PERL_ICON                       '\uE769'               # 
        PHP_ICON                        '\uE608'               # 
        POSTGRES_ICON                   '\uE76E'               # 
        PROXY_ICON                      '\u2194'               # ↔
        PUBLIC_IP_ICON                  '\uF0AC'               # 
        PYTHON_ICON                     '\uE73C'               # 
        RAM_ICON                        '\uF0E4'               # 
        RANGER_ICON                     '\uF00b'               # 
        RIGHT_SEGMENT_SEPARATOR         '\uE0B2'               # 
        RIGHT_SUBSEGMENT_SEPARATOR      '\uE0B3'               # 
        ROOT_ICON                       '\uF292'               #  F292 E614 ⚡26A1
        RUBY_ICON                       '\uF219'               # 
        RULER_CHAR                      '\u2500'               # ─
        RUST_ICON                       '\uE7A8'               # 
        SCALA_ICON                      '\uE737'               # 
        SERVER_ICON                     '\uF0AE'               # 
        SSH_ICON                        '\uF489'               # 
        SUDO_ICON                       '\uF09C'               # 
        SUDO2_ICON                      '\uF13E'               # 
        SUNOS_ICON                      '\uF185'               # 
        SWAP_ICON                       '\uF464'               # 
        SWIFT_ICON                      '\uE755'               # 
        SYMFONY_ICON                    '\uE757'               # 
        TASKWARRIOR_ICON                '\uF4A0'               # 
        TERRAFORM_ICON                  '\uF1BB'               # 
        TEST_ICON                       '\uF188'               # 
        TIME_ICON                       '\uF017'               # 
        TIMEWARRIOR_ICON                '\uF49B'               # 
        TODO_ICON                       '\u2611'               # ☑
        TOOLBOX_ICON                    '\uE20F'               # 
        VCS_BOOKMARK_ICON               '\uF461'               # 
        VCS_BRANCH_ICON                 '\uF126'               # 
        VCS_COMMIT_ICON                 '\uE729'               # 
        VCS_GIT_BITBUCKET_ICON          ' \uE703'              # 
        VCS_GIT_GITHUB_ICON             ' \uF113'              # 
        VCS_GIT_GITLAB_ICON             ' \uF296'              # 
        VCS_GIT_ICON                    ' \uF1D3'              # 
        VCS_HG_ICON                     ' \uF0C3'              # 
        VCS_INCOMING_CHANGES_ICON       '\uF01A'               # 
        VCS_LOADING_ICON                ''
        VCS_OUTGOING_CHANGES_ICON       '\uF01B'               # 
        VCS_REMOTE_BRANCH_ICON          '\uE728'               # 
        VCS_STAGED_ICON                 '\uF055'               # 
        VCS_STASH_ICON                  '\uF01C'               # 
        VCS_SVN_ICON                    ' \uE72D'              # 
        VCS_TAG_ICON                    '\uF02B'               # 
        VCS_UNSTAGED_ICON               '\uF06A'               # 
        VCS_UNTRACKED_ICON              '\uF059'               # 
        VIM_ICON                        '\uE62B'               # 
        VPN_ICON                        '\uF023'               # 
        WIFI_ICON                       '\uF1EB'               # 
        WINDOWS_ICON                    '\uF17A'               # 
        XPLR_ICON                       '\uF489'               # 
        LINUX_ALPINE_ICON               '\uF300'               # 
        LINUX_AMZN_ICON                 '\uF270'               # 
        LINUX_AOSC_ICON                 '\uF301'               # 
        LINUX_ARCH_ICON                 '\uF303'               # 
        LINUX_ARTIX_ICON                '\uF17C'               # 
        LINUX_CENTOS_ICON               '\uF304'               # 
        LINUX_COREOS_ICON               '\uF305'               # 
        LINUX_DEBIAN_ICON               '\uF306'               # 
        LINUX_DEVUAN_ICON               '\uF307'               # 
        LINUX_ELEMENTARY_ICON           '\uF309'               # 
        LINUX_FEDORA_ICON               '\uF30a'               # 
        LINUX_GENTOO_ICON               '\uF30d'               # 
        LINUX_ICON                      '\uF17C'               # 
        LINUX_MAGEIA_ICON               '\uF310'               # 
        LINUX_MANJARO_ICON              '\uF312'               # 
        LINUX_MINT_ICON                 '\uF30e'               # 
        LINUX_NIXOS_ICON                '\uF313'               # 
        LINUX_OPENSUSE_ICON             '\uF314'               # 
        LINUX_RASPBIAN_ICON             '\uF315'               # 
        LINUX_RHEL_ICON                 '\uF316'               # 
        LINUX_SABAYON_ICON              '\uF317'               # 
        LINUX_SLACKWARE_ICON            '\uF319'               # 
        LINUX_UBUNTU_ICON               '\uF31b'               # 
        LINUX_VOID_ICON                 '\uF17C'               # 
      )
    ;;
    ascii)
      icons=(
        ANDROID_ICON                   'android'
        APPLE_ICON                     'mac'
        ARCH_ICON                      'arch'
        AWS_EB_ICON                    'eb'
        AWS_ICON                       'aws'
        AZURE_ICON                     'az'
        BACKGROUND_JOBS_ICON           '%%'
        BATTERY_ICON                   'battery'
        CARRIAGE_RETURN_ICON           ''
        DATE_ICON                      ''
        DIRENV_ICON                    'direnv'
        DISK_ICON                      'disk'
        DOTNET_CORE_ICON               '.net'
        DOTNET_ICON                    '.net'
        DROPBOX_ICON                   'dropbox'
        ELIXIR_ICON                    'elixir'
        ERLANG_ICON                    'erlang'
        ETC_ICON                       ''
        EXECUTION_TIME_ICON            ''
        FAIL_ICON                      'err'
        FLUTTER_ICON                   'flutter'
        FOLDER_ICON                    ''
        FOLDER2_ICON                   ''
        FREEBSD_ICON                   'bsd'
        GCLOUD_ICON                    'gcloud'
        GO_ICON                        'go'
        GOLANG_ICON                    'go'
        HASKELL_ICON                   'hs'
        HOME_ICON                      ''
        HOME_SUB_ICON                  ''
        HOME_SUB2_ICON                 ''
        HOST_ICON                      '\uF109'               # 
        JAVA_ICON                      'java'
        JULIA_ICON                     'jl'
        KUBERNETES_ICON                'kube'
        LARAVEL_ICON                   ''
        LEFT_SEGMENT_END_SEPARATOR     ' '
        LEFT_SEGMENT_SEPARATOR         ''
        LEFT_SUBSEGMENT_SEPARATOR      '|'
        LINUX_ALPINE_ICON              'alpine'
        LINUX_AMZN_ICON                'amzn'
        LINUX_AOSC_ICON                'aosc'
        LINUX_ARCH_ICON                'arch'
        LINUX_ARTIX_ICON               'artix'
        LINUX_CENTOS_ICON              'centos'
        LINUX_COREOS_ICON              'coreos'
        LINUX_DEBIAN_ICON              'debian'
        LINUX_DEVUAN_ICON              'devuan'
        LINUX_ELEMENTARY_ICON          'elementary'
        LINUX_FEDORA_ICON              'fedora'
        LINUX_GENTOO_ICON              'gentoo'
        LINUX_ICON                     'linux'
        LINUX_MAGEIA_ICON              'mageia'
        LINUX_MANJARO_ICON             'manjaro'
        LINUX_MINT_ICON                'mint'
        LINUX_NIXOS_ICON               'nixos'
        LINUX_OPENSUSE_ICON            'suse'
        LINUX_RASPBIAN_ICON            'pi'
        LINUX_RHEL_ICON                'rhel'
        LINUX_SABAYON_ICON             'sabayon'
        LINUX_SLACKWARE_ICON           'slack'
        LINUX_UBUNTU_ICON              'ubuntu'
        LINUX_VOID_ICON                'void'
        LOAD_ICON                      'cpu'
        LOCK_ICON                      '!w'
        LUA_ICON                       'lua'
        MIDNIGHT_COMMANDER_ICON        'mc'
        MULTILINE_FIRST_PROMPT_PREFIX  ''
        MULTILINE_LAST_PROMPT_PREFIX   ''
        MULTILINE_NEWLINE_PROMPT_PREFIX ''
        NETWORK_ICON                   'ip'
        NIX_SHELL_ICON                 'nix'
        NNN_ICON                       'nnn'
        NODE_ICON                      'node'
        NODEJS_ICON                    'node'
        NORDVPN_ICON                   'nordvpn'
        OK_ICON                        'ok'
        PACKAGE_ICON                   'pkg'
        PERL_ICON                      'perl'
        PHP_ICON                       'php'
        POSTGRES_ICON                  'postgres'
        PROXY_ICON                     'proxy'
        PUBLIC_IP_ICON                 'ip'
        PYTHON_ICON                    'py'
        RAM_ICON                       'ram'
        RANGER_ICON                    'ranger'
        RIGHT_SEGMENT_SEPARATOR        ''
        RIGHT_SUBSEGMENT_SEPARATOR     '|'
        ROOT_ICON                      '#'
        RUBY_ICON                      'rb'
        RULER_CHAR                     '-'
        RUST_ICON                      'rust'
        SCALA_ICON                     'scala'
        SERVER_ICON                    ''
        SSH_ICON                       'ssh'
        SUDO_ICON                      ''
        SUDO2_ICON                     ''
        SUNOS_ICON                     'sunos'
        SWAP_ICON                      'swap'
        SWIFT_ICON                     'swift'
        SYMFONY_ICON                   'symphony'
        TASKWARRIOR_ICON               'task'
        TERRAFORM_ICON                 'tf'
        TEST_ICON                      ''
        TIME_ICON                      ''
        TIMEWARRIOR_ICON               'tw'
        TODO_ICON                      'todo'
        TOOLBOX_ICON                   'toolbox'
        VCS_BOOKMARK_ICON              '^'
        VCS_BRANCH_ICON                ''
        VCS_COMMIT_ICON                '@'
        VCS_GIT_BITBUCKET_ICON         'bb'
        VCS_GIT_GITHUB_ICON            'gh'
        VCS_GIT_GITLAB_ICON            'gl'
        VCS_GIT_ICON                   'git'
        VCS_HG_ICON                    'hg'
        VCS_INCOMING_CHANGES_ICON      '<'
        VCS_LOADING_ICON               ''
        VCS_OUTGOING_CHANGES_ICON      '>'
        VCS_REMOTE_BRANCH_ICON         ':'
        VCS_STAGED_ICON                '+'
        VCS_STASH_ICON                 '#'
        VCS_SVN_ICON                   'svn'
        VCS_TAG_ICON                   ''
        VCS_UNSTAGED_ICON              '!'
        VCS_UNTRACKED_ICON             '?'
        VIM_ICON                       'vim'
        VPN_ICON                       'vpn'
        WIFI_ICON                      'wifi'
        WINDOWS_ICON                   'win'
        XPLR_ICON                      'xplr'
      )
    ;;
    *)
      # Powerline-Patched Font required!
      # See https://github.com/Lokaltog/powerline-fonts
      icons=(
        ANDROID_ICON                    'And'
        APPLE_ICON                      'OSX'
        ARCH_ICON                       'arch'
        AWS_EB_ICON                     '\U1F331'$q            # 🌱
        AWS_ICON                        'AWS'
        AZURE_ICON                      '\u2601'               # ☁
        BACKGROUND_JOBS_ICON            '\u2699'               # ⚙
        BATTERY_ICON                    '\u1F50B'              # 🔋
        CARRIAGE_RETURN_ICON            '\u21B5'               # ↵
        DATE_ICON                       ''
        DIRENV_ICON                     '\u25BC'               # ▼
        DISK_ICON                       'hdd'
        DOTNET_CORE_ICON                '.NET'
        DOTNET_ICON                     '.NET'
        DROPBOX_ICON                    'Dropbox'
        ELIXIR_ICON                     'elixir'
        ERLANG_ICON                     'erl'
        ETC_ICON                        '\u2699'               # ⚙
        EXECUTION_TIME_ICON             ''
        FAIL_ICON                       '\u2718'               # ✘
        FLUTTER_ICON                    'F'
        FOLDER_ICON                     ''
        FOLDER2_ICON                    ''
        FREEBSD_ICON                    'BSD'
        GCLOUD_ICON                     'G'
        GO_ICON                         'Go'
        GOLANG_ICON                     'Go'
        HASKELL_ICON                    'hs'
        HOME_ICON                       ''
        HOME_SUB_ICON                   ''
        HOME_SUB2_ICON                  ''
        HOST_ICON                       '\uF109'               # 
        JAVA_ICON                       '\u2615'               # ☕︎
        JULIA_ICON                      'jl'
        KUBERNETES_ICON                 '\u2388'               # ⎈
        LARAVEL_ICON                    ''
        LEFT_SEGMENT_END_SEPARATOR      ' '                    # Whitespace
        LEFT_SEGMENT_SEPARATOR          '\uE0B0'               # 
        LEFT_SUBSEGMENT_SEPARATOR       '\uE0B1'               # 
        LINUX_ALPINE_ICON               'Alp'
        LINUX_AMZN_ICON                 'Amzn'
        LINUX_AOSC_ICON                 'Aos'
        LINUX_ARCH_ICON                 'Arc'
        LINUX_ARTIX_ICON                'Art'
        LINUX_CENTOS_ICON               'Cen'
        LINUX_COREOS_ICON               'Cor'
        LINUX_DEBIAN_ICON               'Deb'
        LINUX_DEVUAN_ICON               'Dev'
        LINUX_ELEMENTARY_ICON           'Elm'
        LINUX_FEDORA_ICON               'Fed'
        LINUX_GENTOO_ICON               'Gen'
        LINUX_ICON                      'Lx'
        LINUX_MAGEIA_ICON               'Mag'
        LINUX_MANJARO_ICON              'Man'
        LINUX_MINT_ICON                 'LMi'
        LINUX_NIXOS_ICON                'Nix'
        LINUX_OPENSUSE_ICON             'OSu'
        LINUX_RASPBIAN_ICON             'RPi'
        LINUX_RHEL_ICON                 'RH'
        LINUX_SABAYON_ICON              'Sab'
        LINUX_SLACKWARE_ICON            'Sla'
        LINUX_UBUNTU_ICON               'Ubu'
        LINUX_VOID_ICON                 'Vo'
        LOAD_ICON                       'L'
        LOCK_ICON                       '\uE0A2'
        LUA_ICON                        'lua'
        MIDNIGHT_COMMANDER_ICON         'mc'
        MULTILINE_FIRST_PROMPT_PREFIX   '\u256D\U2500'         # ╭─
        MULTILINE_NEWLINE_PROMPT_PREFIX '\u251C\U2500'        # ├─
        MULTILINE_LAST_PROMPT_PREFIX    '\u2570\U2500 '        # ╰─
        NETWORK_ICON                    'IP'
        NIX_SHELL_ICON                  'nix'
        NNN_ICON                        'nnn'
        NODE_ICON                       'Node'
        NODEJS_ICON                     'Node'
        NORDVPN_ICON                    '\uE0A2'
        OK_ICON                         '\u2714'               # ✔
        PACKAGE_ICON                    'pkg'
        PERL_ICON                       'perl'
        PHP_ICON                        'php'
        POSTGRES_ICON                   'postgres'
        PROXY_ICON                      '\u2194'               # ↔
        PUBLIC_IP_ICON                  'IP'
        PYTHON_ICON                     'Py'
        RAM_ICON                        'RAM'
        RANGER_ICON                     '\u2B50'               # ⭐
        RIGHT_SEGMENT_SEPARATOR         '\uE0B2'               # 
        RIGHT_SUBSEGMENT_SEPARATOR      '\uE0B3'               # 
        ROOT_ICON                       '\u26A1'               # ⚡
        RUBY_ICON                       'Ruby'
        RULER_CHAR                      '\u2500'               # ─
        RUST_ICON                       'R'
        SCALA_ICON                      'scala'
        SERVER_ICON                     ''
        SSH_ICON                        'ssh'
        SUDO_ICON                       ''
        SUDO2_ICON                       ''
        SUNOS_ICON                      'Sun'
        SWAP_ICON                       'SWP'
        SWIFT_ICON                      'Swift'
        SYMFONY_ICON                    'SF'
        TASKWARRIOR_ICON                'task'
        TERRAFORM_ICON                  'tf'
        TEST_ICON                       ''
        TIME_ICON                       ''
        TIMEWARRIOR_ICON                'tw'
        TODO_ICON                       '\u2206'               # ∆
        TOOLBOX_ICON                    '\u2B22'               # ⬢
        VCS_BOOKMARK_ICON               '\u263F'               # ☿
        VCS_BRANCH_ICON                 '\uE0A0 '              # 
        VCS_COMMIT_ICON                 ''
        VCS_GIT_BITBUCKET_ICON          'bb'
        VCS_GIT_GITHUB_ICON             'gh'
        VCS_GIT_GITLAB_ICON             'gl'
        VCS_GIT_ICON                    'git'
        VCS_HG_ICON                     'hg'
        VCS_INCOMING_CHANGES_ICON       '\u2193'               # ↓
        VCS_LOADING_ICON                ''
        VCS_OUTGOING_CHANGES_ICON       '\u2191'               # ↑
        VCS_REMOTE_BRANCH_ICON          '\u2192'               # →
        VCS_STAGED_ICON                 '\u271A'               # ✚
        VCS_STASH_ICON                  '\u235F'               # ⍟
        VCS_SVN_ICON                    'svn'
        VCS_TAG_ICON                    ''
        VCS_UNSTAGED_ICON               '\u25CF'               # ●
        VCS_UNTRACKED_ICON              '?'
        VIM_ICON                        'vim'
        VPN_ICON                        'vpn'
        WIFI_ICON                       'WiFi'
        WINDOWS_ICON                    'WIN'
        XPLR_ICON                       'xplr'
      )
    ;;
  esac

  # Override the above icon settings with any user-defined variables.
  case $POWERLEVEL9K_MODE in
    'flat')
      icons[LEFT_SEGMENT_SEPARATOR]=''
      icons[RIGHT_SEGMENT_SEPARATOR]=''
      icons[LEFT_SUBSEGMENT_SEPARATOR]='|'
      icons[RIGHT_SUBSEGMENT_SEPARATOR]='|'
    ;;
    'compatible')
      icons[LEFT_SEGMENT_SEPARATOR]='\u2B80'                  # ⮀
      icons[RIGHT_SEGMENT_SEPARATOR]='\u2B82'                 # ⮂
      icons[VCS_BRANCH_ICON]='@'
    ;;
  esac

  if [[ $POWERLEVEL9K_ICON_PADDING == none && $POWERLEVEL9K_MODE != ascii ]]; then
    icons=("${(@kv)icons%% #}")
    icons[LEFT_SEGMENT_END_SEPARATOR]+=' '
    icons[MULTILINE_LAST_PROMPT_PREFIX]+=' '
    icons[VCS_TAG_ICON]+=' '
    icons[VCS_BOOKMARK_ICON]+=' '
    icons[VCS_COMMIT_ICON]+=' '
    icons[VCS_BRANCH_ICON]+=' '
    icons[VCS_REMOTE_BRANCH_ICON]+=' '
  fi
}

# Sadly, this is a part of public API. Its use is emphatically discouraged.
function print_icon() {
  eval "$__p9k_intro"
  _p9k_init_icons
  local var=POWERLEVEL9K_$1
  if (( $+parameters[$var] )); then
    echo -n - ${(P)var}
  else
    echo -n - $icons[$1]
  fi
}

# Prints a list of configured icons.
#
#   * $1 string - If "original", then the original icons are printed,
#                 otherwise "print_icon" is used, which takes the users
#                 overrides into account.
function get_icon_names() {
  eval "$__p9k_intro"
  _p9k_init_icons
  local key
  for key in ${(@kon)icons}; do
    echo -n - "POWERLEVEL9K_$key: "
    print -nP "%K{red} %k"
    if [[ $1 == original ]]; then
      echo -n - $icons[$key]
    else
      print_icon $key
    fi
    print -P "%K{red} %k"
  done
}
