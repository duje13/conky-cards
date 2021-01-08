function conky_cpus()
    local file = io.popen("grep -c processor /proc/cpuinfo")
    local numcpus = file:read("*n")
    file:close()
    listcpus = ""
    for i = 1,numcpus
     do listcpus = listcpus.."${color3}Core "..tostring(i)..": ${cpu cpu"..tostring(i).."}% ${alignr}${color1}${cpubar cpu"..tostring(i).." 6,140}\n"
    end

    return listcpus
end