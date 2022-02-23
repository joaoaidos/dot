require("cmp_dictionary").setup({
    dic = {
        --["*"] = "/usr/share/dict/words",
        --["markdown"] = { "path/to/mddict", "path/to/mddict2" },
        --["javascript,typescript"] = { "path/to/jsdict" },
        ["latex"] = {"C:/Users/joaoa/Downloads/aspell6-pt_PT-20190329-1-0.tar/aspell6-pt_PT-20190329-1-0"}
    },
    -- The following are default values, so you don't need to write them if you don't want to change them
    exact = 2,
    async = false, 
    capacity = 5,
    debug = false, 
})
