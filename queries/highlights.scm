(string) @string
(type) @type
(value_path) @variable
(comment) @comment

(number_literal) @number
(range from: (number_literal) @number)
(range to: (number_literal) @number)

(command cmd_name: (identifier) @function)
(function_definition func_name: (identifier) @function)

(variable_declaration name: (identifier) @property)
(parameter (identifier) @property)
(record_entry entry_name: (identifier) @property)
(block_args block_param: (identifier) @property)
; (parameter (identifier) @variable.parameter) -- alternative highlighting group?

(cmd_invocation) @embedded


((identifier) @constant
 (#match? @constant "^[A-Z][A-Z\\d_]*$"))

[
 "let"
 "def"
 "export"
] @keyword

[
  ; "/" Not making / an operator may lead to better highlighting?
  "$"
  "|"
  "+"
  "-"
  "*"
  "="
  "!="
  "&&"
  "||"
  "=="
  ">"
] @operator

["."
 "," 
 ";" 
] @delimiter
