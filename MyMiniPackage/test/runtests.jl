using MyMiniPackage
using Test

@testset "MyMiniPackage" begin
    @testset "Dimension" begin
        image = zeros(Int8, 32, 32)
        kernel = zeros(Int8, 3, 3)

        result = my_convolution(image, kernel)
        @test size(result) == size(image)
    end
    
    @testset "Identity Kernel" begin
        image = zeros(Int8, 32, 32)
        kernel = zeros(Int8, 3, 3)
        kernel[2, 2] = 1

        result = my_convolution(image, kernel)
        @test result == image
    end
end