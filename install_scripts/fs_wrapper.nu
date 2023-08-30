export def sudo_append_file[string: string, file: string] {
  sudo chmod a+w ($file)
  ($string) | save --append ($file)
  sudo chmod a-w ($file)
}
