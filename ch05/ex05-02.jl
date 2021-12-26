function parsetime(timestamp)
    timestampint = trunc(Int64, timestamp)
    days = timestampint ÷ 86400
    hours = (timestampint - days * 86400) ÷ 3600
    minutes = (timestampint - days * 86400 - hours * 3600) ÷ 60
    seconds = timestampint % 60

    days, hours, minutes, seconds
end
