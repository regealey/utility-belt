
import ClipboardUtils


def dumpMap(m) {
    m.each{k, v ->  printf("%-5s \t %.8f\n",[k,v])}
}

//f = new File("raw.txt")
//lines = f.readLines()
 lines = ClipboardUtils.getClipboardContents().split("\n")

list = lines.findAll{it =~ /^(BT|CL|FCT|DASH|DOGE|ETH|MAID|STR|XMR)/}

feesMap = list.findAll{!it.contains("Cancel")}*.split("\t").findAll{it.size()>4}.collect{
  [it[0],it[it.size()-1].split(' ')[0]]
}.groupBy{it[0]}

// collect fee lines 

totsMap = list*.split("\t").findAll{it.size()>4}.collect{
   [it[0],it[2]]
}.groupBy{it[0]}

totsMap.keySet().each{ totsMap[it] = totsMap[it].collect{v -> Double.parseDouble(v[1])}.sum()}
feesMap.keySet().each{ feesMap[it] = feesMap[it].collect{v -> Double.parseDouble(v[1])}.sum()}

dumpMap(totsMap)
println "\nestimated Fees"
dumpMap(feesMap)


println "----------------------------"
