tabPanel('SAS', value = 'tab_json',

    fluidPage(

        fluidRow(
          column(8, align = 'left',
            h4('Upload Data'),
            p('Upload data from a .sas7bdat file.')
          ),
          column(4, align = 'right',
            actionButton(inputId='uploadsas1', label="Help", icon = icon("question-circle")),
            actionButton(inputId='uploadsas2', label="Demo", icon = icon("video-camera"),
              onclick ="window.open('http://google.com', '_blank')")
          )
        ),
        hr(),

            fluidRow(
                column(12, align = 'center',
                    fileInput(
                      inputId = 'file4',
                      label = 'Choose file:',
                      accept = '.sas7bdat'
                    )
                )
            )

        )

)
