# This segment will be the segment that breaks down the caption
# it will be broken down by 
# The caption: which means no unneeded lines or hashtags or mentions that are clearly seperated
# Lines: this will be the number of lines per specfiic part of the caption

# Example of a caption:
#
# Ready to go out to celebrate !! ( this is The caption)
# .
# .             (this is the lines before the mentions)
# .
# @example @example
# .
# .              (this is the lines before the tags)
# .
# #example #example #example 
# #example #example #example    (this is the lines in tags)


# Create a duplicate to not ruin previous work
newLinesData = cleanTimeData.copy()



# Create lists that will hold the value of the number of lines designated

# This will just be the caption cleaned
postRealCaption = [];

# Lines in the caption
postLinesCaptions = [];

# Lines after caption before mentions
postLinesBeforeMentions = [];

# Lines after mentions before tags
postLinesBeforeHashtags = [];

# Lines in the hashtags
postLinesInHashtags = [];


# Parsing the column to get each caption
for caption in cleanTimeData.Caption:
    
    # Make sure the post has a caption if not add 0's and append an empty string for the caption
    if ( type(caption) == float): # If there is no caption
        postRealCaption.append("")
        postLinesCaptions.append(0)
        postLinesInHashtags.append(0)
        postLinesBeforeMentions.append(0)
        postLinesBeforeHashtags.append(0)
        
    else:   
        

        
        # If there is no seperation between the mentions and tags in the caption
        if (caption.find('\n.') == -1):
            
            # If there is no tags in the caption
            if (caption.find('#') == -1):
    
                #append the caption to be recorded for later
                postRealCaption.append(caption)
        
                # Thus no tags or seperation consider the whole thing to be the caption
                postLinesCaptions.append(caption.count("\n"))
                postLinesInHashtags.append(0)
                postLinesBeforeMentions.append(0)
                postLinesBeforeHashtags.append(0)
                
                
                
            # If there are tags in the caption
            else:


                #Consider this seperator
                if (caption.find("\n\n")):
                    
                    # Indexing 
                    indexOfTag = caption.find("#")
                    indexOfSpace = caption.find("⁠\n⁠\n⁠")

                
                    # Still consider the caption as one since no seperation is found
                    postLinesBeforeMentions.append(0)
                    
                    
                    if (indexOfSpace > indexOfTag):

                        indexOfSecondTag = caption[indexOfTag + 1: ].find("#")
                        postLinesBeforeHashtags.append(caption[indexOfSpace : indexOfSecondTag].count("\n"))
                        
                        #append the caption to be recorded for later
                        postRealCaption.append(caption[0:indexOfSpace])
                        
                        postLinesCaptions.append(caption[0:indexOfSpace].count("\n"))
                        postLinesInHashtags.append(caption[indexOfSpace:].count("\n"))
                            
                        
                    else:
                        postLinesBeforeHashtags.append(caption[indexOfSpace : indexOfTag].count("\n"))
                        
                        #append the caption to be recorded for later
                        postLinesCaptions.append(caption[0:indexOfTag].count("\n"))
                        postLinesInHashtags.append(caption[indexOfTag:].count("\n"))
                        postRealCaption.append(caption[0:indexOfTag])
                
                    
                
                else:
                    # Variable for indexinig
                    indexOfTag = caption.find("#")
                    indexOfSecondTag = caption[indexOfTag + 1: ].find("#")
                
                
                    # If there is a tag in the begining of the caption or not near the end like the others
                    # this takes account for that
                    if (indexOfSecondTag - indexOfTag >= 10):
                    
                        #append the caption to be recorded for later
                        postRealCaption.append(caption[0:indexOfSecondTag])

                        # Still consider the caption as one since no seperation is found
                        postLinesBeforeMentions.append(0)
                        postLinesBeforeHashtags.append(0)
                
                
                        postLinesCaptions.append(caption[0:indexOfSecondTag].count("\n"))
                        postLinesInHashtags.append(caption[indexOfSecondTag:].count("\n"))
                
                
                
                    else:
                        #append the caption to be recorded for later
                        postRealCaption.append(caption[0:indexOfTag])

                        # Still consider the caption as one since no seperation is found
                        postLinesBeforeMentions.append(0)
                        postLinesBeforeHashtags.append(0)
                
                
                        postLinesCaptions.append(caption[0:indexOfTag].count("\n"))
                        postLinesInHashtags.append(caption[indexOfTag:].count("\n"))
                

                
                
            
        # If there is seperation between the mentions and tags in the caption
        else:
            
            # Variables for indexing
            indexOfFirstSep = caption.find('\n.')
            indexOfTag = caption.find("#")
            
            #append the caption to be recorded for later
            postRealCaption.append(caption[0:indexOfFirstSep])
            postLinesCaptions.append(caption[0:indexOfFirstSep].count("\n"))
            
            # Now Check to see if NO mentions are in the post
            if (caption.find('@') == -1):
                
                postLinesBeforeMentions.append(0)
                
                
                postLinesBeforeHashtags.append(caption[indexOfFirstSep: indexOfTag].count("\n"))
                postLinesInHashtags.append(caption[indexOfTag:].count("\n"))
                
            # If there IS mentions in the caption
            else:
                
                # Variable for indexing
                indexOfMentions = caption.find("@")
                
                
                postLinesBeforeMentions.append(caption[indexOfFirstSep: indexOfMentions].count('\n'))
                postLinesBeforeHashtags.append(caption[indexOfMentions: indexOfTag].count("\n"))
                postLinesInHashtags.append(caption[indexOfTag:].count("\n"))
                          
            
            
            
            
                  
            
            
            
             

# This will clean up the captions that had \n and .
for index in range(len(postRealCaption)):
    postRealCaption[index] = postRealCaption[index].replace(".", "")
    postRealCaption[index] = postRealCaption[index].replace("\n", "")
    index = index + 1;

# Make changes to the dataframe

newLinesData['Caption'] = postRealCaption
newLinesData.insert(6, "Lines before Mentions", postLinesBeforeMentions)
newLinesData.insert(7, "Lines before Hashtags", postLinesBeforeHashtags)
newLinesData.insert(8, "Lines in Caption", postLinesCaptions)
newLinesData.insert(9, "Lines in Hashtags", postLinesInHashtags)

newLinesData.to_csv('New-Lines-Data.csv')
newLinesData
