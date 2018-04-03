#
# Spaceship ZSH Theme
#
# Author: Denys Dovhan, denysdovhan.com
# License: MIT
# https://github.com/denysdovhan/spaceship-zsh-theme

# ------------------------------------------------------------------------------
# CONFIGURATION
# The default configuration that can be overridden in .zshrc
# ------------------------------------------------------------------------------

NEWLINE='
'

# ORDER
if [ ! -n "$SPACESHIP_PROMPT_ORDER" ]; then
  SPACESHIP_PROMPT_ORDER=(
    time
    user
    host
    dir
    git
    hg
    venv
    conda
    pyenv
    exec_time
    line_sep
    jobs
    exit_code
    char
  )
fi

# PROMPT
SPACESHIP_PROMPT_SYMBOL="${SPACESHIP_PROMPT_SYMBOL:="➜"}"
SPACESHIP_PROMPT_ADD_NEWLINE="${SPACESHIP_PROMPT_ADD_NEWLINE:=true}"
SPACESHIP_PROMPT_SEPARATE_LINE="${SPACESHIP_PROMPT_SEPARATE_LINE:=true}"
SPACESHIP_PROMPT_PREFIXES_SHOW="${SPACESHIP_PROMPT_PREFIXES_SHOW:=true}"
SPACESHIP_PROMPT_SUFFIXES_SHOW="${SPACESHIP_PROMPT_SUFFIXES_SHOW:=true}"
SPACESHIP_PROMPT_DEFAULT_PREFIX="${SPACESHIP_PROMPT_DEFAULT_PREFIX:="via "}"
SPACESHIP_PROMPT_DEFAULT_SUFFIX="${SPACESHIP_PROMPT_DEFAULT_SUFFIX:=" "}"

# TIME
SPACESHIP_TIME_SHOW="${SPACESHIP_TIME_SHOW:=false}"
SPACESHIP_TIME_PREFIX="${SPACESHIP_TIME_PREFIX:="at "}"
SPACESHIP_TIME_SUFFIX="${SPACESHIP_TIME_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_TIME_FORMAT="${SPACESHIP_TIME_FORMAT:=false}"
SPACESHIP_TIME_12HR="${SPACESHIP_TIME_12HR:=false}"
SPACESHIP_TIME_COLOR="${SPACESHIP_TIME_COLOR:="yellow"}"

# USER
SPACESHIP_USER_SHOW="${SPACESHIP_USER_SHOW:=true}"
SPACESHIP_USER_PREFIX="${SPACESHIP_USER_PREFIX:="with "}"
SPACESHIP_USER_SUFFIX="${SPACESHIP_USER_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_USER_COLOR="${SPACESHIP_USER_COLOR:="yellow"}"
SPACESHIP_USER_COLOR_ROOT="${SPACESHIP_USER_COLOR_ROOT:="red"}"

# HOST
SPACESHIP_HOST_SHOW="${SPACESHIP_HOST_SHOW:=true}"
SPACESHIP_HOST_PREFIX="${SPACESHIP_HOST_PREFIX:="at "}"
SPACESHIP_HOST_SUFFIX="${SPACESHIP_HOST_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_HOST_COLOR="${SPACESHIP_HOST_COLOR:="green"}"

# DIR
SPACESHIP_DIR_SHOW="${SPACESHIP_DIR_SHOW:=true}"
SPACESHIP_DIR_PREFIX="${SPACESHIP_DIR_PREFIX:="in "}"
SPACESHIP_DIR_SUFFIX="${SPACESHIP_DIR_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_DIR_TRUNC="${SPACESHIP_DIR_TRUNC:=3}"
SPACESHIP_DIR_COLOR="${SPACESHIP_DIR_COLOR:="cyan"}"

