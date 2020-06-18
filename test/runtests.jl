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
    m=Factored(Uniform(0.00,1.0),DiscreteUniform(1,2))
    sample=rand(m)
    @test 0<sample[1]<1
    @test sample[2] == 1 || sample[2] == 2
    @test pdf(m,sample) == 0.5
    @test logpdf(m,sample) ≈ log(0.5)
end
