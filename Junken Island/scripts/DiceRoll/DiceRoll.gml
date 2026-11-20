///@description A dice roll that returns from 1 -> endValue.
///@param INT endValue - The last value the die rolls.
function DiceRoll(endValue){
	randomize();
	return irandom_range(1,endValue);
}

///@description A weighed diceRoll that is more likely to return a certain set of values.
///@param INT endValue - The last value the die rolls.
///@param ARRAY[REAL] weights - How heavily a value is weighted.

//Example: If weights equaled [0.1,0.1,0.3,0.3,0.1,0.1], then:
//40% chance to return 1, 2, 5, or 6
//60% chance to return 3 or 4
function WeighedDiceRoll(endValue,weights){
	randomize();
	var value = irandom_range(1,1000);
	var count = 0;
	for(var i = 0; i < array_length(weights); i++) {
		count += 1000*weights[i]
		if(value < count) {
			return (i+1);
		}
	}
	return endValue;
}