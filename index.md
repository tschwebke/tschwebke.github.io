---
title: "Home"
author: "Thad Schwebke"
date: "3/21/2020"
output: html_document
---

[Beer Shiny App]:https://tschwebke.shinyapps.io/Beer/

## Instructions 
You can assume that your audience is the CEO and CFO of Budweiser (your client) and that they only have had one class in statistics and have indicated that you cannot take more than 7 minutes of their time. 20% of your grade will be based on the presentation. 

They have hired you to address the 9 questions / items described in the next section. Beyond those general questions you may and should speculate / anticipate what may be of interest to them.  

## Deliverables
A.  A GitHub repository (Due Saturday March 7th 11:59pm CST)

The GitHub repo should contain the following items and a link to the GitHub repo should be placed on a Word Doc (or PDF) and submitted to 2DS for Unit 8.  

The final repo which will be checked after 11:59pm CST March 7th should contain: 	

1.  An RMarkdown file containing the following:


  a.	The introduction needs to be written as if you are presenting the work to the CEO and CFO of Budweiser (your client) and that they only have had one class in statistics.  If it sounds like a student presentation, that is not acceptable.  You may assume that the CEO and CFO gave you the data and gave you the directive to report any interesting finding that you may uncover through your analysis.
  
  b.	Briefly explain the purpose of the code. The explanations should appear as a sentence or two before or after the code chunk. Even though you will not be hiding the code chunks (so that I can see the code), you need to assume that the client can’t see them.

  c.	Use R to address the 9 questions / items below:


1.   How many breweries are present in each state?

2.   Merge beer data with the breweries data. Print the first 6 observations and the last six observations to check the merged file.  (RMD only, this does not need to be included in the presentation or the deck.)

3.   Address the missing values in each column.

4.   Compute the median alcohol content and international bitterness unit for each state. Plot a bar chart to compare.

5.   Which state has the maximum alcoholic (ABV) beer? Which state has the most bitter (IBU) beer?

6.   Comment on the summary statistics and distribution of the ABV variable.

7.   Is there an apparent relationship between the bitterness of the beer and its alcoholic content? Draw a scatter plot.  Make your best judgment of a relationship and EXPLAIN your answer.

8.  Budweiser would also like to investigate the difference with respect to IBU and ABV between IPAs (India Pale Ales) and other types of Ale (any beer with “Ale” in its name other than IPA).  You decide to use KNN classification to investigate this relationship.  Provide statistical evidence one way or the other. You can of course assume your audience is comfortable with percentages … KNN is very easy to understand conceptually.

In addition, while you have decided to use KNN to investigate this relationship (KNN is required) you may also feel free to supplement your response to this question with any other methods or techniques you have learned.  Creativity and alternative solutions are always encouraged.  

9. Knock their socks off!  Find one other useful inference from the data that you feel Budweiser may be able to find value in.  You must convince them why it is important and back up your conviction with appropriate statistical evidence. 

Directives on RMD File: 
i. 	Give clear, explicit answers to the questions. Just the code to answer the questions is not nearly enough, even if the code is correct and gives the correct answer. You must state the answer in a complete sentence outside the code chunk.

ii.	Conclusion to the project. Summarize your findings from this exercise. The file must be readable in GitHub. In other words, don’t forget to keep the md file!!

2. Knit HTML file.  
In fact, you will also upload the knit html file to GitHub as well.  This will allow for plots and tables to supplement your answers (part e) to the 7 questions below.  You are already making an Rmd file, we should take advantage of it and knit a nice presentation of the project!  

3. Codebook, Both CSV files and a ReadMe.md
The Readme file describes the purpose of the project and codebook. The repo can be structured however you like, but it should make sense and be easily navigated.

4. PPT Slides 
Described more below and should have the link to your You Tube presentation … described further below as well.) 

B. UNIT 8 Live Session: EDA
Each team will need to meet with the professor and present their EDA in Unit 8.  It is up to the teams and the professor when and how to set up these meetings.  They may be during the schedule live session time, but given time constraints, some teams will need to schedule times outside of their scheduled live session time.  With that said, these are one on one meetings between each team and the professor.  Your only scheduled time commitment in Unit 8 is to attend this 10ish minute meeting with your professor.  The rest of the time is reserved to work on your project with your partner. 
Your goal is to present your EDA (Answers to Questions 1,3,4,5,6,7).  At this point, teams should have presentation quality slides and presentation prepared.  Responses to each of the questions listed above should be prepared and addressed in this meeting.  

The grade for this portion is based on the slide deck and the presentation.  If the team is prepared and delivers a well-practiced presentation it should be easy to earn close to a 100% here.  

B.  Unit 9 Live Session: Q & A.  
During Live Session for Unit 9, the professor will be available for a live Q & A about the project / presentation.  Attendance at this live session is not required (attendance is optional).  NOTE ABOUT POWERPOINT …   You may use the same powerpoint or develop them separately.  I would imagine that even if you develop the powerpoint together that each student’s final powerpoint will be a little different just based on individual presentation style.  Everyone has their own unique style and delivery.  

