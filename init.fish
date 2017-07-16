#Custom script sourced after shell start
# Env
set -x EDITOR nvim
set -x SHELL fish

# Alias
abbr -a nv nvim
abbr -a gd cd ~/github/dopsonbr
abbr -a gh cd ~/github/homedepot/assistedselling
abbr -a rg ranger

function cfLogin
  echo "logging into space $argv"

  switch $argv
  case "dev"
      cf login -a api.run-np.homedepot.com -o orderup-sell -s development -u bxd5017
  case "staging"
      cf login -a api.run-za.homedepot.com -o orderup-sell -s staging -u bxd5017
  case "prod"
      cf login -a api.run-za.homedepot.com -o orderup-sell -s production -u bxd5017
  case "accepted"
      cf login -a api.run-np.homedepot.com -o orderup-sell -s accepted -u bxd5017
  end
end

function foo
  echo $argv
  if [ $argv[1] = bar ]
    echo "fizz"
  else
    echo "buzz"
  end
end

# vim: ft=sh
