using ApproxInferenceBase
using Test
using Distributions
using Random

@testset "Factored" begin
    d=Factored(Uniform(0,1),Uniform(100,101))
    @test all((0,100) .<= rand(d) .<= (1,101))
    @test pdf(d,(0.0,0.0)) == 0.0
    @test pdf(d,(0.5,100.5)) == 1.0
    @test logpdf(d,(0.5,100.5)) == 0.0
    @test logpdf(d,(0.0,0.0)) == -Inf
    @test length(d) == 2
end
