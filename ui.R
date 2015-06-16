library(markdown)

shinyUI(
    navbarPage("Iris ML App",
        tabPanel("Classify",
            sidebarLayout(
                sidebarPanel(
                    selectInput("select", label = h4("Classification method"), 
                                choices = list("Classification tree" = 1,
                                               "k-Nearest neighbor" = 2),
                                             # "Random forest" = 3,    
                                selected = 1),
                    numericInput("sl", label = h4("Sepal length"),value=0.0),
                    numericInput("sw", label = h4("Sepal width"),value=0.0),
                    numericInput("pl", label = h4("Petal length"),value=0.0),
                    numericInput("pw", label = h4("Petal width"),value=0.0),
                    actionButton("randomButton", "Random from test set"),
                    actionButton("classifyButton", "Classify!")
                ),
                mainPanel( 
                    htmlOutput("prediction")
                )
            )
        ),
        tabPanel("Data",
            tabsetPanel(type = "tabs", 
                tabPanel("Testing", dataTableOutput(outputId="testing")), 
                tabPanel("Training", dataTableOutput(outputId="training"))
            )
        ),
        tabPanel("About",
            source("about.R",local=TRUE,echo=FALSE)$value # $value to drop annoying TRUE
            # https://groups.google.com/forum/#!topic/shiny-discuss/kRBT8EmNsJg
        ),
        tabPanel("Help",
            source("help.R",local=TRUE,echo=FALSE)$value 
        ) 
    )
)
