### A Pluto.jl notebook ###
# v0.12.20

using Markdown
using InteractiveUtils

# ╔═╡ cad49910-6e33-11eb-3efa-29d13e44d72c
begin
	using LinearAlgebra
	using AbstractAlgebra
	using Markdown
	function swap_rows(A, i,j)
		M = copy(A)
		a = M[i,:]
		M[i,:] = M[j,:]
		M[j,:] = a
		return M
	end
	function swap_rows!(M, i,j)
		a = M[i,:]
		M[i,:] = M[j,:]
		M[j,:] = a
		return M
	end
	function augment_i(M)
		P = identity_matrix(M)
		return hcat(M, P)
	end
	function augment_b(M, b)
		return hcat(M,b)
	end;
end;

# ╔═╡ c7bdd140-6e35-11eb-2e52-1fdcab06c9d3
md"## Create the matrix"

# ╔═╡ 773cf350-6e34-11eb-2c4a-bd9627522bfe
M = ZZ[
    1 2 3;
    2 3 4;
    4 5 5
    ]

# ╔═╡ 748b3ca0-6e3b-11eb-30c1-679bf1b1181b
inv(M)

# ╔═╡ 8d028a6e-6e38-11eb-1541-a5c6b18cd922
md"## Create b vector"

# ╔═╡ ab07c850-6e38-11eb-389a-1f6ebc3e23ce
b = ZZ[
    1;
    2;
    3	]

# ╔═╡ 0e4bb750-6e34-11eb-0bc4-55e026160f9f
md"## Choose Inverse or System"

# ╔═╡ 6e270640-6e37-11eb-004d-37b0bb3b34bb
begin
	i = "inverse"
	s = "system"
	sol_type = i
	if sol_type == i
		A = augment_i(M)
	else
		A = augment_b(M, b)
	end
	A
end

# ╔═╡ 26440590-6e3b-11eb-2ab6-2db3df282765
md" ## Swap Rows"

# ╔═╡ 0fe848f0-6e37-11eb-02a3-254359d0e6c0
swap_rows!(A, 1,3)

# ╔═╡ 2938b480-6e3b-11eb-07e1-09870d7810c9
md"## Multiply row by scalar"

# ╔═╡ 1f19e720-6e37-11eb-0284-416d7662cd61
multiply_row!(A, -1, 3)

# ╔═╡ 2a331a12-6e3b-11eb-04c3-8f04b1350a07
md"## Add multiple of row to another row"

# ╔═╡ 128f2600-6e37-11eb-0bc5-5d64878836ff
add_row!(A, -2, 3, 2)

# ╔═╡ 0de1aade-6e34-11eb-35cc-33c99346335d


# ╔═╡ 0d1be9de-6e34-11eb-3043-69165486ffa5


# ╔═╡ Cell order:
# ╟─cad49910-6e33-11eb-3efa-29d13e44d72c
# ╟─c7bdd140-6e35-11eb-2e52-1fdcab06c9d3
# ╠═773cf350-6e34-11eb-2c4a-bd9627522bfe
# ╠═748b3ca0-6e3b-11eb-30c1-679bf1b1181b
# ╟─8d028a6e-6e38-11eb-1541-a5c6b18cd922
# ╠═ab07c850-6e38-11eb-389a-1f6ebc3e23ce
# ╟─0e4bb750-6e34-11eb-0bc4-55e026160f9f
# ╠═6e270640-6e37-11eb-004d-37b0bb3b34bb
# ╟─26440590-6e3b-11eb-2ab6-2db3df282765
# ╠═0fe848f0-6e37-11eb-02a3-254359d0e6c0
# ╟─2938b480-6e3b-11eb-07e1-09870d7810c9
# ╠═1f19e720-6e37-11eb-0284-416d7662cd61
# ╟─2a331a12-6e3b-11eb-04c3-8f04b1350a07
# ╠═128f2600-6e37-11eb-0bc5-5d64878836ff
# ╠═0de1aade-6e34-11eb-35cc-33c99346335d
# ╠═0d1be9de-6e34-11eb-3043-69165486ffa5
