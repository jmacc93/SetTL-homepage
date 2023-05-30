# SetTL -- **Set**-**T**yped **L**anguage

This is the home page of the as-of-yet-undeveloped demonstration programming language SetTL

## Features

Heres a (not exclusive) list of feature that the draft interpreter of SetTL will include:

* Set types -- all types are considered equivalent to sets of values
* Tag types -- implicit types which refine other types
* Automatic function composition: `with(l in List(T)) let findMax = firstValue((l) -> MaxOf(l))`
* Imperative and declarative `let` definitions: `let y == x + 1; let x = 5`
* Solving for variable values at CT via unification across functions, `let` definitions, etc: `let x = 5; let f(x, y)`
* Native inverse functions: `fn foo^1(x in Integer, y in Integer) { ... }`
* Statement types: `let x in Integer = x0 :: xDeclared(x0 = 5)`
* Deep arguments: `fn foo(deep x in Integer) { ... }`
* Deep returns: `let x = catch(deep x) foo()`
* Orderless arguments: `fn foo(orderless: x in Integer, y in Real); foo(1.23, 5)` -- differentiated by type
* Return overloading: `fn Integer foo(x in Integer) { ... }; fn String foo(x in Integer); let str in String = foo(5)`
* Scope objects: `let sandbox = globalScope.copy(); within(sandbox) { ... }`
* Antegenerators: `fn goo() in Antegenerator { when(x > 0) yield x}; fn foo() { foreach(x; goo()) print x }; let x = 5 // 5` -- functions that can call their callers
* Return calling / multicalling: `fn Hour Integer getHour!() in Multicall { onChange(time = Time.current("hour")) yield time}; h = getHour!(); print h // prints each hour` -- functions that return multiple times
* `when`, `onChange`, `request` and `satisfy`, `waitFor`, ... -- event driven programming
* Repeated `let`ing: `let y = 5; let x := y + 1; y = 7; print x // 8` -- reactive programming
* Enhanced debugging:
  * Debugging mode -- slow, but extremely informy
  * Function and variable trusting -- stating where there isn't a bug
  * Retrocausal breakpoints and return / record points -- go back to a saved position in debug mode
  * Primed and stack-dependent breakpoints -- breaking depending on context
  * Variable state and function call histories
  * HTML-based output timeline representation
* In-procedure definitions: `with(x in Integer) { let y = x + 1; let x.increment = y }; 5.increment // 6`
* Component types, and type concatenation: `component C1 {let x in Integer}; component C2 {let y in Real}; let comp in C1 ~ C2; comp.x // 0`
* Automatic value extraction from product types: `fn Integer * Real foo() {return (5, 7.11)}; let x in Real = foo() // 7.11`
* Superposition types: `let x = 1 <> 2; y = 3 <> 4; f(x + y) // eq to: f(4) <> f(5) <> f(6)`
* Function extension: `after(foo.someStatement(x)) { print(x) }`
* ...
Any much more

