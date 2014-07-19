#  1 C-l-dot
#  1 N-l
#  1 N-r
#  2 C-l
#  2 C-u
#  2 C-u-dot
#  2 L-ul-dot
#  2 L-ur
#  2 N-d
#  3 C-d-dot
#  3 L-ur-dot
#  4 C-d
#  4 L-lr-dot
#  4 O-dot
#  5 L-lr
#  7 C-r
#  7 L-ul
# 12 L-ll

words = File.new("/usr/share/dict/words")

subst = {
"C-l-dot" => 'x',
"N-l" => 'x',
"N-r" => 'x',
"C-l" => 'x',
"C-u" => 'x',
"C-u-dot" => 'x',
"L-ul-dot" => 'x',
"L-ur" => 'x',
"N-d" => 'x',
"C-d-dot" => 'L',
"L-ur-dot" => 'S',
"C-d" => 'x',
"L-lr-dot" => 'x',
"O-dot" => 'x',
"L-lr" => 'x',
"C-r" => 'x',
"L-ul" => 'x', #Not A
"L-ll" => 'E'
}

file = File.open('puzzle.txt')
file.lines.each do |line|
  print "#{subst[line.strip]} "
end
puts