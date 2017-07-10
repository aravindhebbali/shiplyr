# output
output$screen <- renderPrint({
    screener(filtered())
})

