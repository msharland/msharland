
class Solution:
    def lengthOfLastWord(self, s: str) -> int:
        mystring=s.rstrip()
        mystrings=mystring.split(" ")
        mylast=mystrings[-1]
        output = len(mylast)
        #print(output)
        return output

# Create Instance
instance = Solution()

string = "I own a rare awesome vintage hard-cover encylopedia"

result = instance.lengthOfLastWord(string)
print('The length of the last word is:',result)
