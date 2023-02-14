# This next segment is going to take all the tags calculate the count, total likes, average likes, per tag
# Then share it in a dataframe
# This will also calculate a new column in the main dataframe that will be named "NumTags"
# This will be the number of hashtags that each post contains
# Very similar to the previous segment



# This will take the mentions from the dataframe
# and will make it into a list of list of strings: the mentions
tagList = [];
for tag in noOutlierDataset.Hashtags:
    tagList.append(cleanString(tag))



# Will make the list of list of tag into one list that will
# have all the mentions with no repeats
# this will include an empty string to see the interaction posts get with no tag
#
# This will also create three more lists to make the size the same as the singleList for indexing
# tagTotalLikes will keep track of the total likes each tag gets
# tagTotalCount will keep track of each instance of the tag
# tagAverageLikes will keep track of average likes per tag
tagTotalLikes =[];
tagTotalCount = [];
tagAverageLikes = [];
singleListTag = [];

for tempVar in tagList:
    for tagInListsList in tempVar:
        if tagInListsList not in singleListTag: 
            singleListTag.append(tagInListsList)
            tagTotalLikes.append(0)
            tagTotalCount.append(0)
            tagAverageLikes.append(0)



# Will get each post and take not of the likes the tag get
# and the count of each tag. so we can calculate average

for index in range(len(noOutlierDataset)):
    currPost = noOutlierDataset.loc[index]
    likesPerPost = currPost[1];
    tagPerPost = cleanString(currPost[4])
    
    for tempTag in tagPerPost:

        theTagIndex = singleListTag.index(tempTag)

        tagTotalLikes[theTagIndex] = tagTotalLikes[theTagIndex] + likesPerPost
        tagTotalCount[theTagIndex] = tagTotalCount[theTagIndex] + 1
        
        
        
# It will also count the number of tag per post
tagCountPerPost = [];
for index in range(len(newLinesData)):
    tempTagPerPost = cleanString(newLinesData.loc[index][4])
    # creating the extra column in the main data set
    if (tempTagPerPost == ['']):
        tagCountPerPost.append(0)
    else:
        tagCountPerPost.append(len(tempTagPerPost))



# will fill the average likes per mention
# will round down because you can not have a post with .4 likes
for index in range(len(tagTotalCount)):
    tagAverageLikes[index] = math.floor(tagTotalLikes[index] / tagTotalCount[index])

    
    
# Putting the newly found data together and outputting it into a new file
tempDataTag = {'Tags' : singleListTag, 'Count': tagTotalCount, 'Total-Likes': tagTotalLikes, 'Average-Likes': tagAverageLikes}    
tagsData = pd.DataFrame(tempDataTag)
tagsData.to_csv("Tags-Data.csv")
    



tagsData