# GIT
SPACESHIP_GIT_SHOW="${SPACESHIP_GIT_SHOW:=true}"
SPACESHIP_GIT_PREFIX="${SPACESHIP_GIT_PREFIX:="on "}"
SPACESHIP_GIT_SUFFIX="${SPACESHIP_GIT_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_GIT_SYMBOL="${SPACESHIP_GIT_SYMBOL:=" "}"
# GIT BRANCH
SPACESHIP_GIT_BRANCH_SHOW="${SPACESHIP_GIT_BRANCH_SHOW:=true}"
SPACESHIP_GIT_BRANCH_PREFIX="${SPACESHIP_GIT_BRANCH_PREFIX:="$SPACESHIP_GIT_SYMBOL"}"
SPACESHIP_GIT_BRANCH_SUFFIX="${SPACESHIP_GIT_BRANCH_SUFFIX:=""}"
SPACESHIP_GIT_BRANCH_COLOR="${SPACESHIP_GIT_BRANCH_COLOR:="magenta"}"
# GIT STATUS
SPACESHIP_GIT_STATUS_SHOW="${SPACESHIP_GIT_STATUS_SHOW:=true}"
SPACESHIP_GIT_STATUS_PREFIX="${SPACESHIP_GIT_STATUS_PREFIX:=" ["}"
SPACESHIP_GIT_STATUS_SUFFIX="${SPACESHIP_GIT_STATUS_SUFFIX:="]"}"
SPACESHIP_GIT_STATUS_COLOR="${SPACESHIP_GIT_STATUS_COLOR:="red"}"
SPACESHIP_GIT_STATUS_UNTRACKED="${SPACESHIP_GIT_STATUS_UNTRACKED:="?"}"
SPACESHIP_GIT_STATUS_ADDED="${SPACESHIP_GIT_STATUS_ADDED:="+"}"
SPACESHIP_GIT_STATUS_MODIFIED="${SPACESHIP_GIT_STATUS_MODIFIED:="!"}"
SPACESHIP_GIT_STATUS_RENAMED="${SPACESHIP_GIT_STATUS_RENAMED:="»"}"
SPACESHIP_GIT_STATUS_DELETED="${SPACESHIP_GIT_STATUS_DELETED:="✘"}"
SPACESHIP_GIT_STATUS_STASHED="${SPACESHIP_GIT_STATUS_STASHED:="$"}"
SPACESHIP_GIT_STATUS_UNMERGED="${SPACESHIP_GIT_STATUS_UNMERGED:="="}"
SPACESHIP_GIT_STATUS_AHEAD="${SPACESHIP_GIT_STATUS_AHEAD:="⇡"}"
SPACESHIP_GIT_STATUS_BEHIND="${SPACESHIP_GIT_STATUS_BEHIND:="⇣"}"
SPACESHIP_GIT_STATUS_DIVERGED="${SPACESHIP_GIT_STATUS_DIVERGED:="⇕"}"

# MERCURIAL
SPACESHIP_HG_SHOW="${SPACESHIP_HG_SHOW:=true}"
SPACESHIP_HG_PREFIX="${SPACESHIP_HG_PREFIX:="on "}"
SPACESHIP_HG_SUFFIX="${SPACESHIP_HG_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_HG_SYMBOL="${SPACESHIP_HG_SYMBOL:="☿ "}"
# MERCURIAL BRANCH
SPACESHIP_HG_BRANCH_SHOW="${SPACESHIP_HG_BRANCH_SHOW:=true}"
SPACESHIP_HG_BRANCH_PREFIX="${SPACESHIP_HG_BRANCH_PREFIX:="$SPACESHIP_HG_SYMBOL"}"
SPACESHIP_HG_BRANCH_SUFFIX="${SPACESHIP_HG_BRANCH_SUFFIX:=""}"
SPACESHIP_HG_BRANCH_COLOR="${SPACESHIP_HG_BRANCH_COLOR:="magenta"}"
# MERCURIAL STATUS
SPACESHIP_HG_STATUS_SHOW="${SPACESHIP_HG_STATUS_SHOW:=true}"
SPACESHIP_HG_STATUS_PREFIX="${SPACESHIP_HG_STATUS_PREFIX:=" ["}"
SPACESHIP_HG_STATUS_SUFFIX="${SPACESHIP_HG_STATUS_SUFFIX:="]"}"
SPACESHIP_HG_STATUS_COLOR="${SPACESHIP_HG_STATUS_COLOR:="red"}"
SPACESHIP_HG_STATUS_UNTRACKED="${SPACESHIP_HG_STATUS_UNTRACKED:="?"}"
SPACESHIP_HG_STATUS_ADDED="${SPACESHIP_HG_STATUS_ADDED:="+"}"
SPACESHIP_HG_STATUS_MODIFIED="${SPACESHIP_HG_STATUD_MODIFIED:="!"}"
SPACESHIP_HG_STATUS_DELETED="${SPACESHIP_HG_STATUS_DELETED:="✘"}"

# VENV
SPACESHIP_VENV_SHOW="${SPACESHIP_VENV_SHOW:=true}"
SPACESHIP_VENV_PREFIX="${SPACESHIP_VENV_PREFIX:="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_VENV_SUFFIX="${SPACESHIP_VENV_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_VENV_COLOR="${SPACESHIP_VENV_COLOR:="blue"}"

