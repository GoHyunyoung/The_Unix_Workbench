CORRECT=false
DIR=$(pwd)
ANSWER=$(ls -p ${DIR}| grep -v ./ | wc -w)

function run {
while [[ ${CORRECT} == false ]]
do
  read -p "How many files in this directory ? Try : " INPUT
  echo ${INPUT}
  if [[ ${INPUT} > ${ANSWER} ]]
  then
    echo "Too high"
  elif [[ ${INPUT} < ${ANSWER} ]]
  then
    echo "Too low"
  else
    echo "Congratulate!"
    CORRECT=true
  fi
done
}

run


