# Test for comment alignment in multiline functions
set(arg1 # comment 1
    arg2 # comment 2
    arg3 # comment 3
)

set(short              # short comment
    medium_arg         # medium comment
    very_long_argument # long comment
)

function(
    my_function
    param1 # parameter comment 1
    param2 # parameter comment 2
    param3 # parameter comment 3
)
endfunction()

add_custom_command(
    OUTPUT foo.txt
    COMMAND
        echo "foo" # first command
    COMMAND
        echo "bar" # second command
    DEPENDS
        input.txt  # dependency comment
)

# Test with mixed commented and non-commented arguments
set(arg1 # comment for arg1
    arg2
    arg3 # comment for arg3
    arg4
)