# CONDA
SPACESHIP_CONDA_SHOW="${SPACESHIP_CONDA_SHOW:=true}"
SPACESHIP_CONDA_PREFIX="${SPACESHIP_CONDA_PREFIX:="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_CONDA_SUFFIX="${SPACESHIP_CONDA_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_CONDA_SYMBOL="${SPACESHIP_CONDA_SYMBOL:="🅒 "}"
SPACESHIP_CONDA_COLOR="${SPACESHIP_CONDA_COLOR:="blue"}"

# PYENV
SPACESHIP_PYENV_SHOW="${SPACESHIP_PYENV_SHOW:=true}"
SPACESHIP_PYENV_PREFIX="${SPACESHIP_PYENV_PREFIX:="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_PYENV_SUFFIX="${SPACESHIP_PYENV_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_PYENV_SYMBOL="${SPACESHIP_PYENV_SYMBOL:="🐍 "}"
SPACESHIP_PYENV_COLOR="${SPACESHIP_PYENV_COLOR:="yellow"}"

# EXECUTION TIME
SPACESHIP_EXEC_TIME_SHOW="${SPACESHIP_EXEC_TIME_SHOW:=true}"
SPACESHIP_EXEC_TIME_PREFIX="${SPACESHIP_EXEC_TIME_PREFIX:="took "}"
SPACESHIP_EXEC_TIME_SUFFIX="${SPACESHIP_EXEC_TIME_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_EXEC_TIME_COLOR="${SPACESHIP_EXEC_TIME_COLOR:="yellow"}"
SPACESHIP_EXEC_TIME_ELAPSED="${SPACESHIP_EXEC_TIME_ELAPSED:=2}"

# BATTERY
SPACESHIP_BATTERY_SHOW="${SPACESHIP_BATTERY_SHOW:=true}"
SPACESHIP_BATTERY_ALWAYS_SHOW="${SPACESHIP_BATTERY_ALWAYS_SHOW:=false}"
SPACESHIP_BATTERY_PREFIX="${SPACESHIP_BATTERY_PREFFIX:=""}"
SPACESHIP_BATTERY_SUFFIX="${SPACESHIP_BATTERY_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_BATTERY_CHARGING_SYMBOL="${SPACESHIP_BATTERY_CHARGING_SYMBOL:="⇡"}"
SPACESHIP_BATTERY_DISCHARGING_SYMBOL="${SPACESHIP_BATTERY_DISCHARGING_SYMBOL:="⇣"}"
SPACESHIP_BATTERY_FULL_SYMBOL="${SPACESHIP_BATTERY_FULL_SYMBOL:="•"}"
SPACESHIP_BATTERY_THRESHOLD="${SPACESHIP_BATTERY_THRESHOLD:=10}"

# VI_MODE
SPACESHIP_VI_MODE_SHOW="${SPACESHIP_VI_MODE_SHOW:=true}"
SPACESHIP_VI_MODE_PREFIX="${SPACESHIP_VI_MODE_PREFIX:=""}"
SPACESHIP_VI_MODE_SUFFIX="${SPACESHIP_VI_MODE_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_VI_MODE_INSERT="${SPACESHIP_VI_MODE_INSERT:="[I]"}"
SPACESHIP_VI_MODE_NORMAL="${SPACESHIP_VI_MODE_NORMAL:="[N]"}"
SPACESHIP_VI_MODE_COLOR="${SPACESHIP_VI_MODE_COLOR:="white"}"

# JOBS
SPACESHIP_JOBS_SHOW="${SPACESHIP_JOBS_SHOW:=true}"
SPACESHIP_JOBS_PREFIX="${SPACESHIP_JOBS_PREFIX:=""}"
SPACESHIP_JOBS_SUFFIX="${SPACESHIP_JOBS_SUFFIX:=" "}"
SPACESHIP_JOBS_SYMBOL="${SPACESHIP_JOBS_SYMBOL:="✦"}"
SPACESHIP_JOBS_COLOR="${SPACESHIP_JOBS_COLOR:="blue"}"

