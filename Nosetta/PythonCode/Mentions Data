# This segment will calculate the total count, total likes, and average likes of each mention
# Then it will put it into a dataframe to be used for data analysis
# This will also calculate a new coloumn in the main dataframe named 'NumMentions'
# This will be the number of mentions in each post
# We will use the dataset with no outliers

noOutlierDataset = pd.DataFrame(columns = newLinesData.columns)

for index in range(len(outlierList)):
    if outlierList[index] == 0:
        noOutlierDataset.loc[len(noOutlierDataset)] = newLinesData.loc[index]
        

# cleanString param will be a string 
# the mention string will be cleaned then outputted as a list of strings: the mentions/tags
# per post
def cleanString(mentionString):
    mentionString = mentionString[2:-2]
    mentionString = mentionString.replace("', '", " ")
    return mentionString.split(" ")
    


# This will take the mentions from the dataframe
# and will make it into a list of list of strings: the mentions
mentionList = [];
for mention in noOutlierDataset.Mentions:
    mentionList.append(cleanString(mention))


# Will make the list of list of mentions into one list that will
# have all the mentions with no repeats
# this will include an empty string to see the interaction posts get with no mentions
#
# This will also create three more lists to make the size the same as the singleList for indexing
# mentionTotalLikes will keep track of the total likes each mention gets
# mentionTotalCount will keep track of each instance of the mention
# mentionAverageLikes will keep track of average likes per mention
mentionTotalLikes =[];
mentionTotalCount = [];
mentionAverageLikes = [];
singleListMention = [];

for tempVar in mentionList:
    for mentionInListsList in tempVar:
        if mentionInListsList not in singleListMention: 
            singleListMention.append(mentionInListsList)
            mentionTotalLikes.append(0)
            mentionTotalCount.append(0)
            mentionAverageLikes.append(0)
  

# Will get each post and take not of the likes the mentions get
# and the count of each mention. so we can calculate average

for index in range(len(noOutlierDataset)):
    currPost = noOutlierDataset.loc[index]
    likesPerPost = currPost[0];
    mentionsPerPost = cleanString(currPost[5])
    
    for tempMention in mentionsPerPost:
        theMentionIndex = singleListMention.index(tempMention)
        mentionTotalLikes[theMentionIndex] = mentionTotalLikes[theMentionIndex] + likesPerPost
        mentionTotalCount[theMentionIndex] = mentionTotalCount[theMentionIndex] + 1

# It will also count the number of mentions per post
mentionCountPerPost = [];
for index in range(len(newLinesData)):
    tempMentionPerPost = cleanString(newLinesData.loc[index][5])
    # creating the extra column in the main data set
    if (tempMentionPerPost == ['']):
        mentionCountPerPost.append(0)
    else:
        mentionCountPerPost.append(len(tempMentionPerPost))
        
        

# will fill the average likes per mention
# will round down because you can not have a post with .4 likes
for index in range(len(mentionTotalCount)):
    mentionAverageLikes[index] = math.floor(mentionTotalLikes[index] / mentionTotalCount[index])

    
    
# Putting the newly found data together and outputting it into a new file
tempDataMentions = {'Mentions' : singleListMention, 'Count': mentionTotalCount, 'Total-Likes': mentionTotalLikes, 'Average-Likes': mentionAverageLikes}    
mentionsData = pd.DataFrame(tempDataMentions)
mentionsData.to_csv("Mentions-Data.csv")

noOutlierDataset
