// https://learn.microsoft.com/en-us/training/modules/explore-superposition/5-explore-superposition-qsharp

import Std.Diagnostics.*;
import Std.Math.*;
import Std.Convert.*;
import Std.Arrays.*;
// DumpMachine function gives information about the current quantum system

operation BalancedQubit(): Result{
    use q = Qubit();
    let P = 0.333333333;
    Ry(2.0 * ArcCos(Sqrt(P)), q);

    Message(" ");
    DumpMachine();
    let randomBit = M(q);
    Message("Measured bit:");
    Message(" ");
    DumpMachine();
    Reset(q); // Allows other operations to use it
    Message("Qubit after resetting:");
    Message(" ");
    DumpMachine();
    return randomBit
}

// Code sample
operation Main() : Int {
    use qubits = Qubit[3];
    ApplyToEach(H, qubits);
    Message("The qubit register in a uniform superposition: ");
    DumpMachine();
    let result = ForEach(M, qubits);
    Message("Measuring the qubits collapses the superposition to a basis state.");
    DumpMachine();
    ResetAll(qubits);
    return BoolArrayAsInt(ResultArrayAsBoolArray(result));
}