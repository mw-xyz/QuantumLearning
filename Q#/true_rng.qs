// Programs are always run from the Main operation
// Or @EntryPoint identifier
// There are types like Qubit and Result (1 or 0) as well.

// Imports work like Bingle.Bongle.* or Bingle.Bongle.Meow, ...
// We can use Std instead of Microsoft.Quantum (standard library)

// To allocate bits you use use [name] = Qubit() or Qubit(n)
// And make sure to reset the qubit before you close

operation GenerateBit(): Result {
    use q1 = Qubit(); // Creates a qubit
    H(q1); // Hadamard creates superposition of a qubit
    let result = M(q1); // Measures qubit value
    Reset(q1); // Allows for release
    return result
}   

// Random Number Generator: generates n bits from quantum superposition.
// n can be decided by an input of a number and then find the number of bits
// required to represent that number, do the bits n times and voila.

// operation Main(): Result {
//     mutable bits = [];
//     mutable max = 12;
//     let maxBits = Ceiling(Log2(IntAsDouble(max)));
//     for i in 0..maxBits - 1 {
//         pass
//     }
//     mutable result = ;
//     return result;
// }

// Will attempt using Python normally for my ego