C. Final YouTube Video
Each team member will need to record and upload to YouTube a 7-minute or less presentation of your findings.   At this point you should know your presentation backwards and forwards.  If you trip up too much in your recording, you should start over until you have a very polished presentation that does not exceed 7 minutes.  

To record you can download Camtasia (free trial) which is a video software available at https://www.techsmith.com/video-editor.html
or use your preferred screen capture software (like QuickTime if you have a Mac.) The presentation slides that include a link to your video should be in the Case Study Github repo as well as on the Google Doc provided by your professor. The goal is to communicate the findings of the project in a clear, concise and scientific manner.  Also, uploading to YouTube is not difficult.  Here is a YouTube video to help:  https://www.youtube.com/watch?v=VtF2AgFSLAw
Your professor will make the Google Doc link available to everyone in the class so that your peers can benefit from your work and so that you can benefit from theirs.  Student’s presentation links will be available for a week at which time you may take your video off of YouTube if you wish.

## Collaboration and Peer Review
This will be a team project. We expect that all team members will do equal work and give their best to advance the knowledge of both themselves and their teammate.   All members will need to push, add, commit, and pull to GitHub.  This is a collaborative project, be sure and communicate early and often; mutual respect is key. 

You will be providing two peer reviews that will be submitted to 2DS in Unit 8 and Unit 9 under:   Project 1: EDA and Peer Review (by Saturday Feb 29 11:59pm / Unit 8) and Project 1: Final Documentation, Presentation and Peer Review Assignment (by Saturday March 7 11:59pm / Unit 9) .  See the Rubric for detailed information on the peer review.  


# Conclusion
## DDS- Project-01 Summary: 
  
The primary objective of our project is to take two different dataset, beer data set containing a list of 2410 US crafts beers and breweries dataset containing 558 breweries an perform analysis. We transformed the data in CVS format into data frame using R-programming, inspected and analyzed the structure of the data, merged the two data frames, and performed analysis on the merged final data set.

As Data Scientist, it is very rare that we get to work only on a single perfect data. A large percentage of work is to accept different datasets and merge them into one final data frame before processing as it is illustrated in our project. After analyzing the data, statistical inference is then made.

The objective of our project is to provide some valuable information such as summary of two dataset, relation between International Bitterness Unit (IBU) and Alcohol By Volume (ABV), number of breweries in each state and how can be an important to Budweiser, and to compute the median and max IBU and ABV. 

Based on our team’s analysis, we found that majority of breweries appears to be clustered towards the west of the Mississippi river with California and Colorado being the top two states. Why do these states mostly CO has the highest number of Breweries? Water is the secrete ingredients making CO the top state for breweries in the world and also making 2017 gold medal winner. The water alone contains about 80-90% of water chemistry needed to make the best beers. CO water has the perfect mix of magnesium, sodium, sulfates, bicarbonates and calcium which determines the hardness of water and ultimately its suitability for brewing great testing beers. Hence, we believe that Budweiser should consider thinking about CO in their next project. 

Other state of interest, New Hampshire which we believe has the high potential for growth has the highest beer consumers due to no beer sale tax but do not have much breweries. Utah on the other hand has the lowest beer consumer and only allows ABV <4 % which could be due to it being a Mormon state. We were surprised at Nevada, being the home of Las Vegas has only two breweries. North and South Dakota are lowest in the number of breweries but are one of the highest in beer consumption capita. 

Our computation of the median IBU and ABV for each state shows that median IBU appears to vary considerably between the states. However, West Virginia falls in the middle with median IBU 37 and Arkansas at the bottom with IBU 7.8.  On the other hand, median ABV per state appears somewhat consistent, with Nevada being in the middle with median ABV of 0.0669 which kind of make sense because people who visit Las Vegas majority of the time likes to get drunk, gamble and enjoy their time. Utah again, being the lowest beer consumer also has the lowest ABV of 0.051. In term of Max ABV, all the state appears to have only a small variance. Colorado has the max ABV of 0.128 and Delaware the lowest at 0.055. 

IBU which stands for International Bitterness Units, a measure of the bitterness in beer. There is a saying spicier the better, same applies to the beers as well. Bitter the beer better is the taste. The bitterness in beer terms mean better flavor which is produced by adding aroma hop flowers. According to CNBC news, the reason for rise in craft beer sales is its high IBU among the home brewing company that’s growing from garage to thriving commercial company. Our analysis shows that max IBU by states appears to vary between the state ranging from 138 to 0, with Oregon being the highest (138) and Arkansas the lowest (44.11). The reason we believe Oregon has the highest IBU is because Oregon is known for homemade craft beer and they also add high-grade marijuana in their craft beers. However, according to new law, started in Jan 2020, they are avoiding THC or CBD in their beers due to health concern. Arkansas stands at the bottom for IBU. 

In a nutshell, our analysis of relationship between ABV and IBU shows that there is somewhat positive linear relation. In general, as the ABV rises so does the bitterness. IPA type has the highest ABV compared to other type also higher the Ounces higher the ABV. 

Ref: 
https://www.cnbc.com/2014/07/03/state-of-hopiness-how-many-ibus-in-your-ipa.html
https://apnews.com/640bcd2970430a6cdaa7c37166dac1c9S
```

