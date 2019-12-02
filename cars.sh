#! /bin/bash
#cars.sh
#Preston Backes
X=0
while [ "$X" -lt "1" ]
do
    echo "Enter your options:"
    echo "Type 1 to enter a car"
    echo "Type 2 to list the cars you have entered"
    echo "Type 3 to quit"
    read -r input
	

    case $input in
        1)
            echo "You wish to enter a new car"
            echo "What is its year?"
            read -r car_year
            
            echo "What is its make?"
            read -r car_make
            
            echo "What is its model?"
            read -r  car_model

            car_data="$car_year:$car_make:$car_model"
	    echo touch car-output.txt
            echo "$car_data">>car-output.txt;;
        2)
            echo "You wish to display car collection:"
            sort car-output.txt;;
        3)
            echo "You wish to quit, goodbye."
            X=$1;;
    esac
done
