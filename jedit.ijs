fn =: i =: ft =: lines =: ''
cut =: < ;. _2
parse =: monad : '(0{y) ; (}.}.y)'
join =: dyad : '((>x) , LF , (>y))'
act =: monad define
select. > 0 { parse y
  case. 'w' do. (join/lines) 1!:2 fn
  case. 'a' do. (<((1!:1) 1)) 1!:3 fn
  case. 'p' do. >(0".>(1{parse y)) { lines
  case. 'e' do. lines =: (<((1!:1) 1)) (0".>(1{parse y))} lines
  case. 'r' do. lines =: <;._2 ft =: (1!:1 (fn =: 1{parse y))
  case.     do. ''
end.
)
repl =: monad : 'while. i ~: ''q'' do. smoutput act i =: (1!:1) 1 end. i =: '''''