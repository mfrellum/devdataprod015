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

# Training models takes a relative long time
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
    output$training <- renderDataTable(training, options=list(pageLength=10)
)

    output$prediction <- renderUI({
        input$goButton
#         if(input$resetButton){
#             inputDF <- testing[sample(1:length(testing), 1),] #Random sample from testing set
#             updateNumericInput(session,"sl",value=inputDF[[1]])
#             updateNumericInput(session,"sw",value=inputDF[[2]])
#             updateNumericInput(session,"pl",value=inputDF[[3]])
#             updateNumericInput(session,"pw",value=inputDF[[4]])
#         }
        inputDF <- isolate(data.frame(Sepal.Length=input$sl, Sepal.Width=input$sw,
                                      Petal.Length=input$pl, Petal.Width=input$pw))
        
        if(!all(inputDF==0.0)){
            pred <- as.character( predict(models[as.integer(isolate(input$select))], 
                                          inputDF)[[1]])
            output$irisImg <- renderUI(img(src=images[[pred]]))
            h1("Classified as: ",pred)
        } else {
            output$irisImg <- renderUI(img(src=images[["none"]]))
            p(h1("Enter data"),
              h2("No zeros")
              )
        }
        })   

})