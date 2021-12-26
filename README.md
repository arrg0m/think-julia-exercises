# think-julia-exercises

Attempts toward some exercises from the book [Think Julia](https://www.oreilly.com/library/view/think-julia/9781492045021/)


## How to run (most of the scripts)
```julia
julia> include("ch03/ex03-04.jl")
printmoregrid (generic function with 1 method)


julia> printgrid()
+ - - - - + - - - - +
|         |         |
|         |         |
|         |         |
|         |         |
+ - - - - + - - - - +
|         |         |
|         |         |
|         |         |
|         |         |
+ - - - - + - - - - +
```


## Adding requirements `ThinkJulia`
```julia
julia> # press `]`
(@v1.5) pkg> add https://github.com/BenLauwens/ThinkJulia.jl
```

## Running scripts with svg outputs
Well, we could have some decent choices like decorator...
```julia
julia> include("ch05/ex05-07.jl")
sausageflake (generic function with 1 method)

julia> @svg begin; snowflake(Turtle(), 60); end
"luxor-drawing-220628_251.svg"
```
