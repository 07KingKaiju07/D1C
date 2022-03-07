actor {
    // Challenge 1 : Write a function add 
    // that takes two natural numbers n and m 
    // and returns the sum
    public func add(n : Nat, m : Nat) : async Nat {
        return (n+m);
    };
    // Challenge 2 : Write a function square
    // that takes a natural number n 
    // and returns the area of a square of length n.
    public func square(n : Nat) : async Nat {
        return (n*n);
    };
    // Challenge 3 : Write a function days_to_second 
    // that takes a number of days n and returns 
    // the number of seconds.
    public func days_to_second(n : Nat) : async Nat {
        return (n*24*60*60);
    };
    // Challenge 4 : Write two functions 
    // increment_counter & clear_counter:
        // - increment_counter returns the incremented value
        // of counter by n.
    var counter = 0;
    public func increment_counter() : async Nat {
        counter += 1;
        return counter;
    };
        //- clear_counter sets the value of counter to 0. 
    public func clear_counter() : async Nat {
        counter := 0;
        return counter;
    };
    // Challenge 5 : Write a function divide 
    // that takes two natural numbers n and m 
    // and returns a boolean indicating if n divides m.
    public func divide (n : Nat, m : Nat) : async Bool {
        if (n % m == 0) {
            return (true);    
        } else {
            return (false);
        };
    };
    // Challenge 6 : Write a function is_even 
    // that takes a natural number n 
    // and returns a boolean indicating if n is even.
    public func is_even(n : Nat) : async Bool {
        if (n % 2 == 0) {
            return (true);    
        } else {
            return (false);
        }; 
    };
    // Challenge 7 : Write a function sum_of_array
    // that takes an array of natural numbers 
    // and returns the sum. 
    // This function will returns 0 if the array is empty.
    let example_array : [Nat] =[1,2,7,];
    public func sum_of_array(array : [Nat]) : async Nat {
        if(array.size() == 0) {
            return (0);
        };
        var counter : Nat = 0;

        for(value in array.vals()) {
            counter := counter + value;
        };
            return (counter);
        };
    // private function
    // 
    private func print_sum_of_existing_array(array : [Nat]) : Nat {
        var counter : Nat = 0;
        for(value in array.vals()) {
            counter := counter + value;
        };
            return (counter);
    };
    public func test() : async Nat {
        return (print_sum_of_existing_array(example_array));
    };
    // Challenge 8 : Write a function maximum
    // that takes an array of natural numbers
    // and returns the maximum value in the array. 
    // This function will returns 0 if the array is empty.
    //let array2 : [Nat] = [1, 2, 3, 5, 6, 7];
    public func maximum(array2 : [Nat]) : async Nat {
        if (array2.size() == 0) {
            return (0);
        };
        var max_array : Nat = 0;
        for (value in array2.vals()){
            if (max_array < value) {
                max_array := value;
            };
        }; 
        return (max_array);
    };
    // Challenge 9 : Write a function remove_from_array 
    // that takes 2 parameters : an array of natural numbers and a natural number n
    // and returns a new array where all occurences of n have been removed
    // (order should remain unchanged).  
    public func remove_from_array(array3 : [Nat], n : Nat) async Nat {
        var new_array : [Nat] = []
        for (value in array3.vals()) {
           if (value != n) {
               new_array := array3.append<nat>(new_array, [n])      
           };
        };
        public func test2() : async () {
            for (value2 in new_array.vals()){
                Debug.print(debug_show(value2))
            }
        }
    }
    ////////////
    /// let array : [Nat] = [1, 2, 3, 4, 5];
    /// public func test2() : async () {
    ///    for (value in array.vals()){
    ///        Debug.print(debug_show(value))
    ///    };
    ///};

};