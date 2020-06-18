var documenterSearchIndex = {"docs":
[{"location":"#","page":"ApproxInferenceBase","title":"ApproxInferenceBase","text":"CurrentModule = ApproxInferenceBase","category":"page"},{"location":"#ApproxInferenceBase-1","page":"ApproxInferenceBase","title":"ApproxInferenceBase","text":"","category":"section"},{"location":"#Reference-1","page":"ApproxInferenceBase","title":"Reference","text":"","category":"section"},{"location":"#","page":"ApproxInferenceBase","title":"ApproxInferenceBase","text":"","category":"page"},{"location":"#","page":"ApproxInferenceBase","title":"ApproxInferenceBase","text":"Modules = [ApproxInferenceBase]","category":"page"},{"location":"#ApproxInferenceBase.Factored","page":"ApproxInferenceBase","title":"ApproxInferenceBase.Factored","text":"Factored{N} <: Distribution{Multivariate, MixedSupport}\n\na Distribution type that can be used to combine multiple UnivariateDistribution's and sample from them.\n\nExample: it can be used as prior = Factored(Normal(0,1), Uniform(-1,1))\n\n\n\n\n\n","category":"type"},{"location":"#Base.length-Union{Tuple{Factored{N}}, Tuple{N}} where N","page":"ApproxInferenceBase","title":"Base.length","text":"length(p::Factored) = begin\n\nreturns the number of distributions contained in p.\n\n\n\n\n\n","category":"method"},{"location":"#Base.rand-Union{Tuple{N}, Tuple{Random.AbstractRNG,Factored{N}}} where N","page":"ApproxInferenceBase","title":"Base.rand","text":"rand(rng::AbstractRNG, factoreddist::Factored)\n\nfunction to sample one element from a Factored object\n\n\n\n\n\n","category":"method"},{"location":"#Distributions.logpdf-Union{Tuple{N}, Tuple{Factored{N},Any}} where N","page":"ApproxInferenceBase","title":"Distributions.logpdf","text":"logpdf(d::Factored, x) = begin\n\nFunction to evaluate the logpdf of a Factored distribution object\n\n\n\n\n\n","category":"method"},{"location":"#Distributions.pdf-Union{Tuple{N}, Tuple{Factored{N},Any}} where N","page":"ApproxInferenceBase","title":"Distributions.pdf","text":"pdf(d::Factored, x) = begin\n\nFunction to evaluate the pdf of a Factored distribution object\n\n\n\n\n\n","category":"method"}]
}
