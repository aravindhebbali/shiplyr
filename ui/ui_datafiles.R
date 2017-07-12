tabPanel('Upload File', value = 'tab_uploadfile',

	fluidPage(

		fluidRow(

			column(12,

				tabsetPanel(type = 'tabs', id = 'tabset_upload',

					tabPanel('CSV', value = 'tab_upload_csv',

						fluidPage(

			        fluidRow(
			          column(8, align = 'left',
			            h4('Upload Data'),
			            p('Upload data from a comma or tab separated file.')
			          ),
			          column(4, align = 'right',
			            actionButton(inputId='uploadlink1', label="Help", icon = icon("question-circle")),
			            actionButton(inputId='uploadlink2', label="Demo", icon = icon("video-camera"),
			              onclick ="window.open('http://google.com', '_blank')")
			          )
			        ),
			        hr(),

			            fluidRow(
			                column(12, align = 'center',
			                    fileInput('file1', 'Data Set:',
			                        accept = c('text/csv', '.csv',
			                            'text/comma-separated-values,text/plain')
			                    )
			                )
			            ),

			            fluidRow(
			                column(12, align = 'center',  checkboxInput('header', 'Header', TRUE))
			            ),

			            fluidRow(
			                column(12, align = 'center',
			                    selectInput('sep', 'Separator',
			                        choices = c('Comma' = ',', 'Semicolon' = ';', 'Tab' = '\t'), selected = ',')
			                )
			            ),

			            fluidRow(
			                column(12, align = 'center',
			                    selectInput('quote', 'Quote',
			                        choices = c('None' = '', 'Double Quote' = '"', 'Single Quote' = "'"), selected = '')
			                )
			            )

			        )

					),
					tabPanel('Excel', value = 'tab_upload_excel',

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
			                    step = 1,
			                    width = '120px'
			                  )  
			                )
			            )

			        )

					),
					tabPanel('JSON', value = 'tab_upload_json',

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

					),
					tabPanel('STATA', value = 'tab_upload_stata',

						fluidPage(

			        fluidRow(
			          column(8, align = 'left',
			            h4('Upload Data'),
			            p('Upload data from a .json file.')
			          ),
			          column(4, align = 'right',
			            actionButton(inputId='uploadstata1', label="Help", icon = icon("question-circle")),
			            actionButton(inputId='uploadstata2', label="Demo", icon = icon("video-camera"),
			              onclick ="window.open('http://google.com', '_blank')")
			          )
			        ),
			        hr(),

			            fluidRow(
			                column(12, align = 'center',
			                    fileInput(
			                      inputId = 'file6',
			                      label = 'Choose file:',
			                      accept = '.dta'
			                    )
			                )
			            )

			        )

					),
					tabPanel('SPSS', value = 'tab_upload_spss',

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

					),
					tabPanel('SAS', value = 'tab_upload_sas',

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

				)

			)

		)

	)

)