# EXIT CODE
SPACESHIP_EXIT_CODE_SHOW="${SPACESHIP_EXIT_CODE_SHOW:=false}"
SPACESHIP_EXIT_CODE_PREFIX="${SPACESHIP_EXIT_CODE_PREFIX:=""}"
SPACESHIP_EXIT_CODE_SUFFIX="${SPACESHIP_EXIT_CODE_SUFFIX:=" "}"
SPACESHIP_EXIT_CODE_SYMBOl="${SPACESHIP_EXIT_CODE_SYMBOl:="✘"}"
SPACESHIP_EXIT_CODE_COLOR="${SPACESHIP_EXIT_CODE_COLOR:="red"}"

# Amazon Web Services (AWS)
SPACESHIP_AWS_SHOW="${SPACESHIP_AWS_SHOW:=true}"
SPACESHIP_AWS_PREFIX="${SPACESHIP_AWS_PREFIX:="using "}"
SPACESHIP_AWS_SUFFIX="${SPACESHIP_AWS_SUFFIX:="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_AWS_SYMBOL="${SPACESHIP_AWS_SYMBOL:="☁️ "}"
SPACESHIP_AWS_COLOR="${SPACESHIP_AWS_COLOR:="208"}"

# ------------------------------------------------------------------------------
# HELPERS
# Helpers for common used actions
# ------------------------------------------------------------------------------

# Check if command exists in $PATH
# USAGE:
#   _exists <command>
_exists() {
  command -v $1 > /dev/null 2>&1
}

# Check if the current directory is in a Git repository.
# USAGE:
#   _is_git
_is_git() {
  command git rev-parse --is-inside-work-tree &>/dev/null
}

# Check if the current directory is in a Mercurial repository.
# USAGE:
#   _is_hg
_is_hg() {
  local root="$(pwd -P)"

  while [[ $root && ! -d $root/.hg ]]
  do
    root="${root%/*}"
  done

  [[ -n "$root" ]] &>/dev/null
}

# Draw prompt section (bold is used as default)
# USAGE:
#   _prompt_section <color> [prefix] <content> [suffix]
SPACESHIP_OPENED=false # Internal variable for checking if prompt is opened
_prompt_section() {
  local color prefix content suffix
  [[ -n $1 ]] && color="%F{$1}"  || color="%f"
  [[ -n $2 ]] && prefix="$2"     || prefix=""
  [[ -n $3 ]] && content="$3"    || content=""
  [[ -n $4 ]] && suffix="$4"     || suffix=""

  [[ -z $3 && -z $4 ]] && content=$2 prefix=''

  echo -n "%{%B%}" # set bold
  if [[ $SPACESHIP_OPENED == true ]] && [[ $SPACESHIP_PROMPT_PREFIXES_SHOW == true ]]; then
    echo -n "$prefix"
  fi
  SPACESHIP_OPENED=true
  echo -n "%{%b%}" # unset bold

  echo -n "%{%B$color%}" # set color
  echo -n "$content"     # section content
  echo -n "%{%b%f%}"     # unset color

  echo -n "%{%B%}" # reset bold, if it was diabled before
  if [[ $SPACESHIP_PROMPT_SUFFIXES_SHOW == true ]]; then
    echo -n "$suffix"
  fi
  echo -n "%{%b%}" # unset bold
}

# Print message backward compatibility warning
# USAGE:
#  _deprecate <deprecated> <actual>
_deprecated() {
  [[ -n $1 && -n $2 ]] || return
  local deprecated=$1 actual=$2 b=$bold_color r=$reset_color
  local deprecated_value=${(P)deprecated} # the value of variable name $deprecated
  [[ -n $deprecated_value ]] || return
  echo "${b}\$$deprecated${r} is deprecated. Use ${b}\$$actual${r} instead."
}

# Display seconds in human readable fromat
# Based on http://stackoverflow.com/a/32164707/3859566
# USAGE:
#   _displaytime <seconds>
_displaytime() {
  local T=$1
  local D=$((T/60/60/24))
  local H=$((T/60/60%24))
  local M=$((T/60%60))
  local S=$((T%60))
  [[ $D > 0 ]] && printf '%dd ' $D
  [[ $H > 0 ]] && printf '%dh ' $H
  [[ $M > 0 ]] && printf '%dm ' $M
  printf '%ds' $S
}

# ------------------------------------------------------------------------------
# HOOKS
# ZSH hooks for advanced actions
# ------------------------------------------------------------------------------

# Execution time start
spaceship_exec_time_preexec_hook() {
  [[ $SPACESHIP_EXEC_TIME_SHOW == false ]] && return
  SPACESHIP_EXEC_TIME_start=$(date +%s)
}

