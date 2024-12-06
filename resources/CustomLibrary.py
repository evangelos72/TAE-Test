class CustomLibrary:

    def modify_list(self, original_list, string1='', string2=''):
        if (not string1 or not string1.strip()) and (not string2 or not string2.strip()):
            return original_list
        elif not string1 or not string1.strip():
            modified_list = [x + '-' + string2 for x in original_list]
            return modified_list
        elif not string2 or not string2.strip():
            modified_list = [string1 + '-' + x for x in original_list]
            return modified_list
        
        modified_list = [string1 + '-' + x + '-' + string2 for x in original_list]
        return modified_list