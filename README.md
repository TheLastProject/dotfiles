My home dir configs and useful scripts I use.

For myself, apply as such:
```
curl -sfL https://git.io/chezmoi | sh
chezmoi init https://github.com/TheLastProject/dotfiles.git
chezmoi apply
```

For others, you probably just want the scripts in the `bin` directory.

# cast_file
Cast a file to Chromecast using VLC.

Example:
```
cast_file $filename $chromecast_ip
```

# cast_url
Case an URL to Chromecast using VLC, downloaded through youtube-dl.

Example:
```
cast_url $url $chromecast_ip
```

# deepest_subdir_within_threshold
Find the deepest subdirectories using at least % percent of the storage space of a selected location.

Defaults to the local directory.

Flags:
```
-t threshold (set threshold percentage, default 10)
-h (output human readable values, default false)
-v (output verbose values, default false)
```

Example:
```
deepest_subdir_within_threshold -t 10 -hv /some_dir
```

# gredit
Grep & Edit

Grep and open each match in `$EDITOR`.

Known working editors are vi and nano.

```
Usage: gredit [-ilrqh] [-e exclude] regexp [location]

Arguments:
  -e <file/directory> Ignore all matches in file/directory
  -i                  Match case-insensitive
  -l                  List matches instead of editing them
  -r                  Search recursively
  -q                  Quiet (don't ask for confirmation before opening editor)
  -h                  Print this help
```

# run_over_ssh
Runs a local shellscript on a machine you SSH to, including flags you may want to use.

Example:
```
run_over_ssh sylvia@machine ~/bin/deepest_subdir_within_threshold -t 10 -hv /some_dir
```

# run_over_ssh_sudo
Same as run_over_ssh, but runs it in a root shell.
