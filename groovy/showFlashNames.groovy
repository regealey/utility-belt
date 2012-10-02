#!/home/itrxe01/sdks/groovy/bin/groovy
list = "lsof -n".execute().text.split('\n').findAll{it.contains("Flash")}
println "Found ${list.size()} items"


items = list.collect{ x -> 
item = x.split(' ').findAll{it.size() > 0}
 "/proc/${item[1]}/fd/${item[3].substring(0, 2)}"

}

items.each{ println it}
