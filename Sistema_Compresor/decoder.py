from file_management import FileManagement
import pprint
import time


# Set this flag in True to increase the logging verbosity
debug_algorithm = False


class Decoder:

    def two_lines_fit_count(self, input_list, pattern):
        if debug_algorithm:
            print("The pattern to look for is ", pattern)
    
        match_positions = []
        idx = 0
        while idx < len(input_list) - 1:

            # Since the hardware decompressor doesn't support having tokens inside other tokens, avoid making
            # replacements when a token is in the pattern
            is_token = isinstance(input_list[idx], int) or isinstance(input_list[idx + 1], int)

            # Perform a replacement only when the two lines match and none of the lines is a token
            if not is_token and (input_list[idx] == pattern[0] and input_list[idx + 1] == pattern[1]):
                match_positions.append(idx)
                idx += 2
            else:
                idx += 1
        
        if debug_algorithm:
            print("There was found the following matches:")
            pprint.pprint(match_positions)
        
        return len(match_positions), match_positions


    # This is the main function of the compressor algorithm.
    # It will produce two files: the compressed code and the conversion table
    def sequitur_algorithm(self, original_list):
        conversion_table = {}
        idx = 0
        list_size = len(original_list)
        while idx < list_size - 1:
            pattern = [original_list[idx], original_list[idx + 1]]
            matches_number, match_positions = self.two_lines_fit_count(
                original_list, pattern)

            if debug_algorithm:
                print("Matches number {}".format(matches_number))

            # To perform a chance, the number of matches must be grater than 1
            if matches_number < 2:
                idx += 1
                continue

            # Perform the replacements according to the matches
            for position, i in zip(match_positions, range(len(match_positions))):
                if debug_algorithm:
                    print("Replacing {} with {}".format(
                        original_list[position], idx))

                # We will assign the iterator as unique identifier,
                # it means a replacement was done withing the list
                original_list[position - i] = idx

                # The list lenght should decrease by one every time a line is
                # removed. This is why a -i is present in the index, because
                # the original index are based on the original list (without
                # lines removed)
                del original_list[position + 1 - i]
            
            # Assign to the conversion table the new pattern that was replaced
            conversion_table[idx] = pattern

            # Sice a replacement was performed, decrease the list size
            list_size -= matches_number
            
            # Increase the loop iterator
            idx += 1

            if debug_algorithm:
                print("Original list:")
                pprint.pprint(original_list)

        return original_list, conversion_table


def run_compressor(file_path, debug, code_summary_flag):
    global debug_algorithm

    # Get the path of the input assembler file to compress
    assembler_file_path = file_path.replace('\\', '/')
    debug_algorithm = debug
    code_summary = code_summary_flag

    # input filename
    file_name = file_path.split('/')[-1]
    
    # Get and prepare the input file
    file_manager = FileManagement()
    file = file_manager.input_file_get(assembler_file_path)
    assembler_list = file_manager.file_list_get(file)
    assembler_list = file_manager.remove_whitespaces(assembler_list)
    assembler_list_original = assembler_list.copy()

    file_manager.input_file_close(file)

    # Perform the compression algorithm over the input file
    decoder = Decoder()
    output_list, pattern = decoder.sequitur_algorithm(assembler_list)

    if(code_summary):
        print("\n\n**********************************************************")
        print(" OUTPUT FILE")
        print("**********************************************************\n")
        pprint.pprint(output_list)
   
        print("\n\n**********************************************************")
        print(" CONVERSION TABLE")
        print("**********************************************************\n")
        pprint.pprint(pattern)

    compressed_file = "./CompressedFiles/" + file_name # path of the output compressed code
    token_table_file = "./CompressedFiles/tokensTable_" + file_name # path of the output tokens table code

    # Creation of the output files
    file_manager.createNewFile(compressed_file, output_list)
    file_manager.createNewFile(token_table_file, pattern, True)

    # Get the compression rates
    original_size = len(assembler_list_original)
    compressed_size = len(output_list)
    for i in pattern:
        compressed_size += len(pattern[i])

    compression_rate = original_size / compressed_size
    space_saving = (1 - compressed_size / original_size) * 100

    # Print out the results
    print("\n\n**********************************************************")
    print("RESULT STATISTICS")
    print("**********************************************************")
    print("Original size: ", original_size)
    print("Compressed size: ", compressed_size)
    print("Compression rate ", compression_rate)
    print("Space saving {} %".format(space_saving))
    print("**********************************************************\n\n")

    return compressed_file, token_table_file


# Function used to get execution time statistics
def execution_time_statistics():
    average = 0
    iterations = 30
    for i in range(iterations):
        start_time = time.process_time()
        run_compressor()
        final_time = time.process_time()
        average += (final_time - start_time)*1000

    print("Elapsed time %s ms" % (average/iterations))

