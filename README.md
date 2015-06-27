# Julia linter for Vim

This plugin adds linting for Julia by using the [Neomake] (https://github.com/benekastah/neomake) plugin and the [Lint.jl] (https://github.com/tonyhffong/Lint.jl) Julia package.

# Installation

You should be able to install it as you would any other plugin using your preferred plugin manager (e.g. Pathogen, Vundle...). You must also have the [Neomake] (https://github.com/benekastah/neomake) plugin installed, and the [Lint.jl] (https://github.com/tonyhffong/Lint.jl) package in Julia.
Please make sure that you have the head version of Lint.jl (use `Pkg.clone("Lint")` instead of `Pkg.add("Lint")`).

# Usage

When you run `:Neomake` Lint.jl will be run on the current file and any errors or warnings will pop up on the side of the screen. If you would like to see a full list of errors and warnings, you can open the location list with `:lopen` (see more information with `:h location-list`).

If you have a project with multiple files and would like to lint the top level one and not the one being currently edited, place a file called `.julialint` in the current directory, and in the first line of that file, write the name of the top level file you would like the linter to use.
