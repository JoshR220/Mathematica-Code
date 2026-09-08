(* ::Package:: *)

(* ::Chapter:: *)
(*Begin*)


(*begin*)
BeginPackage["Basics`"];


(* ::Chapter:: *)
(*Stuff*)


(*turn off messages*)
ParallelEvaluate[
Off[General::munfl];
Off[LaunchKernels::nodef];
Off[InterpolatingFunction::dmval];];


(*import packages*)
Needs["DifferentialEquations`NDSolveProblems`"];
Needs["DifferentialEquations`NDSolveUtilities`"];
Needs["DifferentialEquations`InterpolatingFunctionAnatomy`"];
Needs["Utilities`CleanSlate`"]


(*set directory to research*)
SetDirectory["/Users/claytonho/Documents/Research"];


(*send message when calculation is finished*)
Done[type_:"none",msg_:""]:=With[{soundDJ=Play[Sin[600*\[Pi]*t],{t,0,0.6}],message="Calc Done"},
Switch[type,
"text",SendMessage["SMS",message],
"email",SendMail[<|"To"->"claytonho@g.ucla.edu","Subject"->"Calc Done: "<>ToString[msg],"From"->"claytonho@physics.ucla.edu","Server"->"smtp.physics.ucla.edu","EncryptionProtocol"->"SSL","PortNumber"->465,"UserName"->"claytonho@physics.ucla.edu","Password"->"I2Ic1zIS2R"|>],
"none",EmitSound[soundDJ]];];


(*memory*)
memory:=Row[{"Memory Used: ",MemoryInUse[]/1024^2.," MB"}];


(* ::Chapter:: *)
(*End*)


EndPackage[];
