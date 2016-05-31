def colorize(str, i)
  color = (7 / (i+1)).floor
  bg = i % 7
  "\e[4#{bg}m\e[3#{color}m\e[1m#{str}\x1b[22m\x1b[0m"
end