# Execution time end
spaceship_exec_time_precmd_hook() {
  [[ $SPACESHIP_EXEC_TIME_SHOW == false ]] && return
  [[ -n $SPACESHIP_EXEC_TIME_duration ]] && unset SPACESHIP_EXEC_TIME_duration
  [[ -z $SPACESHIP_EXEC_TIME_start ]] && return
  local SPACESHIP_EXEC_TIME_stop=$(date +%s)
  SPACESHIP_EXEC_TIME_duration=$(( $SPACESHIP_EXEC_TIME_stop - $SPACESHIP_EXEC_TIME_start ))
  unset SPACESHIP_EXEC_TIME_start
}

# ------------------------------------------------------------------------------
# SECTIONS
# The parts the prompt consists of
# ------------------------------------------------------------------------------

# TIME
spaceship_time() {
  [[ $SPACESHIP_TIME_SHOW == false ]] && return

  local time_str

  if [[ $SPACESHIP_TIME_FORMAT != false ]]; then
    time_str="${SPACESHIP_TIME_FORMAT}"
  elif [[ $SPACESHIP_TIME_12HR == true ]]; then
    time_str="%D{%r}"
  else
    time_str="%D{%T}"
  fi

  _prompt_section \
    "$SPACESHIP_TIME_COLOR" \
    "$SPACESHIP_TIME_PREFIX" \
    "$time_str" \
    "$SPACESHIP_TIME_SUFFIX"
}

# USER
# If user is root, then paint it in red. Otherwise, just print in yellow.
spaceship_user() {
  [[ $SPACESHIP_USER_SHOW == false ]] && return

    local user_color

    if [[ $USER == 'root' ]]; then
      user_color=$SPACESHIP_USER_COLOR_ROOT
    else
      user_color="$SPACESHIP_USER_COLOR"
    fi

    _prompt_section \
      "$user_color" \
      "$SPACESHIP_USER_PREFIX" \
      '%n' \
      "$SPACESHIP_USER_SUFFIX"
}

# HOST
# If there is an ssh connections, current machine name.
spaceship_host() {
  [[ $SPACESHIP_HOST_SHOW == false ]] && return

  _prompt_section \
    "$SPACESHIP_HOST_COLOR" \
    "$SPACESHIP_HOST_PREFIX" \
    '%m' \
    "$SPACESHIP_HOST_SUFFIX"
}

# DIR
# Current directory. Return only three last items of path
spaceship_dir() {
  [[ $SPACESHIP_DIR_SHOW == false ]] && return

  _prompt_section \
    "$SPACESHIP_DIR_COLOR" \
    "$SPACESHIP_DIR_PREFIX" \
    "%${SPACESHIP_DIR_TRUNC}~" \
    "$SPACESHIP_DIR_SUFFIX"
}

# GIT BRANCH
# Show current git brunch using git_current_status from Oh-My-Zsh
spaceship_git_branch() {
  [[ $SPACESHIP_GIT_BRANCH_SHOW == false ]] && return

  _is_git || return

  _prompt_section \
    "$SPACESHIP_GIT_BRANCH_COLOR" \
    "$SPACESHIP_GIT_BRANCH_PREFIX$(git_current_branch)$SPACESHIP_GIT_BRANCH_SUFFIX"
}

# GIT STATUS
# Check if current dir is a git repo, set up ZSH_THEME_* variables
# and show git status using git_prompt_status from Oh-My-Zsh
# Reference:
#   https://github.com/robbyrussell/oh-my-zsh/blob/master/lib/git.zsh
spaceship_git_status() {
  [[ $SPACESHIP_GIT_STATUS_SHOW == false ]] && return

  _is_git || return

  ZSH_THEME_GIT_PROMPT_UNTRACKED=$SPACESHIP_GIT_STATUS_UNTRACKED
  ZSH_THEME_GIT_PROMPT_ADDED=$SPACESHIP_GIT_STATUS_ADDED
  ZSH_THEME_GIT_PROMPT_MODIFIED=$SPACESHIP_GIT_STATUS_MODIFIED
  ZSH_THEME_GIT_PROMPT_RENAMED=$SPACESHIP_GIT_STATUS_RENAMED
  ZSH_THEME_GIT_PROMPT_DELETED=$SPACESHIP_GIT_STATUS_DELETED
  ZSH_THEME_GIT_PROMPT_STASHED=$SPACESHIP_GIT_STATUS_STASHED
  ZSH_THEME_GIT_PROMPT_UNMERGED=$SPACESHIP_GIT_STATUS_UNMERGED
  ZSH_THEME_GIT_PROMPT_AHEAD=$SPACESHIP_GIT_STATUS_AHEAD
  ZSH_THEME_GIT_PROMPT_BEHIND=$SPACESHIP_GIT_STATUS_BEHIND
  ZSH_THEME_GIT_PROMPT_DIVERGED=$SPACESHIP_GIT_STATUS_DIVERGED

  local git_status="$(git_prompt_status)"

  if [[ -n $git_status ]]; then
    # Status prefixes are colorized
    _prompt_section \
      "$SPACESHIP_GIT_STATUS_COLOR" \
      "$SPACESHIP_GIT_STATUS_PREFIX$git_status$SPACESHIP_GIT_STATUS_SUFFIX"
  fi
}

