# Nosetta Dashboard Project

## Overview
To help a growing business, Nosetta, I decided to help with the analytics of her brand’s Instagram page. After extracting the data from the Instagram page, I then put it into python to clean the dataset and transform it into usable data. I then loaded it into Excel and SQL to acquire results to improve the interactions of the Instagram page. 
## Extraction
To extract the data from the Instagram page, I used instaloader. Instaloader is a python library meant to scrap pages on Instagram. From the scrape I then put the data into a dataFrame to be sorted and exported.
## Transforming
While transforming the data there was not too many issues that occurred. The biggest thing was trying to break up the caption that was written from the mentions and hashtags. Since the mentions and hashtags were already stored in another column. As well as taking note of the lines before the mentions and the tags as we as in the caption itself. Another thing that had to be watched out for was outliers. Since some posts were outliers, it made the dashboards and results very skewed.
## Loading
The best tools to load the dataFrame into was excel and SQL. I used SQL to figure out some of the better options for hashtags, and mentions while restricting the minimum times used. The rest of the analysis could be done by excel’ s pivot tables. Using the pivot table I created 5 graphs that help in choosing the right parameters when posting to get as much interaction as the post can. Then turning the 5 graphs into a dynamic dashboard to bring all the results into screen.
## Results
According to the data, if a post with 4 lines before the 2 mentions and 3 lines after that for 30 tags is posted at 8:00 pm CET 

(Caption will go here)
.
.
.
@mention1 @mention2
.
.
#tag1#tag2 #tag3 …
 #tag29 #tag30 (There should be 8 rows of tags)

