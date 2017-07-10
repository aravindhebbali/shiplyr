tabPanel('SPSS', value = 'tab_spss',

    fluidPage(

        fluidRow(
          column(8, align = 'left',
            h4('Upload Data'),
            p('Upload data from a .sav file.')
          ),
          column(4, align = 'right',
            actionButton(inputId='uploadspss1', label="Help", icon = icon("question-circle")),
            actionButton(inputId='uploadspss2', label="Demo", icon = icon("video-camera"),
              onclick ="window.open('http://google.com', '_blank')")
          )
        ),
        hr(),

            fluidRow(
                column(12, align = 'center',
                    fileInput(
                      inputId = 'file5',
                      label = 'Choose file:',
                      accept = '.sav'
                    )
                )
            )

        )

)
