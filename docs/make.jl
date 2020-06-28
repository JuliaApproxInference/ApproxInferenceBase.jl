using Documenter, ApproxInferenceBase

makedocs(
    modules = [ApproxInferenceBase],
    format = Documenter.HTML(; prettyurls = get(ENV, "CI", nothing) == "true"),
    authors = "Julia Approx Inference members",
    sitename = "ApproxInferenceBase.jl",
    pages = Any["index.md"],
    # strict = true,
    # clean = true,
    # checkdocs = :exports,
)
deploydocs(repo = "github.com/JuliaApproxInference/ApproxInferenceBase.jl.git")
