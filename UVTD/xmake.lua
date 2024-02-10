local projectName = "UVTD"

add_requires("raw_pdb")

target(projectName)
    set_kind("binary")
    set_languages("cxx20")

    add_includedirs("include", { public = true })
    add_headerfiles("include/**.hpp")

    add_files("src/**.cpp")

    add_deps("File", "Input", "DynamicOutput", "Helpers")

    add_packages("raw_pdb")