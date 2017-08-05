#!/bin/bash

awk '{
        grade = ($2 + $3 + $4)/3;
        if(grade >= 80) grade = "A";
        else if(grade >= 60) grade = "B";
        else if(grade >= 50) grade = "C";
        else grade = "FAIL";
        
        print $0,":",grade;
     }'