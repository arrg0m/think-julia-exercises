function ispalindrome(str)
    return str == str[end:-1:1]
end

function condition(num)
    return ispalindrome(string(num)[3:6]) && ispalindrome(string(num+1)[2:6]) && ispalindrome(string(num+2)[2:5]) && ispalindrome(string(num+3))
end


function execute()
    for num in 100000:999999
        if condition(num)
            println(num)
        end
    end
end
