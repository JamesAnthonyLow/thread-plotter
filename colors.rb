def colorize(str, i)
  color = (7 / (i+1)).floor
  bg = i % 7
  "\e[4#{bg}m\e[3#{color}m\e[1m#{str}\e[22m\e[0m\e[0m"
end
