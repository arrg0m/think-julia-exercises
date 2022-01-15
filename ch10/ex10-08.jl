include("ch10-07.jl")

function birthdayparadox(num_students, num_trials)
    num_duplicates = 0
    for itr in 1:num_trials
        birthdays = [rand(1:365) for idx = 1:num_students]
        if hasduplicates(birthdays)
            num_duplicates += 1
        end
    end
    return num_duplicates / num_trials
end
