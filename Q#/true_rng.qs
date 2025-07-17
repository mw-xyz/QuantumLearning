// Programs are always run from the Main operation
// Or @EntryPoint identifier
// There are types like Qubit and Result (1 or 0) as well.

// Imports work like Bingle.Bongle.* or Bingle.Bongle.Meow, ...
// We can use Std instead of Microsoft.Quantum (standard library)

// To allocate bits you use use [name] = Qubit() or Qubit(n)
// And make sure to reset the qubit before you close

operation Main(): Result {
    use q1 = Qubit();
    H(q1);
    let result = M(q1);
    Reset(q1);
    return result
}   