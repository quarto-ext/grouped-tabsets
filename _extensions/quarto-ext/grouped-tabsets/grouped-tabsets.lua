return {
    {
        Block = function(block)
            if (quarto.doc.isFormat("html") and
                block.attributes ~= nil and 
                block.attributes["group"] ~= nil) then
                quarto.doc.addHtmlDependency({
                    name = "grouped-tabsets",
                    scripts = { 
                        { 
                            path = "grouped-tabsets.js", 
                            name = "grouped-tabsets.js" 
                        }
                    },
                    version = "0.0.1"
                })
            end
        end    
    }
}