project "FTXUI"
    kind "Utility"

    filter "system:windows"
        prebuildcommands
        {
            "cmake -S . -B bin/" .. outputdir .. "/%{prj.name} -G \"MinGW Makefiles\"",
            "cmake --build bin/" .. outputdir .. "/%{prj.name} --config %{cfg.buildcfg}"
        }

    filter "system:not windows"
        prebuildcommands
        {
            "cmake -S . -B bin/" .. outputdir .. "/%{prj.name}",
            "cmake --build bin/" .. outputdir .. "/%{prj.name} --config %{cfg.buildcfg}"
        }