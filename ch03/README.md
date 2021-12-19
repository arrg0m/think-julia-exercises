# Chapter 03

## Exercise 3-2

```julia
julia> include("ex03-02.jl")
rightjustify (generic function with 1 method)

julia> rightjustify("abracadabra")
"                                                           abracadabra"
```

## Exercise 3-3

```julia
julia> include("ex03-03.jl")
dofour (generic function with 1 method)

julia> function printtwice(bruce)
           println(bruce)
           println(bruce)
       end
printtwice (generic function with 1 method)

julia> dotwice(printtwice, "spam")
spam
spam
spam
spam

julia> dofour(println, "spam")
spam
spam
spam
spam
```

## Exercise 3-4

```julia
julia> include("ex03-04.jl")
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

julia> printmoregrid()
+ - - - - + - - - - + - - - - + - - - - +
|         |         |         |         |
|         |         |         |         |
|         |         |         |         |
|         |         |         |         |
+ - - - - + - - - - + - - - - + - - - - +
|         |         |         |         |
|         |         |         |         |
|         |         |         |         |
|         |         |         |         |
+ - - - - + - - - - + - - - - + - - - - +
|         |         |         |         |
|         |         |         |         |
|         |         |         |         |
|         |         |         |         |
+ - - - - + - - - - + - - - - + - - - - +
|         |         |         |         |
|         |         |         |         |
|         |         |         |         |
|         |         |         |         |
+ - - - - + - - - - + - - - - + - - - - +

```
