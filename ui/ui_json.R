tabPanel('JSON', value = 'tab_json',

    fluidPage(

        fluidRow(
          column(8, align = 'left',
            h4('Upload Data'),
            p('Upload data from a .json file.')
          ),
          column(4, align = 'right',
            actionButton(inputId='uploadjson1', label="Help", icon = icon("question-circle")),
            actionButton(inputId='uploadjson2', label="Demo", icon = icon("video-camera"),
              onclick ="window.open('http://google.com', '_blank')")
          )
        ),
        hr(),

            fluidRow(
                column(12, align = 'center',
                    fileInput(
                      inputId = 'file3',
                      label = 'Choose file:',
                      accept = '.json'
                    )
                )
            )

        )

)
