
from typing import List

class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:

        # Set Loop values 
        common_prefix = ''
        max_number_of_words = len(strs)
        prefix_count = 0
        count = 0
        db = {}

        if len(strs) == 1:
            for str in strs:
                common_prefix = str
                #print(common_prefix)

        # Loop thru each word in the List
        else:
            for str in strs:
          
                # Loop thru each word's length, Flower = 6
                for num in range(0,len(str)):
                    this_prefix = (str[:num + 1])

                    for nextstr in strs:
                        if this_prefix == nextstr[:num+1]:
                            prefix_count = prefix_count + 1
               
                    if prefix_count > 1:
                        db[this_prefix]=prefix_count
                       
                    # Reset Prefix Count
                    prefix_count = 0

            # Filter dictionary
            filtered_db = {prefix: count for prefix, count in db.items() if count > 1}        
            longest_key = max(filtered_db.values(), default=0)
            copy_db = {prefix: count for prefix, count in filtered_db.items() if count == max_number_of_words}
            longest_string = max(copy_db, default="")

            #print(longest_key, longest_string)
            #print(copy_db)

            common_prefix = longest_string

        print('Number of words:', max_number_of_words)
        print('Common prefix is:',common_prefix)

        # Return commonprefix
        #print(common_prefix)
        return common_prefix

# Create instance of tte class
instance = Solution()

# Create List
input_list = ["aa","aa","aa"]

# Call Function with list
result = instance.longestCommonPrefix(input_list)
print(result)
