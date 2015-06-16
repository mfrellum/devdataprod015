div(
    h1("About"),
    h2("Author"),
    p("Morten Frellumstad"),
    p("This Shiny app is part of my Course Project for:",
      a("https://class.coursera.org/devdataprod-015")),
    h2("External resources"),
    p("Here you can read more about the famous Iris data set and the classification methods",
      "used in this App. Images are borrowed from thes sites."),
    tags$ul(
        tags$li(a("http://sebastianraschka.com/Articles/2014_intro_supervised_learning.html")),
        tags$li(a("https://en.wikipedia.org/wiki/Iris_flower_data_set")),
        tags$li(a("https://en.wikipedia.org/wiki/Decision_tree_learning")),
        tags$li(a("https://en.wikipedia.org/wiki/K-means_clustering"))
    )
)