# GIT
# Show both git branch and git status:
#   spaceship_git_branch
#   spaceship_git_status
spaceship_git() {
  [[ $SPACESHIP_GIT_SHOW == false ]] && return

  local git_branch="$(spaceship_git_branch)" git_status="$(spaceship_git_status)"

  [[ -z $git_branch ]] && return

  _prompt_section \
    'white' \
    "$SPACESHIP_GIT_PREFIX" \
    "${git_branch}${git_status}" \
    "$SPACESHIP_GIT_SUFFIX"
}

# MERCURIAL BRANCH
# Show current hg branch
spaceship_hg_branch() {
  [[ $SPACESHIP_HG_BRANCH_SHOW == false ]] && return

  _is_hg || return

  _prompt_section \
    "$SPACESHIP_HG_BRANCH_COLOR" \
    "$SPACESHIP_HG_BRANCH_PREFIX"$(hg branch)"$SPACESHIP_HG_BRANCH_SUFFIX"
}

# MERCURIAL STATUS
# Check if current dir is a hg repo and show hg status as indicators
spaceship_hg_status() {
  [[ $SPACESHIP_HG_STATUS_SHOW == false ]] && return

  _is_hg || return

  local INDEX=$(hg status 2>/dev/null) hg_status=""

  # Indicators are suffixed instead of prefixed to each other to
  # provide uniform view across git and mercurial indicators
  if $(echo "$INDEX" | grep -E '^\? ' &> /dev/null); then
    hg_status="$SPACESHIP_HG_STATUS_UNTRACKED$hg_status"
  elif $(echo "$INDEX" | grep -E '^A ' &> /dev/null); then
    hg_status="$SPACESHIP_HG_STATUS_ADDED$hg_status"
  elif $(echo "$INDEX" | grep -E '^M ' &> /dev/null); then
    hg_status="$SPACESHIP_HG_STATUS_MODIFIED$hg_status"
  elif $(echo "$INDEX" | grep -E '^(R|!)' &> /dev/null); then
    hg_status="$SPACESHIP_HG_STATUS_DELETED$hg_status"
  fi

  if [[ -n $hg_status ]]; then
    _prompt_section \
      "$SPACESHIP_HG_STATUS_COLOR" \
      "$SPACESHIP_HG_STATUS_PREFIX"$hg_status"$SPACESHIP_HG_STATUS_SUFFIX"
  fi
}

# MERCURIAL
# Show both hg branch and hg status:
#   spaceship_hg_branch
#   spaceship_hg_status
spaceship_hg() {
  [[ $SPACESHIP_HG_SHOW == false ]] && return

  local hg_branch="$(spaceship_hg_branch)" hg_status="$(spaceship_hg_status)"

  [[ -z $hg_branch ]] && return

  _prompt_section \
    'white' \
    "$SPACESHIP_HG_PREFIX" \
    "${hg_branch}${hg_status}" \
    "$SPACESHIP_HG_SUFFIX"
}

# VENV
# Show current virtual environment (Python).
spaceship_venv() {
  [[ $SPACESHIP_VENV_SHOW == false ]] && return

  # Check if the current directory running via Virtualenv
  [ -n "$VIRTUAL_ENV" ] && _exists deactivate || return

  _prompt_section \
    "$SPACESHIP_VENV_COLOR" \
    "$SPACESHIP_VENV_PREFIX" \
    "$VIRTUAL_ENV:t" \
    "$SPACESHIP_VENV_SUFFIX"
}

