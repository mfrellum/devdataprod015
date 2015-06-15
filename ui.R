library(markdown)

shinyUI(
    navbarPage("Iris ML App",
        tabPanel("Classify",
            sidebarLayout(
                sidebarPanel(
                    selectInput("select", label = h4("Classification method"), 
                                choices = list("Random forest" = 1, "Tree" = 2,
                                               "k-Nearest neighbor" = 3), 
                                selected = 1),
                    numericInput("sl", label = h4("Sepal length"),value=0.0),
                    numericInput("sw", label = h4("Sepal width"),value=0.0),
                    numericInput("pl", label = h4("Petal length"),value=0.0),
                    numericInput("pw", label = h4("Petal width"),value=0.0),
                    actionButton("goButton", "Go!",value=TRUE),
                    actionButton("resetButton", "Reset",value=TRUE)
                ),
                mainPanel( 
                    # Result
                    # Image result
                    htmlOutput("prediction"),
                    htmlOutput("irisImg")
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
            div(h1("About"),
                h2("Here you will find information About the app"),
                p("http://sebastianraschka.com/Articles/2014_intro_supervised_learning.html"),
                p("https://en.wikipedia.org/wiki/Iris_flower_data_set")
            )
        ),
        tabPanel("Help",
            div(h1("Help"),
                h2("Here you will find help."),
                img(src='iris_petal_sepal.png')
            )
        ) 
    )
)
