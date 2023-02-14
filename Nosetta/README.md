# Nosetta Dashboard Project

## Overview
To help a growing business, Nosetta, I decided to help with the analytics of their brand’s Instagram page. After extracting the data from the Instagram page, I then put it into python to clean the dataset and transform it into usable data. I then loaded it into Excel and SQL to acquire results to improve the interactions of the Instagram page. Finished with a dynamic dashboard in excel that can be seen here: https://1drv.ms/x/s!Agn0NXYGHApBgaN11P05E6SjkVgLOQ?e=avbmC3
## Extraction
To extract the data from the Instagram page, I used instaloader. Instaloader is a python library meant to scrap pages on Instagram. From the scrape I then put the data into a dataFrame to be sorted and exported.
## Transforming
While transforming the data there was not a lot of issues that occurred. The biggest thing was trying to break up the caption that was written from the mentions and hashtags, since the mentions and hashtags were already stored in another column it was unneeded. Also taking note of the lines before the mentions and the tags as well as in the caption itself. Another thing that I had to be careful about was outliers. Since some posts were outliers, it made the dashboards and results very skewed.
## Loading
The best tools to load the dataFrame into was excel and SQL. I used SQL to figure out some of the better options for hashtags, and mentions while restricting the minimum times used. The rest of the analysis could be done by excel’ s pivot tables. Using the pivot table I created 5 graphs that help in choosing the right parameters when posting to get as much interaction as the post can. Then turning the 5 graphs into a dynamic dashboard to bring all the results into screen.
## Results
According to the data, if a post with 4 lines before the 2 mentions and 3 lines after that for 30 tags is posted at 8:00 pm CET. Format would look like this:
  
(Caption will go here)  
.  
.  
.  
@mention1 @mention2  
.  
.  
#tag1#tag2 #tag3 …  
#tag29 #tag30 (There should be 8 rows of tags)  

## Limitations
One limitation that was faced during this project was not enough data points. To get a clear idea of what would work best in terms of post ineteractions is to acquire more data, but there was no more data to collect. Another limitation is that there is some bugs in cleaning the caption. For example if there is more than one tag in the caption so " lets #party this #friday" the line counting section will not work correctly. Fortunately, there was no post like that which is why I let this bug stay. Final limitation is that Instagram's algorithim has a unique way of working so sometimes the same post would have different results.
## Future Plans
The future plans for this project would be to acquire even more data from Nosetta's Instagram to futher get a good grasp of what format works best for their followers. Another idea could be to do word analysis on captions to see if certain words in the caption could affect the interactions the post would get. Another idea would be to branch out from Nosetta's Instagram to do analysis on different brand's Instagrams to compare the tags that they used to see if certain tags would work better for Nosetta.
