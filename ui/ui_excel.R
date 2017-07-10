tabPanel('Excel', value = 'tab_excel',

    fluidPage(

        fluidRow(
          column(8, align = 'left',
            h4('Upload Data'),
            p('Upload data from a .xls or .xlsx file.')
          ),
          column(4, align = 'right',
            actionButton(inputId='uploadexcel1', label="Help", icon = icon("question-circle")),
            actionButton(inputId='uploadexcel2', label="Demo", icon = icon("video-camera"),
              onclick ="window.open('http://google.com', '_blank')")
          )
        ),
        hr(),

            fluidRow(
                column(12, align = 'center',
                    fileInput(
                      inputId = 'file2',
                      label = 'Choose file:',
                      accept = c('.xls', '.xlsx')
                    )
                )
            ),

            fluidRow(
                column(12, align = 'center',  
                  numericInput(
                    inputId = 'sheet_n',
                    label = 'Sheet',
                    value = 1,
                    min = 1,
                    step = 1
                  )  
                )
            )

        )

)
