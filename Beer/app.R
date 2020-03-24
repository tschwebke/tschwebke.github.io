library(tidyverse)
library(plotly)
library(caret)
library(shiny)
library(openintro)
library(gridExtra)
library(RCurl)
library(maps)
x <-
    getURL(
        "https://raw.githubusercontent.com/tschwebke/tschwebke.github.io/master/Beers.csv"
    )
y <-
    getURL(
        "https://raw.githubusercontent.com/tschwebke/tschwebke.github.io/master/Breweries.csv"
    )

beers_df <- read.csv(text = x)
breweries_df <-
    read.csv(text = y)
brewery_dupes <-
    as.character(breweries_df[which(duplicated(as.character(breweries_df$Name))), "Name"]) # Check for duplicates  breweries names
breweries_df %>% filter(Name == "Summit Brewing Company")  # Brew_ID, City (St. Paul, St Paul)
breweries_df %>% filter(Name == "Lucette Brewing Company") # Brew_ID, City (Menominee, Menominie)

breweries_df$City <-
    str_replace_all(breweries_df$City, "St. Paul", "St Paul") ## sync spelling
breweries_df$City <-
    str_replace_all(breweries_df$City, "Menominee", "Menominie") ## sync spelling

beer_brewery_merged_df <-
    merge(beers_df, breweries_df, by.x = "Brewery_id", by.y = "Brew_ID")
beer_brewery_merged_df <-
    beer_brewery_merged_df %>%  mutate(IBU = ifelse(is.na(IBU) |
                                                        is.na(ABV), 0, IBU)) # replace all empty and NA value by zero.
# code added to drop ABV NA's
beer_brewery_merged_df <- beer_brewery_merged_df %>% drop_na(ABV)

states_df <- map_data("state") # get US states and their coordinates
brewery_states_df <-
    breweries_df %>% group_by(State) %>% distinct(Brew_ID) # grouping by State using dplyr package
brewery_count <- aggregate(Brew_ID ~ State, breweries_df, length)
names(brewery_count) <-
    c("State", "Breweries") # replace the col names

brewery_count$region <-
    tolower(abbr2state(brewery_count$State)) # change all region to lower case

brewery_map_df <-
    left_join(states_df, brewery_count, by = "region") # merge state_df and brewery count by region to plot all the state in us map

ui <- fluidPage(# Application title
    sidebarLayout(
        sidebarPanel(
            # Select state
            selectInput(
                "state",
                "Select state to show plot",
                multiple = TRUE,
                choices = sort(beer_brewery_merged_df$State)
            ),
            # Select plots
            selectInput(
                "plot",
                "Select plot type",
                choices = c("Histogram", "Boxplot", "Scatterplot")
            ),
            
            # Select regression line in scatterplot
            selectInput("line", "Add a regression line?", choices = c("Yes", "No"))
        ),
        
        # Show a plot of the generated distribution
        mainPanel(tabsetPanel(
            tabPanel("Plot",
                     fluidRow(
                         splitLayout(
                             cellWidths = "500px",
                             plotOutput("distPlot1", height = "300px", width = "500px"),
                             plotOutput("distPlot2", height = "300px", width = "500px"),
                             column(width = 10)
                         )
                     )),
            tabPanel("Raw Data", tableOutput("BeerData"))
        ))
    ))

server <- function(input, output) {
    # Output Beer data table
    output$BeerData <- renderTable({
        stateFilter <-
            subset(beer_brewery_merged_df,
                   beer_brewery_merged_df$State == input$state)
    })
    # output Beer plots
    output$distPlot1 <- renderPlot({
        stateFilter <-
            subset(beer_brewery_merged_df,
                   beer_brewery_merged_df$State == input$state)
        if (input$plot == "Histogram") {
            stateFilter %>% ggplot(aes(x = ABV)) + geom_histogram(fill = "blue", color =
                                                                      "white") + ggtitle("Histogram ABV")
        }
        else
            if (input$plot == "Boxplot")
            {
                stateFilter %>% ggplot(aes(y = ABV, fill = as.factor(Ounces))) + geom_boxplot() +
                    xlab("Beer Types") + ylab("ABV") + ggtitle("Boxplot of ABV vs Beer Types")
            }
        else
            if (input$plot == "Scatterplot")
            {
                if (input$line == "Yes")
                {
                    p1 <-
                        stateFilter %>% ggplot(aes(x = ABV, y = IBU)) + geom_point(aes(color =
                                                                                           State),
                                                                                   size = 1,
                                                                                   position = "jitter") +
                        geom_smooth(method = lm) + ggtitle("Scatterplot: IBU vs ABV with regression line")
                    grid.arrange(p1, ncol = 1, widths = c(4))
                }
                else
                    if (input$line == "No")
                    {
                        stateFilter %>% ggplot(aes(x = ABV, y = IBU)) + geom_point(aes(color = State),
                                                                                   size =
                                                                                       1,
                                                                                   position = "jitter") +
                            ggtitle("Scatterplot: IBU vs ABV no regression line")
                    }
            }
    })
    
    output$distPlot2 <- renderPlot({
        stateFilter <-
            subset(beer_brewery_merged_df,
                   beer_brewery_merged_df$State == input$state)
        if (input$plot == "Histogram")
        {
            stateFilter %>% ggplot(aes(x = IBU)) + geom_histogram(fill = "orange", color  =
                                                                      
                                                                      "black") + ggtitle("Histogram IBU")
        }
        else
            if (input$plot == "Boxplot")
            {
                stateFilter %>% ggplot(aes(y = IBU, fill = as.factor(Ounces))) + geom_boxplot() +
                    xlab("Ale Types (IPA or ALE)") + ylab("IBU") + ggtitle("Boxplot of IBU vs Ale Type")
            }
    })
}
shinyApp(ui, server)
