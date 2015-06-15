library(caret)

set.seed(1411)

data(iris)

inTrain <-  createDataPartition(y = iris$Species,p=0.80,list=FALSE)
training <- iris[inTrain,]
testing  <- iris[-inTrain,]

images <- c(setosa    ='Kosaciec_szczecinkowaty_Iris_setosa.jpg',
            versicolor='220px-Iris_versicolor_3.jpg',
            virginica ='220px-Iris_virginica.jpg',
            none      ='iris_petal_sepal.png')

ctrl <- trainControl(method="repeatedcv", number=10, repeats=3)

# Training models takes quite a long time
models <- list(
        modelRF  = train(Species ~ ., data=training,method="rf",
                prox=TRUE,allowParallel=TRUE),
        modelT   = train(Species ~ ., data=training,method="rpart"),
        modelKNN = train(Species ~ ., data=training,method="knn",
                    trControl=ctrl, metric="Accuracy", tuneLength=20,
                    preProc=c("range"))
        )            

shinyServer(function(input, output, session) {
    output$testing <- renderDataTable(testing, options=list(pageLength=10))
    output$training <- renderDataTable(training, options=list(pageLength=10))
    output$prediction <- renderUI({  #Reactive
        input$classifyButton
        inputDF <- isolate(data.frame(Sepal.Length=input$sl, Sepal.Width=input$sw,
                                      Petal.Length=input$pl, Petal.Width=input$pw))        
        pred <- as.character( predict(models[as.integer(isolate(input$select))], 
                                    inputDF)[[1]])
        div(
            h1("Classified as: ",pred),
            img(src=images[[pred]])
        )
    })
    observe({  #Reactive
        input$randomButton
        rnum <- sample(1:length(testing[[1]]), 1)
        res <- testing[rnum,] #Random sample from testing set
        updateNumericInput(session,"sl",value=res[[1]])
        updateNumericInput(session,"sw",value=res[[2]])
        updateNumericInput(session,"pl",value=res[[3]])
        updateNumericInput(session,"pw",value=res[[4]])
    })
})