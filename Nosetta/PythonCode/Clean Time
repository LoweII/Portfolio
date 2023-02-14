# This segment will clean the code by seperating the dateTime into seperate columns for the data and the time
# The time will be turned into an int and turned into just the hour rounded down to make future analysis easier


# Create a copy to not mess with master Data 
cleanTimeData = nosettaIGData.copy()


# Getting the data from a series to strings
dateString = ""
for date in cleanTimeData.Date:
    dateString = dateString + str(date) + ","
    
    
# Splitting the acquired string into each seperate dateTime
sepDate = dateString.split(",")

postDate = []
postTime = []


# ignore this next line used for alignment
sepDate.pop()


# Traversing the list of seperated dateTimes to seperate the date and time
for i in range(len(sepDate)):
    tempHold = sepDate.pop().split(" ")
    postDate.append(tempHold[0])
    postTime.append(tempHold[1])
    i = i + 1


# reverse to make the order correct
postDate.reverse()
postTime.reverse()


# Making the time from 17:28 to 17 to make calculation by hour easier and more readable
tempHourInt = [];
for hour in postTime:
    realHour = hour[0:2] 
    tempHourInt.append(int(realHour.replace(":", "")))

    
# Inserting the clean data back into a dataset   
cleanTimeData['Date'] = postDate
cleanTimeData.insert(7, "Time", tempHourInt)



cleanTimeData.to_csv('Clean-Time-Data.csv')


cleanTimeData.columns.values[0] = 'ID'
cleanTimeData
