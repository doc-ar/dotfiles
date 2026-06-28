_auto_venv() {
  if [[ -d .venv ]]; then
    source .venv/bin/activate
  elif [[ -d venv ]]; then
    source venv/bin/activate
  elif [[ -n "$VIRTUAL_ENV" ]]; then
    deactivate
  fi
}

if [[ -n "$ZSH_VERSION" ]]; then
  _auto_venv    # run immediately
  chpwd() { _auto_venv }
fi
