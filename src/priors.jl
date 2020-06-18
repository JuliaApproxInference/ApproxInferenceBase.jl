import Distributions.pdf, Distributions.logpdf, Random.rand, Base.length

struct MixedSupport <: ValueSupport; end

"""
    Factored{N} <: Distribution{Multivariate, MixedSupport}

a `Distribution` type that can be used to combine multiple `UnivariateDistribution`'s and sample from them.

Example: it can be used as `prior = Factored(Normal(0,1), Uniform(-1,1))`
"""
struct Factored{N}<:Distribution{Multivariate,MixedSupport}
    p::NTuple{N,UnivariateDistribution}
    Factored(args::UnivariateDistribution...) = new{length(args)}(args)
end
"""
    pdf(d::Factored, x) = begin

Function to evaluate the pdf of a `Factored` distribution object
"""
pdf(d::Factored,x) = prod(i->pdf(d.p[i],x[i]),eachindex(x))

"""
    logpdf(d::Factored, x) = begin

Function to evaluate the logpdf of a `Factored` distribution object
"""
logpdf(d::Factored,x) = sum(i->logpdf(d.p[i],x[i]),eachindex(x))


"""
    rand(rng::AbstractRNG, factoreddist::Factored)

function to sample one element from a `Factored` object
"""
rand(rng::AbstractRNG,factoreddist::Factored) = rand.(Ref(rng),factoreddist.p)

"""
    length(p::Factored) = begin

returns the number of distributions contained in `p`.
"""
length(p::Factored) = sum(length.(p.p))

export Factored
