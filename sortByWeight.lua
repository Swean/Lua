function GetWeight(dest, temp)
    for key, value in pairs(dest) do
        local wgh = 0
        for key2, value2 in pairs(value) do
            if value2 == "a" then wgh = wgh + 1
            elseif value2 == "b" then wgh = wgh + 2
            elseif value2 == "c" then wgh = wgh + 3
            elseif value2 == "d" then wgh = wgh + 4
            end
        end
        temp[key] = {weight = wgh, values = dest[key]}
    end
    print("----after get weight---")
    for key in pairs(temp) do
        print(key, temp[key].weight)
    end
end

function InsertSort(buf, size)
    local inserted = {}
    local ind1 = 2
    local ind2 = ind1
    for i = 2, size do
        inserted = buf[ind1]
        ind2 = ind1
        for j = i, 2, -1 do
            if inserted.weight > buf[ind2 - 1].weight then
                buf[ind2] = buf[ind2 - 1]
            else
                break
            end
            ind2 = ind2 - 1
        end
        if ind1 ~= ind2 then
            buf[ind2] = inserted
        end
        ind1 = ind1 + 1
    end

    print("---------after insert sort-------------")
    for key in pairs(buf) do
        print(buf[key].weight)
    end
end

function SortByWeight(buf)
    local temp = {}
    GetWeight(buf, temp)
    InsertSort(temp, #temp)
    for key in pairs(buf) do
        buf[key] = temp[key].values
    end
end

function PrintTable(buf)
    for key, value in pairs(buf) do
        print(key..":")
        for key2, value2 in pairs(value) do
            print(value2)
        end
    end
end


local table = {{"d"},{"a", "b"}, {"c"}, {"a", "d"}}
PrintTable(table)
SortByWeight(table)
print("-----after sort--------")
PrintTable(table)
