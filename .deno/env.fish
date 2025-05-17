
# deno shell setup
if not contains "/home/fortyseven/.deno/bin" $PATH
  # prepend to path to take precedence over potential package manager deno installations
  set -x PATH "/home/fortyseven/.deno/bin" $PATH
end
