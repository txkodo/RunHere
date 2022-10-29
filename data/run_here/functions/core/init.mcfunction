forceload add 0 0

data modify storage run_here: version set value "1"

#define storage run_here:

#define objective RunHere
scoreboard objectives add RunHere dummy

#define tag RunHere1
#define tag RunHere2

#define score_holder $i
#define score_holder $ih
#define score_holder $il

#define score_holder $o
#define score_holder $oh
#define score_holder $ol

kill @e[tag=RunHere]

summon marker 0.0 0.0 0.0 {Tags:[RunHere,RunHere1]}
summon marker 0.0 0.0 0.0 {Tags:[RunHere,RunHere2]}
summon marker 0.0 0.0 0.0 {Tags:[RunHere,RunHere3]}
summon marker 0.0 0.0 0.0 {Tags:[RunHere,RunHere4]}
summon marker 0.0 0.0 0.0 {Tags:[RunHere,RunHere5]}
summon marker 0.0 0.0 0.0 {Tags:[RunHere,RunHere6]}