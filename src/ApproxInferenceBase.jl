module ApproxInferenceBase
using Distributions
using Random
export run!
include("priors.jl")

"""
    run!(method, model, data;
         verbosity = 0, callback = () -> nothing, rng = Random.GLOBAL_RNG)

Run approximate inference `method` on `model` and `data`.
The `model` should be a callable object (function or functor) with one argument
and return something that can be compared to the `data`. The comparison metric is
defined in the `method`.
Handling of constants and extraction of summary statistics should be done in
the `model` (see examples below).
Verbosity levels are `verbosity = 0` (silent), `verbosity = 1` (progress),
`verbosity = 2` (detailed).
Callbacks `callback` are callable objects with no argument that are called after
every iteration of an iterative `method`. Custom random number generators can be
given through the argument `rng`.

# Model examples
```
# simple model
model(params) = sum(params)

# complex model with constants
complex_model(params, constants) = sum(params) + sum(constants)
model(params) = let constants = [1, 2, 3]
        complex_model(params, constants)
    end

# extracting summary statistics
raw_model(params) = rand(4, 3)
model(params) = mean(raw_model(params), dims = 2)

# functor
struct Model
    options
end
(m::Model)(params) = sum(params) + sum(m.options)
```
"""
function run!(method, model, data;
              verbosity = 0, callback = () -> nothing, rng = Random.GLOBAL_RNG)
    throw(MethodError(run!, (method, model, data)))
end
end # module