# CONDA
# Show current conda virtual environment
spaceship_conda() {
  [[ $SPACESHIP_CONDA_SHOW == false ]] && return

  # Check if running via conda virtualenv
  _exists conda && [ -n "$CONDA_DEFAULT_ENV" ] || return

  _prompt_section \
    "$SPACESHIP_CONDA_COLOR" \
    "$SPACESHIP_CONDA_PREFIX" \
    "${SPACESHIP_CONDA_SYMBOL}${CONDA_DEFAULT_ENV}" \
    "$SPACESHIP_CONDA_SUFFIX"
}

# PYENV
# Show current version of pyenv python, including system.
spaceship_pyenv() {
  [[ $SPACESHIP_PYENV_SHOW == false ]] && return

  # Show pyenv python version only for Python-specific folders
  [[ -f requirements.txt ]] || [[ -n *.py(#qN^/) ]] || return

  _exists pyenv || return # Do nothing if pyenv is not installed

  local pyenv_status=${$(pyenv version-name 2>/dev/null)//:/ }

  _prompt_section \
    "$SPACESHIP_PYENV_COLOR" \
    "$SPACESHIP_PYENV_PREFIX" \
    "${SPACESHIP_PYENV_SYMBOL}${pyenv_status}" \
    "$SPACESHIP_PYENV_SUFFIX"
}

# EXECUTION TIME
# Execution time of the last command.
spaceship_exec_time() {
  [[ $SPACESHIP_EXEC_TIME_SHOW == false ]] && return

  if [[ $SPACESHIP_EXEC_TIME_duration -ge $SPACESHIP_EXEC_TIME_ELAPSED ]]; then
    _prompt_section \
      "$SPACESHIP_EXEC_TIME_COLOR" \
      "$SPACESHIP_EXEC_TIME_PREFIX" \
      "$(_displaytime $SPACESHIP_EXEC_TIME_duration)" \
      "$SPACESHIP_EXEC_TIME_SUFFIX"
  fi
}

# JOBS
# Show icon if there's a working jobs in the background
spaceship_jobs() {
  [[ $SPACESHIP_JOBS_SHOW == false ]] && return

  local jobs_amount=$(jobs -l | wc -l | xargs)

  [[ $jobs_amount -gt 0 ]] || return
  [[ $jobs_amount -eq 1 ]] && jobs_amount=''

  _prompt_section \
    "$SPACESHIP_JOBS_COLOR" \
    "$SPACESHIP_JOBS_PREFIX" \
    "${SPACESHIP_JOBS_SYMBOL}${jobs_amount}" \
    "$SPACESHIP_JOBS_SUFFIX"
}

# EXIT CODE
# Show exit code of last statement
spaceship_exit_code() {
  [[ $SPACESHIP_EXIT_CODE_SHOW == false || $RETVAL == 0 ]] && return

  _prompt_section \
    "$SPACESHIP_EXIT_CODE_COLOR" \
    "$SPACESHIP_EXIT_CODE_PREFIX" \
    "${SPACESHIP_EXIT_CODE_SYMBOl}$RETVAL" \
    "$SPACESHIP_EXIT_CODE_SUFFIX"
}

# LINE SEPARATOR
# Should it write prompt in two lines or not?
spaceship_line_sep() {
  [[ $SPACESHIP_PROMPT_SEPARATE_LINE == true ]] && echo -n "$NEWLINE"
}

# PROMPT CHARACTER
# Paint $PROMPT_SYMBOL in red if previous command was fail and
# paint in green if everything was OK.
spaceship_char() {
  _prompt_section "%(?.green.red)" "${SPACESHIP_PROMPT_SYMBOL} "
}

# ------------------------------------------------------------------------------
# BACKWARD COMPATIBILITY WARNINGS
# Show deprecation messages for options that are set, but not supported
# ------------------------------------------------------------------------------

# PROMPT
_deprecated SPACESHIP_PROMPT_TRUNC SPACESHIP_DIR_TRUNC
# PREFIXES
_deprecated SPACESHIP_PREFIX_SHOW SPACESHIP_PROMPT_PREFIXES_SHOW
_deprecated SPACESHIP_PREFIX_TIME SPACESHIP_TIME_PREFIX
_deprecated SPACESHIP_PREFIX_USER SPACESHIP_USER_PREFIX
_deprecated SPACESHIP_PREFIX_HOST SPACESHIP_HOST_PREFIX
_deprecated SPACESHIP_PREFIX_DIR SPACESHIP_DIR_PREFIX
_deprecated SPACESHIP_PREFIX_GIT SPACESHIP_GIT_PREFIX
_deprecated SPACESHIP_PREFIX_ENV_DEFAULT SPACESHIP_PROMPT_DEFAULT_PREFIX
_deprecated SPACESHIP_PREFIX_VENV SPACESHIP_VENV_PREFIX
_deprecated SPACESHIP_PREFIX_PYENV SPACESHIP_PYENV_PREFIX
# GIT
_deprecated SPACESHIP_GIT_COLOR SPACESHIP_GIT_BRANCH_COLOR
_deprecated SPACESHIP_GIT_UNCOMMITTED SPACESHIP_GIT_STATUS_ADDED
_deprecated SPACESHIP_GIT_UNTRACKED SPACESHIP_GIT_STATUS_UNTRACKED
_deprecated SPACESHIP_GIT_UNSTAGED SPACESHIP_GIT_STATUS_MODIFIED
_deprecated SPACESHIP_GIT_STASHED SPACESHIP_GIT_STATUS_STASHED
_deprecated SPACESHIP_GIT_UNPULLED SPACESHIP_GIT_STATUS_BEHIND
_deprecated SPACESHIP_GIT_UNPUSHED SPACESHIP_GIT_STATUS_AHEAD

# ------------------------------------------------------------------------------
# MAIN
# An entry point of prompt
# ------------------------------------------------------------------------------

# Compose whole prompt from smaller parts
spaceship_prompt() {
  # Retirve exit code of last command to use in exit_code
  # Must be captured before any other command in prompt is executed
  RETVAL=$?

  # Option EXTENDED_GLOB is set locally to force filename generation on
  # argument to conditions, i.e. allow usage of explicit glob qualifier (#q).
  # See the description of filename generation in
  # http://zsh.sourceforge.net/Doc/Release/Conditional-Expressions.html
  setopt EXTENDED_GLOB LOCAL_OPTIONS

  # Should it add a new line before the prompt?
  [[ $SPACESHIP_PROMPT_ADD_NEWLINE == true ]] && echo -n "$NEWLINE"

  # Execute all parts
  for section in $SPACESHIP_PROMPT_ORDER; do
    spaceship_$section
  done
}

# PS2 - continuation interactive prompt
spaceship_ps2() {
  _prompt_section "yellow" $SPACESHIP_PROMPT_SYMBOL
}

# Setup required environment variables
# All preparation before drawing prompt should be done here
spaceship_setup() {
  autoload -Uz add-zsh-hook
  # Add exec_time hooks
  add-zsh-hook preexec spaceship_exec_time_preexec_hook
  add-zsh-hook precmd spaceship_exec_time_precmd_hook

  # Disable python virtualenv environment prompt prefix
  VIRTUAL_ENV_DISABLE_PROMPT=true

  # Expose Spaceship to environment variables
  PROMPT='$(spaceship_prompt)'
  PS2='$(spaceship_ps2)'

  # LSCOLORS
  # Online editor: https://geoff.greer.fm/lscolors/
  export LSCOLORS="Gxfxcxdxbxegedabagacab"
  export LS_COLORS='no=00:fi=00:di=01;34:ln=00;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=41;33;01:ex=00;32:ow=0;41:*.cmd=00;32:*.exe=01;32:*.com=01;32:*.bat=01;32:*.btm=01;32:*.dll=01;32:*.tar=00;31:*.tbz=00;31:*.tgz=00;31:*.rpm=00;31:*.deb=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.lzma=00;31:*.zip=00;31:*.zoo=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.tb2=00;31:*.tz2=00;31:*.tbz2=00;31:*.avi=01;35:*.bmp=01;35:*.fli=01;35:*.gif=01;35:*.jpg=01;35:*.jpeg=01;35:*.mng=01;35:*.mov=01;35:*.mpg=01;35:*.pcx=01;35:*.pbm=01;35:*.pgm=01;35:*.png=01;35:*.ppm=01;35:*.tga=01;35:*.tif=01;35:*.xbm=01;35:*.xpm=01;35:*.dl=01;35:*.gl=01;35:*.wmv=01;35:*.aiff=00;32:*.au=00;32:*.mid=00;32:*.mp3=00;32:*.ogg=00;32:*.voc=00;32:*.wav=00;32:*.patch=00;34:*.o=00;32:*.so=01;35:*.ko=01;31:*.la=00;33'
  # Zsh to use the same colors as ls
  # Link: http://superuser.com/a/707567
  zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
}

# Entry point
# Pass all arguments to the spaceship_setup function
spaceship_setup "$@"
