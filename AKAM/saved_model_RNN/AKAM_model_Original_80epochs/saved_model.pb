ќќ3
ьР
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 

BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeэout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
С
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
ї
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
А
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleщшelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleщшelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintџџџџџџџџџ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
А
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.15.02v2.15.0-2-g0b15fdfcb3f8в/
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
­
Adamax/u/dense_52/biasVarHandleOp*
_output_shapes
: *'

debug_nameAdamax/u/dense_52/bias/*
dtype0*
shape:*'
shared_nameAdamax/u/dense_52/bias
}
*Adamax/u/dense_52/bias/Read/ReadVariableOpReadVariableOpAdamax/u/dense_52/bias*
_output_shapes
:*
dtype0
­
Adamax/m/dense_52/biasVarHandleOp*
_output_shapes
: *'

debug_nameAdamax/m/dense_52/bias/*
dtype0*
shape:*'
shared_nameAdamax/m/dense_52/bias
}
*Adamax/m/dense_52/bias/Read/ReadVariableOpReadVariableOpAdamax/m/dense_52/bias*
_output_shapes
:*
dtype0
З
Adamax/u/dense_52/kernelVarHandleOp*
_output_shapes
: *)

debug_nameAdamax/u/dense_52/kernel/*
dtype0*
shape
:2*)
shared_nameAdamax/u/dense_52/kernel

,Adamax/u/dense_52/kernel/Read/ReadVariableOpReadVariableOpAdamax/u/dense_52/kernel*
_output_shapes

:2*
dtype0
З
Adamax/m/dense_52/kernelVarHandleOp*
_output_shapes
: *)

debug_nameAdamax/m/dense_52/kernel/*
dtype0*
shape
:2*)
shared_nameAdamax/m/dense_52/kernel

,Adamax/m/dense_52/kernel/Read/ReadVariableOpReadVariableOpAdamax/m/dense_52/kernel*
_output_shapes

:2*
dtype0
я
,Adamax/u/simple_rnn_277/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *=

debug_name/-Adamax/u/simple_rnn_277/simple_rnn_cell/bias/*
dtype0*
shape:2*=
shared_name.,Adamax/u/simple_rnn_277/simple_rnn_cell/bias
Љ
@Adamax/u/simple_rnn_277/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp,Adamax/u/simple_rnn_277/simple_rnn_cell/bias*
_output_shapes
:2*
dtype0
я
,Adamax/m/simple_rnn_277/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *=

debug_name/-Adamax/m/simple_rnn_277/simple_rnn_cell/bias/*
dtype0*
shape:2*=
shared_name.,Adamax/m/simple_rnn_277/simple_rnn_cell/bias
Љ
@Adamax/m/simple_rnn_277/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp,Adamax/m/simple_rnn_277/simple_rnn_cell/bias*
_output_shapes
:2*
dtype0

8Adamax/u/simple_rnn_277/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *I

debug_name;9Adamax/u/simple_rnn_277/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:22*I
shared_name:8Adamax/u/simple_rnn_277/simple_rnn_cell/recurrent_kernel
Х
LAdamax/u/simple_rnn_277/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp8Adamax/u/simple_rnn_277/simple_rnn_cell/recurrent_kernel*
_output_shapes

:22*
dtype0

8Adamax/m/simple_rnn_277/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *I

debug_name;9Adamax/m/simple_rnn_277/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:22*I
shared_name:8Adamax/m/simple_rnn_277/simple_rnn_cell/recurrent_kernel
Х
LAdamax/m/simple_rnn_277/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp8Adamax/m/simple_rnn_277/simple_rnn_cell/recurrent_kernel*
_output_shapes

:22*
dtype0
љ
.Adamax/u/simple_rnn_277/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *?

debug_name1/Adamax/u/simple_rnn_277/simple_rnn_cell/kernel/*
dtype0*
shape
:22*?
shared_name0.Adamax/u/simple_rnn_277/simple_rnn_cell/kernel
Б
BAdamax/u/simple_rnn_277/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp.Adamax/u/simple_rnn_277/simple_rnn_cell/kernel*
_output_shapes

:22*
dtype0
љ
.Adamax/m/simple_rnn_277/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *?

debug_name1/Adamax/m/simple_rnn_277/simple_rnn_cell/kernel/*
dtype0*
shape
:22*?
shared_name0.Adamax/m/simple_rnn_277/simple_rnn_cell/kernel
Б
BAdamax/m/simple_rnn_277/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp.Adamax/m/simple_rnn_277/simple_rnn_cell/kernel*
_output_shapes

:22*
dtype0
я
,Adamax/u/simple_rnn_276/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *=

debug_name/-Adamax/u/simple_rnn_276/simple_rnn_cell/bias/*
dtype0*
shape:2*=
shared_name.,Adamax/u/simple_rnn_276/simple_rnn_cell/bias
Љ
@Adamax/u/simple_rnn_276/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp,Adamax/u/simple_rnn_276/simple_rnn_cell/bias*
_output_shapes
:2*
dtype0
я
,Adamax/m/simple_rnn_276/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *=

debug_name/-Adamax/m/simple_rnn_276/simple_rnn_cell/bias/*
dtype0*
shape:2*=
shared_name.,Adamax/m/simple_rnn_276/simple_rnn_cell/bias
Љ
@Adamax/m/simple_rnn_276/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp,Adamax/m/simple_rnn_276/simple_rnn_cell/bias*
_output_shapes
:2*
dtype0

8Adamax/u/simple_rnn_276/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *I

debug_name;9Adamax/u/simple_rnn_276/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:22*I
shared_name:8Adamax/u/simple_rnn_276/simple_rnn_cell/recurrent_kernel
Х
LAdamax/u/simple_rnn_276/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp8Adamax/u/simple_rnn_276/simple_rnn_cell/recurrent_kernel*
_output_shapes

:22*
dtype0

8Adamax/m/simple_rnn_276/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *I

debug_name;9Adamax/m/simple_rnn_276/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:22*I
shared_name:8Adamax/m/simple_rnn_276/simple_rnn_cell/recurrent_kernel
Х
LAdamax/m/simple_rnn_276/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp8Adamax/m/simple_rnn_276/simple_rnn_cell/recurrent_kernel*
_output_shapes

:22*
dtype0
љ
.Adamax/u/simple_rnn_276/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *?

debug_name1/Adamax/u/simple_rnn_276/simple_rnn_cell/kernel/*
dtype0*
shape
:22*?
shared_name0.Adamax/u/simple_rnn_276/simple_rnn_cell/kernel
Б
BAdamax/u/simple_rnn_276/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp.Adamax/u/simple_rnn_276/simple_rnn_cell/kernel*
_output_shapes

:22*
dtype0
љ
.Adamax/m/simple_rnn_276/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *?

debug_name1/Adamax/m/simple_rnn_276/simple_rnn_cell/kernel/*
dtype0*
shape
:22*?
shared_name0.Adamax/m/simple_rnn_276/simple_rnn_cell/kernel
Б
BAdamax/m/simple_rnn_276/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp.Adamax/m/simple_rnn_276/simple_rnn_cell/kernel*
_output_shapes

:22*
dtype0
я
,Adamax/u/simple_rnn_275/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *=

debug_name/-Adamax/u/simple_rnn_275/simple_rnn_cell/bias/*
dtype0*
shape:2*=
shared_name.,Adamax/u/simple_rnn_275/simple_rnn_cell/bias
Љ
@Adamax/u/simple_rnn_275/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp,Adamax/u/simple_rnn_275/simple_rnn_cell/bias*
_output_shapes
:2*
dtype0
я
,Adamax/m/simple_rnn_275/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *=

debug_name/-Adamax/m/simple_rnn_275/simple_rnn_cell/bias/*
dtype0*
shape:2*=
shared_name.,Adamax/m/simple_rnn_275/simple_rnn_cell/bias
Љ
@Adamax/m/simple_rnn_275/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp,Adamax/m/simple_rnn_275/simple_rnn_cell/bias*
_output_shapes
:2*
dtype0

8Adamax/u/simple_rnn_275/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *I

debug_name;9Adamax/u/simple_rnn_275/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:22*I
shared_name:8Adamax/u/simple_rnn_275/simple_rnn_cell/recurrent_kernel
Х
LAdamax/u/simple_rnn_275/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp8Adamax/u/simple_rnn_275/simple_rnn_cell/recurrent_kernel*
_output_shapes

:22*
dtype0

8Adamax/m/simple_rnn_275/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *I

debug_name;9Adamax/m/simple_rnn_275/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:22*I
shared_name:8Adamax/m/simple_rnn_275/simple_rnn_cell/recurrent_kernel
Х
LAdamax/m/simple_rnn_275/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp8Adamax/m/simple_rnn_275/simple_rnn_cell/recurrent_kernel*
_output_shapes

:22*
dtype0
љ
.Adamax/u/simple_rnn_275/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *?

debug_name1/Adamax/u/simple_rnn_275/simple_rnn_cell/kernel/*
dtype0*
shape
:22*?
shared_name0.Adamax/u/simple_rnn_275/simple_rnn_cell/kernel
Б
BAdamax/u/simple_rnn_275/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp.Adamax/u/simple_rnn_275/simple_rnn_cell/kernel*
_output_shapes

:22*
dtype0
љ
.Adamax/m/simple_rnn_275/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *?

debug_name1/Adamax/m/simple_rnn_275/simple_rnn_cell/kernel/*
dtype0*
shape
:22*?
shared_name0.Adamax/m/simple_rnn_275/simple_rnn_cell/kernel
Б
BAdamax/m/simple_rnn_275/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp.Adamax/m/simple_rnn_275/simple_rnn_cell/kernel*
_output_shapes

:22*
dtype0
я
,Adamax/u/simple_rnn_274/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *=

debug_name/-Adamax/u/simple_rnn_274/simple_rnn_cell/bias/*
dtype0*
shape:2*=
shared_name.,Adamax/u/simple_rnn_274/simple_rnn_cell/bias
Љ
@Adamax/u/simple_rnn_274/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp,Adamax/u/simple_rnn_274/simple_rnn_cell/bias*
_output_shapes
:2*
dtype0
я
,Adamax/m/simple_rnn_274/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *=

debug_name/-Adamax/m/simple_rnn_274/simple_rnn_cell/bias/*
dtype0*
shape:2*=
shared_name.,Adamax/m/simple_rnn_274/simple_rnn_cell/bias
Љ
@Adamax/m/simple_rnn_274/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp,Adamax/m/simple_rnn_274/simple_rnn_cell/bias*
_output_shapes
:2*
dtype0

8Adamax/u/simple_rnn_274/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *I

debug_name;9Adamax/u/simple_rnn_274/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:22*I
shared_name:8Adamax/u/simple_rnn_274/simple_rnn_cell/recurrent_kernel
Х
LAdamax/u/simple_rnn_274/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp8Adamax/u/simple_rnn_274/simple_rnn_cell/recurrent_kernel*
_output_shapes

:22*
dtype0

8Adamax/m/simple_rnn_274/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *I

debug_name;9Adamax/m/simple_rnn_274/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:22*I
shared_name:8Adamax/m/simple_rnn_274/simple_rnn_cell/recurrent_kernel
Х
LAdamax/m/simple_rnn_274/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp8Adamax/m/simple_rnn_274/simple_rnn_cell/recurrent_kernel*
_output_shapes

:22*
dtype0
љ
.Adamax/u/simple_rnn_274/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *?

debug_name1/Adamax/u/simple_rnn_274/simple_rnn_cell/kernel/*
dtype0*
shape
:2*?
shared_name0.Adamax/u/simple_rnn_274/simple_rnn_cell/kernel
Б
BAdamax/u/simple_rnn_274/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp.Adamax/u/simple_rnn_274/simple_rnn_cell/kernel*
_output_shapes

:2*
dtype0
љ
.Adamax/m/simple_rnn_274/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *?

debug_name1/Adamax/m/simple_rnn_274/simple_rnn_cell/kernel/*
dtype0*
shape
:2*?
shared_name0.Adamax/m/simple_rnn_274/simple_rnn_cell/kernel
Б
BAdamax/m/simple_rnn_274/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp.Adamax/m/simple_rnn_274/simple_rnn_cell/kernel*
_output_shapes

:2*
dtype0

learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0

	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
д
#simple_rnn_277/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *4

debug_name&$simple_rnn_277/simple_rnn_cell/bias/*
dtype0*
shape:2*4
shared_name%#simple_rnn_277/simple_rnn_cell/bias

7simple_rnn_277/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_277/simple_rnn_cell/bias*
_output_shapes
:2*
dtype0
ќ
/simple_rnn_277/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *@

debug_name20simple_rnn_277/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:22*@
shared_name1/simple_rnn_277/simple_rnn_cell/recurrent_kernel
Г
Csimple_rnn_277/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_277/simple_rnn_cell/recurrent_kernel*
_output_shapes

:22*
dtype0
о
%simple_rnn_277/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *6

debug_name(&simple_rnn_277/simple_rnn_cell/kernel/*
dtype0*
shape
:22*6
shared_name'%simple_rnn_277/simple_rnn_cell/kernel

9simple_rnn_277/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_277/simple_rnn_cell/kernel*
_output_shapes

:22*
dtype0
д
#simple_rnn_276/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *4

debug_name&$simple_rnn_276/simple_rnn_cell/bias/*
dtype0*
shape:2*4
shared_name%#simple_rnn_276/simple_rnn_cell/bias

7simple_rnn_276/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_276/simple_rnn_cell/bias*
_output_shapes
:2*
dtype0
ќ
/simple_rnn_276/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *@

debug_name20simple_rnn_276/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:22*@
shared_name1/simple_rnn_276/simple_rnn_cell/recurrent_kernel
Г
Csimple_rnn_276/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_276/simple_rnn_cell/recurrent_kernel*
_output_shapes

:22*
dtype0
о
%simple_rnn_276/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *6

debug_name(&simple_rnn_276/simple_rnn_cell/kernel/*
dtype0*
shape
:22*6
shared_name'%simple_rnn_276/simple_rnn_cell/kernel

9simple_rnn_276/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_276/simple_rnn_cell/kernel*
_output_shapes

:22*
dtype0
д
#simple_rnn_275/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *4

debug_name&$simple_rnn_275/simple_rnn_cell/bias/*
dtype0*
shape:2*4
shared_name%#simple_rnn_275/simple_rnn_cell/bias

7simple_rnn_275/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_275/simple_rnn_cell/bias*
_output_shapes
:2*
dtype0
ќ
/simple_rnn_275/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *@

debug_name20simple_rnn_275/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:22*@
shared_name1/simple_rnn_275/simple_rnn_cell/recurrent_kernel
Г
Csimple_rnn_275/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_275/simple_rnn_cell/recurrent_kernel*
_output_shapes

:22*
dtype0
о
%simple_rnn_275/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *6

debug_name(&simple_rnn_275/simple_rnn_cell/kernel/*
dtype0*
shape
:22*6
shared_name'%simple_rnn_275/simple_rnn_cell/kernel

9simple_rnn_275/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_275/simple_rnn_cell/kernel*
_output_shapes

:22*
dtype0
д
#simple_rnn_274/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *4

debug_name&$simple_rnn_274/simple_rnn_cell/bias/*
dtype0*
shape:2*4
shared_name%#simple_rnn_274/simple_rnn_cell/bias

7simple_rnn_274/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_274/simple_rnn_cell/bias*
_output_shapes
:2*
dtype0
ќ
/simple_rnn_274/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *@

debug_name20simple_rnn_274/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:22*@
shared_name1/simple_rnn_274/simple_rnn_cell/recurrent_kernel
Г
Csimple_rnn_274/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_274/simple_rnn_cell/recurrent_kernel*
_output_shapes

:22*
dtype0
о
%simple_rnn_274/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *6

debug_name(&simple_rnn_274/simple_rnn_cell/kernel/*
dtype0*
shape
:2*6
shared_name'%simple_rnn_274/simple_rnn_cell/kernel

9simple_rnn_274/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_274/simple_rnn_cell/kernel*
_output_shapes

:2*
dtype0

dense_52/biasVarHandleOp*
_output_shapes
: *

debug_namedense_52/bias/*
dtype0*
shape:*
shared_namedense_52/bias
k
!dense_52/bias/Read/ReadVariableOpReadVariableOpdense_52/bias*
_output_shapes
:*
dtype0

dense_52/kernelVarHandleOp*
_output_shapes
: * 

debug_namedense_52/kernel/*
dtype0*
shape
:2* 
shared_namedense_52/kernel
s
#dense_52/kernel/Read/ReadVariableOpReadVariableOpdense_52/kernel*
_output_shapes

:2*
dtype0

$serving_default_simple_rnn_274_inputPlaceholder*+
_output_shapes
:џџџџџџџџџ*
dtype0* 
shape:џџџџџџџџџ
ђ
StatefulPartitionedCallStatefulPartitionedCall$serving_default_simple_rnn_274_input%simple_rnn_274/simple_rnn_cell/kernel#simple_rnn_274/simple_rnn_cell/bias/simple_rnn_274/simple_rnn_cell/recurrent_kernel%simple_rnn_275/simple_rnn_cell/kernel#simple_rnn_275/simple_rnn_cell/bias/simple_rnn_275/simple_rnn_cell/recurrent_kernel%simple_rnn_276/simple_rnn_cell/kernel#simple_rnn_276/simple_rnn_cell/bias/simple_rnn_276/simple_rnn_cell/recurrent_kernel%simple_rnn_277/simple_rnn_cell/kernel#simple_rnn_277/simple_rnn_cell/bias/simple_rnn_277/simple_rnn_cell/recurrent_kerneldense_52/kerneldense_52/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_943107

NoOpNoOp
ў{
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Й{
valueЏ{BЌ{ BЅ{
У
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
Њ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec*
Ѕ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!_random_generator* 
Њ
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses
(cell
)
state_spec*
Ѕ
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0_random_generator* 
Њ
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses
7cell
8
state_spec*
Ѕ
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses
?_random_generator* 
Њ
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses
Fcell
G
state_spec*
Ѕ
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses
N_random_generator* 
І
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

Ukernel
Vbias*
j
W0
X1
Y2
Z3
[4
\5
]6
^7
_8
`9
a10
b11
U12
V13*
j
W0
X1
Y2
Z3
[4
\5
]6
^7
_8
`9
a10
b11
U12
V13*
* 
А
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

htrace_0
itrace_1* 

jtrace_0
ktrace_1* 
* 
p
l
_variables
m_iterations
n_learning_rate
o_index_dict
p_m
q_u
r_update_step_xla*

sserving_default* 

W0
X1
Y2*

W0
X1
Y2*
* 


tstates
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
ztrace_0
{trace_1
|trace_2
}trace_3* 
8
~trace_0
trace_1
trace_2
trace_3* 
к
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator

Wkernel
Xrecurrent_kernel
Ybias*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses* 

trace_0
trace_1* 

trace_0
trace_1* 
* 

Z0
[1
\2*

Z0
[1
\2*
* 
Ѕ
states
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 
к
 	variables
Ёtrainable_variables
Ђregularization_losses
Ѓ	keras_api
Є__call__
+Ѕ&call_and_return_all_conditional_losses
І_random_generator

Zkernel
[recurrent_kernel
\bias*
* 
* 
* 
* 

Їnon_trainable_variables
Јlayers
Љmetrics
 Њlayer_regularization_losses
Ћlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses* 

Ќtrace_0
­trace_1* 

Ўtrace_0
Џtrace_1* 
* 

]0
^1
_2*

]0
^1
_2*
* 
Ѕ
Аstates
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*
:
Жtrace_0
Зtrace_1
Иtrace_2
Йtrace_3* 
:
Кtrace_0
Лtrace_1
Мtrace_2
Нtrace_3* 
к
О	variables
Пtrainable_variables
Рregularization_losses
С	keras_api
Т__call__
+У&call_and_return_all_conditional_losses
Ф_random_generator

]kernel
^recurrent_kernel
_bias*
* 
* 
* 
* 

Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses* 

Ъtrace_0
Ыtrace_1* 

Ьtrace_0
Эtrace_1* 
* 

`0
a1
b2*

`0
a1
b2*
* 
Ѕ
Юstates
Яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*
:
дtrace_0
еtrace_1
жtrace_2
зtrace_3* 
:
иtrace_0
йtrace_1
кtrace_2
лtrace_3* 
к
м	variables
нtrainable_variables
оregularization_losses
п	keras_api
р__call__
+с&call_and_return_all_conditional_losses
т_random_generator

`kernel
arecurrent_kernel
bbias*
* 
* 
* 
* 

уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses* 

шtrace_0
щtrace_1* 

ъtrace_0
ыtrace_1* 
* 

U0
V1*

U0
V1*
* 

ьnon_trainable_variables
эlayers
юmetrics
 яlayer_regularization_losses
№layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*

ёtrace_0* 

ђtrace_0* 
_Y
VARIABLE_VALUEdense_52/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_52/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%simple_rnn_274/simple_rnn_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE/simple_rnn_274/simple_rnn_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#simple_rnn_274/simple_rnn_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%simple_rnn_275/simple_rnn_cell/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE/simple_rnn_275/simple_rnn_cell/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#simple_rnn_275/simple_rnn_cell/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%simple_rnn_276/simple_rnn_cell/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE/simple_rnn_276/simple_rnn_cell/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#simple_rnn_276/simple_rnn_cell/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%simple_rnn_277/simple_rnn_cell/kernel&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/simple_rnn_277/simple_rnn_cell/recurrent_kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#simple_rnn_277/simple_rnn_cell/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
* 
C
0
1
2
3
4
5
6
7
	8*

ѓ0*
* 
* 
* 
* 
* 
* 
ў
m0
є1
ѕ2
і3
ї4
ј5
љ6
њ7
ћ8
ќ9
§10
ў11
џ12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
x
є0
і1
ј2
њ3
ќ4
ў5
6
7
8
9
10
11
12
13*
x
ѕ0
ї1
љ2
ћ3
§4
џ5
6
7
8
9
10
11
12
13*
Ъ
trace_0
trace_1
trace_2
trace_3
trace_4
trace_5
trace_6
trace_7
trace_8
trace_9
trace_10
trace_11
trace_12
trace_13* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

W0
X1
Y2*

W0
X1
Y2*
* 

non_trainable_variables
layers
 metrics
 Ёlayer_regularization_losses
Ђlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Ѓtrace_0
Єtrace_1* 

Ѕtrace_0
Іtrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

(0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Z0
[1
\2*

Z0
[1
\2*
* 

Їnon_trainable_variables
Јlayers
Љmetrics
 Њlayer_regularization_losses
Ћlayer_metrics
 	variables
Ёtrainable_variables
Ђregularization_losses
Є__call__
+Ѕ&call_and_return_all_conditional_losses
'Ѕ"call_and_return_conditional_losses*

Ќtrace_0
­trace_1* 

Ўtrace_0
Џtrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

70*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

]0
^1
_2*

]0
^1
_2*
* 

Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
О	variables
Пtrainable_variables
Рregularization_losses
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses*

Еtrace_0
Жtrace_1* 

Зtrace_0
Иtrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

F0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

`0
a1
b2*

`0
a1
b2*
* 

Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
м	variables
нtrainable_variables
оregularization_losses
р__call__
+с&call_and_return_all_conditional_losses
'с"call_and_return_conditional_losses*

Оtrace_0
Пtrace_1* 

Рtrace_0
Сtrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
Т	variables
У	keras_api

Фtotal

Хcount*
ys
VARIABLE_VALUE.Adamax/m/simple_rnn_274/simple_rnn_cell/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE.Adamax/u/simple_rnn_274/simple_rnn_cell/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUE8Adamax/m/simple_rnn_274/simple_rnn_cell/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUE8Adamax/u/simple_rnn_274/simple_rnn_cell/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE,Adamax/m/simple_rnn_274/simple_rnn_cell/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE,Adamax/u/simple_rnn_274/simple_rnn_cell/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE.Adamax/m/simple_rnn_275/simple_rnn_cell/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE.Adamax/u/simple_rnn_275/simple_rnn_cell/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUE8Adamax/m/simple_rnn_275/simple_rnn_cell/recurrent_kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUE8Adamax/u/simple_rnn_275/simple_rnn_cell/recurrent_kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Adamax/m/simple_rnn_275/simple_rnn_cell/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Adamax/u/simple_rnn_275/simple_rnn_cell/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE.Adamax/m/simple_rnn_276/simple_rnn_cell/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE.Adamax/u/simple_rnn_276/simple_rnn_cell/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUE8Adamax/m/simple_rnn_276/simple_rnn_cell/recurrent_kernel2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUE8Adamax/u/simple_rnn_276/simple_rnn_cell/recurrent_kernel2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Adamax/m/simple_rnn_276/simple_rnn_cell/bias2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Adamax/u/simple_rnn_276/simple_rnn_cell/bias2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE.Adamax/m/simple_rnn_277/simple_rnn_cell/kernel2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE.Adamax/u/simple_rnn_277/simple_rnn_cell/kernel2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUE8Adamax/m/simple_rnn_277/simple_rnn_cell/recurrent_kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUE8Adamax/u/simple_rnn_277/simple_rnn_cell/recurrent_kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Adamax/m/simple_rnn_277/simple_rnn_cell/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Adamax/u/simple_rnn_277/simple_rnn_cell/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdamax/m/dense_52/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdamax/u/dense_52/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdamax/m/dense_52/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdamax/u/dense_52/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Ф0
Х1*

Т	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ќ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_52/kerneldense_52/bias%simple_rnn_274/simple_rnn_cell/kernel/simple_rnn_274/simple_rnn_cell/recurrent_kernel#simple_rnn_274/simple_rnn_cell/bias%simple_rnn_275/simple_rnn_cell/kernel/simple_rnn_275/simple_rnn_cell/recurrent_kernel#simple_rnn_275/simple_rnn_cell/bias%simple_rnn_276/simple_rnn_cell/kernel/simple_rnn_276/simple_rnn_cell/recurrent_kernel#simple_rnn_276/simple_rnn_cell/bias%simple_rnn_277/simple_rnn_cell/kernel/simple_rnn_277/simple_rnn_cell/recurrent_kernel#simple_rnn_277/simple_rnn_cell/bias	iterationlearning_rate.Adamax/m/simple_rnn_274/simple_rnn_cell/kernel.Adamax/u/simple_rnn_274/simple_rnn_cell/kernel8Adamax/m/simple_rnn_274/simple_rnn_cell/recurrent_kernel8Adamax/u/simple_rnn_274/simple_rnn_cell/recurrent_kernel,Adamax/m/simple_rnn_274/simple_rnn_cell/bias,Adamax/u/simple_rnn_274/simple_rnn_cell/bias.Adamax/m/simple_rnn_275/simple_rnn_cell/kernel.Adamax/u/simple_rnn_275/simple_rnn_cell/kernel8Adamax/m/simple_rnn_275/simple_rnn_cell/recurrent_kernel8Adamax/u/simple_rnn_275/simple_rnn_cell/recurrent_kernel,Adamax/m/simple_rnn_275/simple_rnn_cell/bias,Adamax/u/simple_rnn_275/simple_rnn_cell/bias.Adamax/m/simple_rnn_276/simple_rnn_cell/kernel.Adamax/u/simple_rnn_276/simple_rnn_cell/kernel8Adamax/m/simple_rnn_276/simple_rnn_cell/recurrent_kernel8Adamax/u/simple_rnn_276/simple_rnn_cell/recurrent_kernel,Adamax/m/simple_rnn_276/simple_rnn_cell/bias,Adamax/u/simple_rnn_276/simple_rnn_cell/bias.Adamax/m/simple_rnn_277/simple_rnn_cell/kernel.Adamax/u/simple_rnn_277/simple_rnn_cell/kernel8Adamax/m/simple_rnn_277/simple_rnn_cell/recurrent_kernel8Adamax/u/simple_rnn_277/simple_rnn_cell/recurrent_kernel,Adamax/m/simple_rnn_277/simple_rnn_cell/bias,Adamax/u/simple_rnn_277/simple_rnn_cell/biasAdamax/m/dense_52/kernelAdamax/u/dense_52/kernelAdamax/m/dense_52/biasAdamax/u/dense_52/biastotalcountConst*;
Tin4
220*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__traced_save_945762
Ї
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_52/kerneldense_52/bias%simple_rnn_274/simple_rnn_cell/kernel/simple_rnn_274/simple_rnn_cell/recurrent_kernel#simple_rnn_274/simple_rnn_cell/bias%simple_rnn_275/simple_rnn_cell/kernel/simple_rnn_275/simple_rnn_cell/recurrent_kernel#simple_rnn_275/simple_rnn_cell/bias%simple_rnn_276/simple_rnn_cell/kernel/simple_rnn_276/simple_rnn_cell/recurrent_kernel#simple_rnn_276/simple_rnn_cell/bias%simple_rnn_277/simple_rnn_cell/kernel/simple_rnn_277/simple_rnn_cell/recurrent_kernel#simple_rnn_277/simple_rnn_cell/bias	iterationlearning_rate.Adamax/m/simple_rnn_274/simple_rnn_cell/kernel.Adamax/u/simple_rnn_274/simple_rnn_cell/kernel8Adamax/m/simple_rnn_274/simple_rnn_cell/recurrent_kernel8Adamax/u/simple_rnn_274/simple_rnn_cell/recurrent_kernel,Adamax/m/simple_rnn_274/simple_rnn_cell/bias,Adamax/u/simple_rnn_274/simple_rnn_cell/bias.Adamax/m/simple_rnn_275/simple_rnn_cell/kernel.Adamax/u/simple_rnn_275/simple_rnn_cell/kernel8Adamax/m/simple_rnn_275/simple_rnn_cell/recurrent_kernel8Adamax/u/simple_rnn_275/simple_rnn_cell/recurrent_kernel,Adamax/m/simple_rnn_275/simple_rnn_cell/bias,Adamax/u/simple_rnn_275/simple_rnn_cell/bias.Adamax/m/simple_rnn_276/simple_rnn_cell/kernel.Adamax/u/simple_rnn_276/simple_rnn_cell/kernel8Adamax/m/simple_rnn_276/simple_rnn_cell/recurrent_kernel8Adamax/u/simple_rnn_276/simple_rnn_cell/recurrent_kernel,Adamax/m/simple_rnn_276/simple_rnn_cell/bias,Adamax/u/simple_rnn_276/simple_rnn_cell/bias.Adamax/m/simple_rnn_277/simple_rnn_cell/kernel.Adamax/u/simple_rnn_277/simple_rnn_cell/kernel8Adamax/m/simple_rnn_277/simple_rnn_cell/recurrent_kernel8Adamax/u/simple_rnn_277/simple_rnn_cell/recurrent_kernel,Adamax/m/simple_rnn_277/simple_rnn_cell/bias,Adamax/u/simple_rnn_277/simple_rnn_cell/biasAdamax/m/dense_52/kernelAdamax/u/dense_52/kernelAdamax/m/dense_52/biasAdamax/u/dense_52/biastotalcount*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_restore_945909Б-
Е=
Б
J__inference_simple_rnn_275_layer_call_and_return_conditional_losses_944156

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:22=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_944090*
condR
while_cond_944089*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ч
Њ
while_cond_942011
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_942011___redundant_placeholder04
0while_while_cond_942011___redundant_placeholder14
0while_while_cond_942011___redundant_placeholder24
0while_while_cond_942011___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ќ-
Ж
while_body_942538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:22E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:22C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ч
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
Е=
Б
J__inference_simple_rnn_274_layer_call_and_return_conditional_losses_942483

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:2=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_942417*
condR
while_cond_942416*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
В5

J__inference_simple_rnn_277_layer_call_and_return_conditional_losses_941669

inputs(
simple_rnn_cell_941592:22$
simple_rnn_cell_941594:2(
simple_rnn_cell_941596:22
identityЂ'simple_rnn_cell/StatefulPartitionedCallЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskр
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_941592simple_rnn_cell_941594simple_rnn_cell_941596*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_941591n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ъ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_941592simple_rnn_cell_941594simple_rnn_cell_941596*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_941605*
condR
while_cond_941604*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2T
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
 
_user_specified_nameinputs:&"
 
_user_specified_name941592:&"
 
_user_specified_name941594:&"
 
_user_specified_name941596

и
0__inference_simple_rnn_cell_layer_call_fn_945368

inputs
states_0
unknown:22
	unknown_0:2
	unknown_1:22
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_941422o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ2:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_0:&"
 
_user_specified_name945358:&"
 
_user_specified_name945360:&"
 
_user_specified_name945362
Ќ
K
#__inference__update_step_xla_943152
gradient
variable:2*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:2: *
	_noinline(:D @

_output_shapes
:2
"
_user_specified_name
gradient:($
"
_user_specified_name
variable

и
0__inference_simple_rnn_cell_layer_call_fn_945230

inputs
states_0
unknown:2
	unknown_0:2
	unknown_1:22
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_940727o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_0:&"
 
_user_specified_name945220:&"
 
_user_specified_name945222:&"
 
_user_specified_name945224
Цы

!__inference__wrapped_model_940684
simple_rnn_274_input]
Ksequential_52_simple_rnn_274_simple_rnn_cell_matmul_readvariableop_resource:2Z
Lsequential_52_simple_rnn_274_simple_rnn_cell_biasadd_readvariableop_resource:2_
Msequential_52_simple_rnn_274_simple_rnn_cell_matmul_1_readvariableop_resource:22]
Ksequential_52_simple_rnn_275_simple_rnn_cell_matmul_readvariableop_resource:22Z
Lsequential_52_simple_rnn_275_simple_rnn_cell_biasadd_readvariableop_resource:2_
Msequential_52_simple_rnn_275_simple_rnn_cell_matmul_1_readvariableop_resource:22]
Ksequential_52_simple_rnn_276_simple_rnn_cell_matmul_readvariableop_resource:22Z
Lsequential_52_simple_rnn_276_simple_rnn_cell_biasadd_readvariableop_resource:2_
Msequential_52_simple_rnn_276_simple_rnn_cell_matmul_1_readvariableop_resource:22]
Ksequential_52_simple_rnn_277_simple_rnn_cell_matmul_readvariableop_resource:22Z
Lsequential_52_simple_rnn_277_simple_rnn_cell_biasadd_readvariableop_resource:2_
Msequential_52_simple_rnn_277_simple_rnn_cell_matmul_1_readvariableop_resource:22G
5sequential_52_dense_52_matmul_readvariableop_resource:2D
6sequential_52_dense_52_biasadd_readvariableop_resource:
identityЂ-sequential_52/dense_52/BiasAdd/ReadVariableOpЂ,sequential_52/dense_52/MatMul/ReadVariableOpЂCsequential_52/simple_rnn_274/simple_rnn_cell/BiasAdd/ReadVariableOpЂBsequential_52/simple_rnn_274/simple_rnn_cell/MatMul/ReadVariableOpЂDsequential_52/simple_rnn_274/simple_rnn_cell/MatMul_1/ReadVariableOpЂ"sequential_52/simple_rnn_274/whileЂCsequential_52/simple_rnn_275/simple_rnn_cell/BiasAdd/ReadVariableOpЂBsequential_52/simple_rnn_275/simple_rnn_cell/MatMul/ReadVariableOpЂDsequential_52/simple_rnn_275/simple_rnn_cell/MatMul_1/ReadVariableOpЂ"sequential_52/simple_rnn_275/whileЂCsequential_52/simple_rnn_276/simple_rnn_cell/BiasAdd/ReadVariableOpЂBsequential_52/simple_rnn_276/simple_rnn_cell/MatMul/ReadVariableOpЂDsequential_52/simple_rnn_276/simple_rnn_cell/MatMul_1/ReadVariableOpЂ"sequential_52/simple_rnn_276/whileЂCsequential_52/simple_rnn_277/simple_rnn_cell/BiasAdd/ReadVariableOpЂBsequential_52/simple_rnn_277/simple_rnn_cell/MatMul/ReadVariableOpЂDsequential_52/simple_rnn_277/simple_rnn_cell/MatMul_1/ReadVariableOpЂ"sequential_52/simple_rnn_277/whilet
"sequential_52/simple_rnn_274/ShapeShapesimple_rnn_274_input*
T0*
_output_shapes
::эЯz
0sequential_52/simple_rnn_274/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2sequential_52/simple_rnn_274/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2sequential_52/simple_rnn_274/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
*sequential_52/simple_rnn_274/strided_sliceStridedSlice+sequential_52/simple_rnn_274/Shape:output:09sequential_52/simple_rnn_274/strided_slice/stack:output:0;sequential_52/simple_rnn_274/strided_slice/stack_1:output:0;sequential_52/simple_rnn_274/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
+sequential_52/simple_rnn_274/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2Ъ
)sequential_52/simple_rnn_274/zeros/packedPack3sequential_52/simple_rnn_274/strided_slice:output:04sequential_52/simple_rnn_274/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:m
(sequential_52/simple_rnn_274/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    У
"sequential_52/simple_rnn_274/zerosFill2sequential_52/simple_rnn_274/zeros/packed:output:01sequential_52/simple_rnn_274/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
+sequential_52/simple_rnn_274/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Е
&sequential_52/simple_rnn_274/transpose	Transposesimple_rnn_274_input4sequential_52/simple_rnn_274/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
$sequential_52/simple_rnn_274/Shape_1Shape*sequential_52/simple_rnn_274/transpose:y:0*
T0*
_output_shapes
::эЯ|
2sequential_52/simple_rnn_274/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4sequential_52/simple_rnn_274/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4sequential_52/simple_rnn_274/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ь
,sequential_52/simple_rnn_274/strided_slice_1StridedSlice-sequential_52/simple_rnn_274/Shape_1:output:0;sequential_52/simple_rnn_274/strided_slice_1/stack:output:0=sequential_52/simple_rnn_274/strided_slice_1/stack_1:output:0=sequential_52/simple_rnn_274/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
8sequential_52/simple_rnn_274/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
*sequential_52/simple_rnn_274/TensorArrayV2TensorListReserveAsequential_52/simple_rnn_274/TensorArrayV2/element_shape:output:05sequential_52/simple_rnn_274/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвЃ
Rsequential_52/simple_rnn_274/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   З
Dsequential_52/simple_rnn_274/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor*sequential_52/simple_rnn_274/transpose:y:0[sequential_52/simple_rnn_274/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв|
2sequential_52/simple_rnn_274/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4sequential_52/simple_rnn_274/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4sequential_52/simple_rnn_274/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:њ
,sequential_52/simple_rnn_274/strided_slice_2StridedSlice*sequential_52/simple_rnn_274/transpose:y:0;sequential_52/simple_rnn_274/strided_slice_2/stack:output:0=sequential_52/simple_rnn_274/strided_slice_2/stack_1:output:0=sequential_52/simple_rnn_274/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskЮ
Bsequential_52/simple_rnn_274/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpKsequential_52_simple_rnn_274_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0ђ
3sequential_52/simple_rnn_274/simple_rnn_cell/MatMulMatMul5sequential_52/simple_rnn_274/strided_slice_2:output:0Jsequential_52/simple_rnn_274/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ь
Csequential_52/simple_rnn_274/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpLsequential_52_simple_rnn_274_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0§
4sequential_52/simple_rnn_274/simple_rnn_cell/BiasAddBiasAdd=sequential_52/simple_rnn_274/simple_rnn_cell/MatMul:product:0Ksequential_52/simple_rnn_274/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2в
Dsequential_52/simple_rnn_274/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpMsequential_52_simple_rnn_274_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0ь
5sequential_52/simple_rnn_274/simple_rnn_cell/MatMul_1MatMul+sequential_52/simple_rnn_274/zeros:output:0Lsequential_52/simple_rnn_274/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2ы
0sequential_52/simple_rnn_274/simple_rnn_cell/addAddV2=sequential_52/simple_rnn_274/simple_rnn_cell/BiasAdd:output:0?sequential_52/simple_rnn_274/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
1sequential_52/simple_rnn_274/simple_rnn_cell/TanhTanh4sequential_52/simple_rnn_274/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
:sequential_52/simple_rnn_274/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   
,sequential_52/simple_rnn_274/TensorArrayV2_1TensorListReserveCsequential_52/simple_rnn_274/TensorArrayV2_1/element_shape:output:05sequential_52/simple_rnn_274/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвc
!sequential_52/simple_rnn_274/timeConst*
_output_shapes
: *
dtype0*
value	B : 
5sequential_52/simple_rnn_274/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџq
/sequential_52/simple_rnn_274/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ў
"sequential_52/simple_rnn_274/whileWhile8sequential_52/simple_rnn_274/while/loop_counter:output:0>sequential_52/simple_rnn_274/while/maximum_iterations:output:0*sequential_52/simple_rnn_274/time:output:05sequential_52/simple_rnn_274/TensorArrayV2_1:handle:0+sequential_52/simple_rnn_274/zeros:output:05sequential_52/simple_rnn_274/strided_slice_1:output:0Tsequential_52/simple_rnn_274/TensorArrayUnstack/TensorListFromTensor:output_handle:0Ksequential_52_simple_rnn_274_simple_rnn_cell_matmul_readvariableop_resourceLsequential_52_simple_rnn_274_simple_rnn_cell_biasadd_readvariableop_resourceMsequential_52_simple_rnn_274_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*:
body2R0
.sequential_52_simple_rnn_274_while_body_940294*:
cond2R0
.sequential_52_simple_rnn_274_while_cond_940293*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
Msequential_52/simple_rnn_274/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   
?sequential_52/simple_rnn_274/TensorArrayV2Stack/TensorListStackTensorListStack+sequential_52/simple_rnn_274/while:output:3Vsequential_52/simple_rnn_274/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0
2sequential_52/simple_rnn_274/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ~
4sequential_52/simple_rnn_274/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4sequential_52/simple_rnn_274/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
,sequential_52/simple_rnn_274/strided_slice_3StridedSliceHsequential_52/simple_rnn_274/TensorArrayV2Stack/TensorListStack:tensor:0;sequential_52/simple_rnn_274/strided_slice_3/stack:output:0=sequential_52/simple_rnn_274/strided_slice_3/stack_1:output:0=sequential_52/simple_rnn_274/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
-sequential_52/simple_rnn_274/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          э
(sequential_52/simple_rnn_274/transpose_1	TransposeHsequential_52/simple_rnn_274/TensorArrayV2Stack/TensorListStack:tensor:06sequential_52/simple_rnn_274/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
"sequential_52/dropout_274/IdentityIdentity,sequential_52/simple_rnn_274/transpose_1:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2
"sequential_52/simple_rnn_275/ShapeShape+sequential_52/dropout_274/Identity:output:0*
T0*
_output_shapes
::эЯz
0sequential_52/simple_rnn_275/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2sequential_52/simple_rnn_275/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2sequential_52/simple_rnn_275/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
*sequential_52/simple_rnn_275/strided_sliceStridedSlice+sequential_52/simple_rnn_275/Shape:output:09sequential_52/simple_rnn_275/strided_slice/stack:output:0;sequential_52/simple_rnn_275/strided_slice/stack_1:output:0;sequential_52/simple_rnn_275/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
+sequential_52/simple_rnn_275/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2Ъ
)sequential_52/simple_rnn_275/zeros/packedPack3sequential_52/simple_rnn_275/strided_slice:output:04sequential_52/simple_rnn_275/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:m
(sequential_52/simple_rnn_275/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    У
"sequential_52/simple_rnn_275/zerosFill2sequential_52/simple_rnn_275/zeros/packed:output:01sequential_52/simple_rnn_275/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
+sequential_52/simple_rnn_275/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ь
&sequential_52/simple_rnn_275/transpose	Transpose+sequential_52/dropout_274/Identity:output:04sequential_52/simple_rnn_275/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
$sequential_52/simple_rnn_275/Shape_1Shape*sequential_52/simple_rnn_275/transpose:y:0*
T0*
_output_shapes
::эЯ|
2sequential_52/simple_rnn_275/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4sequential_52/simple_rnn_275/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4sequential_52/simple_rnn_275/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ь
,sequential_52/simple_rnn_275/strided_slice_1StridedSlice-sequential_52/simple_rnn_275/Shape_1:output:0;sequential_52/simple_rnn_275/strided_slice_1/stack:output:0=sequential_52/simple_rnn_275/strided_slice_1/stack_1:output:0=sequential_52/simple_rnn_275/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
8sequential_52/simple_rnn_275/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
*sequential_52/simple_rnn_275/TensorArrayV2TensorListReserveAsequential_52/simple_rnn_275/TensorArrayV2/element_shape:output:05sequential_52/simple_rnn_275/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвЃ
Rsequential_52/simple_rnn_275/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   З
Dsequential_52/simple_rnn_275/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor*sequential_52/simple_rnn_275/transpose:y:0[sequential_52/simple_rnn_275/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв|
2sequential_52/simple_rnn_275/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4sequential_52/simple_rnn_275/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4sequential_52/simple_rnn_275/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:њ
,sequential_52/simple_rnn_275/strided_slice_2StridedSlice*sequential_52/simple_rnn_275/transpose:y:0;sequential_52/simple_rnn_275/strided_slice_2/stack:output:0=sequential_52/simple_rnn_275/strided_slice_2/stack_1:output:0=sequential_52/simple_rnn_275/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskЮ
Bsequential_52/simple_rnn_275/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpKsequential_52_simple_rnn_275_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0ђ
3sequential_52/simple_rnn_275/simple_rnn_cell/MatMulMatMul5sequential_52/simple_rnn_275/strided_slice_2:output:0Jsequential_52/simple_rnn_275/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ь
Csequential_52/simple_rnn_275/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpLsequential_52_simple_rnn_275_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0§
4sequential_52/simple_rnn_275/simple_rnn_cell/BiasAddBiasAdd=sequential_52/simple_rnn_275/simple_rnn_cell/MatMul:product:0Ksequential_52/simple_rnn_275/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2в
Dsequential_52/simple_rnn_275/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpMsequential_52_simple_rnn_275_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0ь
5sequential_52/simple_rnn_275/simple_rnn_cell/MatMul_1MatMul+sequential_52/simple_rnn_275/zeros:output:0Lsequential_52/simple_rnn_275/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2ы
0sequential_52/simple_rnn_275/simple_rnn_cell/addAddV2=sequential_52/simple_rnn_275/simple_rnn_cell/BiasAdd:output:0?sequential_52/simple_rnn_275/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
1sequential_52/simple_rnn_275/simple_rnn_cell/TanhTanh4sequential_52/simple_rnn_275/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
:sequential_52/simple_rnn_275/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   
,sequential_52/simple_rnn_275/TensorArrayV2_1TensorListReserveCsequential_52/simple_rnn_275/TensorArrayV2_1/element_shape:output:05sequential_52/simple_rnn_275/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвc
!sequential_52/simple_rnn_275/timeConst*
_output_shapes
: *
dtype0*
value	B : 
5sequential_52/simple_rnn_275/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџq
/sequential_52/simple_rnn_275/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ў
"sequential_52/simple_rnn_275/whileWhile8sequential_52/simple_rnn_275/while/loop_counter:output:0>sequential_52/simple_rnn_275/while/maximum_iterations:output:0*sequential_52/simple_rnn_275/time:output:05sequential_52/simple_rnn_275/TensorArrayV2_1:handle:0+sequential_52/simple_rnn_275/zeros:output:05sequential_52/simple_rnn_275/strided_slice_1:output:0Tsequential_52/simple_rnn_275/TensorArrayUnstack/TensorListFromTensor:output_handle:0Ksequential_52_simple_rnn_275_simple_rnn_cell_matmul_readvariableop_resourceLsequential_52_simple_rnn_275_simple_rnn_cell_biasadd_readvariableop_resourceMsequential_52_simple_rnn_275_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*:
body2R0
.sequential_52_simple_rnn_275_while_body_940399*:
cond2R0
.sequential_52_simple_rnn_275_while_cond_940398*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
Msequential_52/simple_rnn_275/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   
?sequential_52/simple_rnn_275/TensorArrayV2Stack/TensorListStackTensorListStack+sequential_52/simple_rnn_275/while:output:3Vsequential_52/simple_rnn_275/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0
2sequential_52/simple_rnn_275/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ~
4sequential_52/simple_rnn_275/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4sequential_52/simple_rnn_275/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
,sequential_52/simple_rnn_275/strided_slice_3StridedSliceHsequential_52/simple_rnn_275/TensorArrayV2Stack/TensorListStack:tensor:0;sequential_52/simple_rnn_275/strided_slice_3/stack:output:0=sequential_52/simple_rnn_275/strided_slice_3/stack_1:output:0=sequential_52/simple_rnn_275/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
-sequential_52/simple_rnn_275/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          э
(sequential_52/simple_rnn_275/transpose_1	TransposeHsequential_52/simple_rnn_275/TensorArrayV2Stack/TensorListStack:tensor:06sequential_52/simple_rnn_275/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
"sequential_52/dropout_275/IdentityIdentity,sequential_52/simple_rnn_275/transpose_1:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2
"sequential_52/simple_rnn_276/ShapeShape+sequential_52/dropout_275/Identity:output:0*
T0*
_output_shapes
::эЯz
0sequential_52/simple_rnn_276/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2sequential_52/simple_rnn_276/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2sequential_52/simple_rnn_276/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
*sequential_52/simple_rnn_276/strided_sliceStridedSlice+sequential_52/simple_rnn_276/Shape:output:09sequential_52/simple_rnn_276/strided_slice/stack:output:0;sequential_52/simple_rnn_276/strided_slice/stack_1:output:0;sequential_52/simple_rnn_276/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
+sequential_52/simple_rnn_276/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2Ъ
)sequential_52/simple_rnn_276/zeros/packedPack3sequential_52/simple_rnn_276/strided_slice:output:04sequential_52/simple_rnn_276/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:m
(sequential_52/simple_rnn_276/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    У
"sequential_52/simple_rnn_276/zerosFill2sequential_52/simple_rnn_276/zeros/packed:output:01sequential_52/simple_rnn_276/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
+sequential_52/simple_rnn_276/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ь
&sequential_52/simple_rnn_276/transpose	Transpose+sequential_52/dropout_275/Identity:output:04sequential_52/simple_rnn_276/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
$sequential_52/simple_rnn_276/Shape_1Shape*sequential_52/simple_rnn_276/transpose:y:0*
T0*
_output_shapes
::эЯ|
2sequential_52/simple_rnn_276/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4sequential_52/simple_rnn_276/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4sequential_52/simple_rnn_276/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ь
,sequential_52/simple_rnn_276/strided_slice_1StridedSlice-sequential_52/simple_rnn_276/Shape_1:output:0;sequential_52/simple_rnn_276/strided_slice_1/stack:output:0=sequential_52/simple_rnn_276/strided_slice_1/stack_1:output:0=sequential_52/simple_rnn_276/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
8sequential_52/simple_rnn_276/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
*sequential_52/simple_rnn_276/TensorArrayV2TensorListReserveAsequential_52/simple_rnn_276/TensorArrayV2/element_shape:output:05sequential_52/simple_rnn_276/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвЃ
Rsequential_52/simple_rnn_276/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   З
Dsequential_52/simple_rnn_276/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor*sequential_52/simple_rnn_276/transpose:y:0[sequential_52/simple_rnn_276/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв|
2sequential_52/simple_rnn_276/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4sequential_52/simple_rnn_276/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4sequential_52/simple_rnn_276/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:њ
,sequential_52/simple_rnn_276/strided_slice_2StridedSlice*sequential_52/simple_rnn_276/transpose:y:0;sequential_52/simple_rnn_276/strided_slice_2/stack:output:0=sequential_52/simple_rnn_276/strided_slice_2/stack_1:output:0=sequential_52/simple_rnn_276/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskЮ
Bsequential_52/simple_rnn_276/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpKsequential_52_simple_rnn_276_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0ђ
3sequential_52/simple_rnn_276/simple_rnn_cell/MatMulMatMul5sequential_52/simple_rnn_276/strided_slice_2:output:0Jsequential_52/simple_rnn_276/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ь
Csequential_52/simple_rnn_276/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpLsequential_52_simple_rnn_276_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0§
4sequential_52/simple_rnn_276/simple_rnn_cell/BiasAddBiasAdd=sequential_52/simple_rnn_276/simple_rnn_cell/MatMul:product:0Ksequential_52/simple_rnn_276/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2в
Dsequential_52/simple_rnn_276/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpMsequential_52_simple_rnn_276_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0ь
5sequential_52/simple_rnn_276/simple_rnn_cell/MatMul_1MatMul+sequential_52/simple_rnn_276/zeros:output:0Lsequential_52/simple_rnn_276/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2ы
0sequential_52/simple_rnn_276/simple_rnn_cell/addAddV2=sequential_52/simple_rnn_276/simple_rnn_cell/BiasAdd:output:0?sequential_52/simple_rnn_276/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
1sequential_52/simple_rnn_276/simple_rnn_cell/TanhTanh4sequential_52/simple_rnn_276/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
:sequential_52/simple_rnn_276/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   
,sequential_52/simple_rnn_276/TensorArrayV2_1TensorListReserveCsequential_52/simple_rnn_276/TensorArrayV2_1/element_shape:output:05sequential_52/simple_rnn_276/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвc
!sequential_52/simple_rnn_276/timeConst*
_output_shapes
: *
dtype0*
value	B : 
5sequential_52/simple_rnn_276/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџq
/sequential_52/simple_rnn_276/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ў
"sequential_52/simple_rnn_276/whileWhile8sequential_52/simple_rnn_276/while/loop_counter:output:0>sequential_52/simple_rnn_276/while/maximum_iterations:output:0*sequential_52/simple_rnn_276/time:output:05sequential_52/simple_rnn_276/TensorArrayV2_1:handle:0+sequential_52/simple_rnn_276/zeros:output:05sequential_52/simple_rnn_276/strided_slice_1:output:0Tsequential_52/simple_rnn_276/TensorArrayUnstack/TensorListFromTensor:output_handle:0Ksequential_52_simple_rnn_276_simple_rnn_cell_matmul_readvariableop_resourceLsequential_52_simple_rnn_276_simple_rnn_cell_biasadd_readvariableop_resourceMsequential_52_simple_rnn_276_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*:
body2R0
.sequential_52_simple_rnn_276_while_body_940504*:
cond2R0
.sequential_52_simple_rnn_276_while_cond_940503*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
Msequential_52/simple_rnn_276/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   
?sequential_52/simple_rnn_276/TensorArrayV2Stack/TensorListStackTensorListStack+sequential_52/simple_rnn_276/while:output:3Vsequential_52/simple_rnn_276/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0
2sequential_52/simple_rnn_276/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ~
4sequential_52/simple_rnn_276/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4sequential_52/simple_rnn_276/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
,sequential_52/simple_rnn_276/strided_slice_3StridedSliceHsequential_52/simple_rnn_276/TensorArrayV2Stack/TensorListStack:tensor:0;sequential_52/simple_rnn_276/strided_slice_3/stack:output:0=sequential_52/simple_rnn_276/strided_slice_3/stack_1:output:0=sequential_52/simple_rnn_276/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
-sequential_52/simple_rnn_276/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          э
(sequential_52/simple_rnn_276/transpose_1	TransposeHsequential_52/simple_rnn_276/TensorArrayV2Stack/TensorListStack:tensor:06sequential_52/simple_rnn_276/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
"sequential_52/dropout_276/IdentityIdentity,sequential_52/simple_rnn_276/transpose_1:y:0*
T0*+
_output_shapes
:џџџџџџџџџ2
"sequential_52/simple_rnn_277/ShapeShape+sequential_52/dropout_276/Identity:output:0*
T0*
_output_shapes
::эЯz
0sequential_52/simple_rnn_277/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2sequential_52/simple_rnn_277/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2sequential_52/simple_rnn_277/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
*sequential_52/simple_rnn_277/strided_sliceStridedSlice+sequential_52/simple_rnn_277/Shape:output:09sequential_52/simple_rnn_277/strided_slice/stack:output:0;sequential_52/simple_rnn_277/strided_slice/stack_1:output:0;sequential_52/simple_rnn_277/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
+sequential_52/simple_rnn_277/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2Ъ
)sequential_52/simple_rnn_277/zeros/packedPack3sequential_52/simple_rnn_277/strided_slice:output:04sequential_52/simple_rnn_277/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:m
(sequential_52/simple_rnn_277/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    У
"sequential_52/simple_rnn_277/zerosFill2sequential_52/simple_rnn_277/zeros/packed:output:01sequential_52/simple_rnn_277/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
+sequential_52/simple_rnn_277/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ь
&sequential_52/simple_rnn_277/transpose	Transpose+sequential_52/dropout_276/Identity:output:04sequential_52/simple_rnn_277/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
$sequential_52/simple_rnn_277/Shape_1Shape*sequential_52/simple_rnn_277/transpose:y:0*
T0*
_output_shapes
::эЯ|
2sequential_52/simple_rnn_277/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4sequential_52/simple_rnn_277/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4sequential_52/simple_rnn_277/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ь
,sequential_52/simple_rnn_277/strided_slice_1StridedSlice-sequential_52/simple_rnn_277/Shape_1:output:0;sequential_52/simple_rnn_277/strided_slice_1/stack:output:0=sequential_52/simple_rnn_277/strided_slice_1/stack_1:output:0=sequential_52/simple_rnn_277/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
8sequential_52/simple_rnn_277/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
*sequential_52/simple_rnn_277/TensorArrayV2TensorListReserveAsequential_52/simple_rnn_277/TensorArrayV2/element_shape:output:05sequential_52/simple_rnn_277/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвЃ
Rsequential_52/simple_rnn_277/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   З
Dsequential_52/simple_rnn_277/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor*sequential_52/simple_rnn_277/transpose:y:0[sequential_52/simple_rnn_277/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв|
2sequential_52/simple_rnn_277/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4sequential_52/simple_rnn_277/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4sequential_52/simple_rnn_277/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:њ
,sequential_52/simple_rnn_277/strided_slice_2StridedSlice*sequential_52/simple_rnn_277/transpose:y:0;sequential_52/simple_rnn_277/strided_slice_2/stack:output:0=sequential_52/simple_rnn_277/strided_slice_2/stack_1:output:0=sequential_52/simple_rnn_277/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskЮ
Bsequential_52/simple_rnn_277/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpKsequential_52_simple_rnn_277_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0ђ
3sequential_52/simple_rnn_277/simple_rnn_cell/MatMulMatMul5sequential_52/simple_rnn_277/strided_slice_2:output:0Jsequential_52/simple_rnn_277/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ь
Csequential_52/simple_rnn_277/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpLsequential_52_simple_rnn_277_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0§
4sequential_52/simple_rnn_277/simple_rnn_cell/BiasAddBiasAdd=sequential_52/simple_rnn_277/simple_rnn_cell/MatMul:product:0Ksequential_52/simple_rnn_277/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2в
Dsequential_52/simple_rnn_277/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpMsequential_52_simple_rnn_277_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0ь
5sequential_52/simple_rnn_277/simple_rnn_cell/MatMul_1MatMul+sequential_52/simple_rnn_277/zeros:output:0Lsequential_52/simple_rnn_277/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2ы
0sequential_52/simple_rnn_277/simple_rnn_cell/addAddV2=sequential_52/simple_rnn_277/simple_rnn_cell/BiasAdd:output:0?sequential_52/simple_rnn_277/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ё
1sequential_52/simple_rnn_277/simple_rnn_cell/TanhTanh4sequential_52/simple_rnn_277/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
:sequential_52/simple_rnn_277/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   {
9sequential_52/simple_rnn_277/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :
,sequential_52/simple_rnn_277/TensorArrayV2_1TensorListReserveCsequential_52/simple_rnn_277/TensorArrayV2_1/element_shape:output:0Bsequential_52/simple_rnn_277/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвc
!sequential_52/simple_rnn_277/timeConst*
_output_shapes
: *
dtype0*
value	B : 
5sequential_52/simple_rnn_277/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџq
/sequential_52/simple_rnn_277/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ў
"sequential_52/simple_rnn_277/whileWhile8sequential_52/simple_rnn_277/while/loop_counter:output:0>sequential_52/simple_rnn_277/while/maximum_iterations:output:0*sequential_52/simple_rnn_277/time:output:05sequential_52/simple_rnn_277/TensorArrayV2_1:handle:0+sequential_52/simple_rnn_277/zeros:output:05sequential_52/simple_rnn_277/strided_slice_1:output:0Tsequential_52/simple_rnn_277/TensorArrayUnstack/TensorListFromTensor:output_handle:0Ksequential_52_simple_rnn_277_simple_rnn_cell_matmul_readvariableop_resourceLsequential_52_simple_rnn_277_simple_rnn_cell_biasadd_readvariableop_resourceMsequential_52_simple_rnn_277_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*:
body2R0
.sequential_52_simple_rnn_277_while_body_940610*:
cond2R0
.sequential_52_simple_rnn_277_while_cond_940609*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
Msequential_52/simple_rnn_277/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ­
?sequential_52/simple_rnn_277/TensorArrayV2Stack/TensorListStackTensorListStack+sequential_52/simple_rnn_277/while:output:3Vsequential_52/simple_rnn_277/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elements
2sequential_52/simple_rnn_277/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ~
4sequential_52/simple_rnn_277/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4sequential_52/simple_rnn_277/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
,sequential_52/simple_rnn_277/strided_slice_3StridedSliceHsequential_52/simple_rnn_277/TensorArrayV2Stack/TensorListStack:tensor:0;sequential_52/simple_rnn_277/strided_slice_3/stack:output:0=sequential_52/simple_rnn_277/strided_slice_3/stack_1:output:0=sequential_52/simple_rnn_277/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
-sequential_52/simple_rnn_277/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          э
(sequential_52/simple_rnn_277/transpose_1	TransposeHsequential_52/simple_rnn_277/TensorArrayV2Stack/TensorListStack:tensor:06sequential_52/simple_rnn_277/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
"sequential_52/dropout_277/IdentityIdentity5sequential_52/simple_rnn_277/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ђ
,sequential_52/dense_52/MatMul/ReadVariableOpReadVariableOp5sequential_52_dense_52_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0М
sequential_52/dense_52/MatMulMatMul+sequential_52/dropout_277/Identity:output:04sequential_52/dense_52/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
-sequential_52/dense_52/BiasAdd/ReadVariableOpReadVariableOp6sequential_52_dense_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Л
sequential_52/dense_52/BiasAddBiasAdd'sequential_52/dense_52/MatMul:product:05sequential_52/dense_52/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџv
IdentityIdentity'sequential_52/dense_52/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџн
NoOpNoOp.^sequential_52/dense_52/BiasAdd/ReadVariableOp-^sequential_52/dense_52/MatMul/ReadVariableOpD^sequential_52/simple_rnn_274/simple_rnn_cell/BiasAdd/ReadVariableOpC^sequential_52/simple_rnn_274/simple_rnn_cell/MatMul/ReadVariableOpE^sequential_52/simple_rnn_274/simple_rnn_cell/MatMul_1/ReadVariableOp#^sequential_52/simple_rnn_274/whileD^sequential_52/simple_rnn_275/simple_rnn_cell/BiasAdd/ReadVariableOpC^sequential_52/simple_rnn_275/simple_rnn_cell/MatMul/ReadVariableOpE^sequential_52/simple_rnn_275/simple_rnn_cell/MatMul_1/ReadVariableOp#^sequential_52/simple_rnn_275/whileD^sequential_52/simple_rnn_276/simple_rnn_cell/BiasAdd/ReadVariableOpC^sequential_52/simple_rnn_276/simple_rnn_cell/MatMul/ReadVariableOpE^sequential_52/simple_rnn_276/simple_rnn_cell/MatMul_1/ReadVariableOp#^sequential_52/simple_rnn_276/whileD^sequential_52/simple_rnn_277/simple_rnn_cell/BiasAdd/ReadVariableOpC^sequential_52/simple_rnn_277/simple_rnn_cell/MatMul/ReadVariableOpE^sequential_52/simple_rnn_277/simple_rnn_cell/MatMul_1/ReadVariableOp#^sequential_52/simple_rnn_277/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:џџџџџџџџџ: : : : : : : : : : : : : : 2^
-sequential_52/dense_52/BiasAdd/ReadVariableOp-sequential_52/dense_52/BiasAdd/ReadVariableOp2\
,sequential_52/dense_52/MatMul/ReadVariableOp,sequential_52/dense_52/MatMul/ReadVariableOp2
Csequential_52/simple_rnn_274/simple_rnn_cell/BiasAdd/ReadVariableOpCsequential_52/simple_rnn_274/simple_rnn_cell/BiasAdd/ReadVariableOp2
Bsequential_52/simple_rnn_274/simple_rnn_cell/MatMul/ReadVariableOpBsequential_52/simple_rnn_274/simple_rnn_cell/MatMul/ReadVariableOp2
Dsequential_52/simple_rnn_274/simple_rnn_cell/MatMul_1/ReadVariableOpDsequential_52/simple_rnn_274/simple_rnn_cell/MatMul_1/ReadVariableOp2H
"sequential_52/simple_rnn_274/while"sequential_52/simple_rnn_274/while2
Csequential_52/simple_rnn_275/simple_rnn_cell/BiasAdd/ReadVariableOpCsequential_52/simple_rnn_275/simple_rnn_cell/BiasAdd/ReadVariableOp2
Bsequential_52/simple_rnn_275/simple_rnn_cell/MatMul/ReadVariableOpBsequential_52/simple_rnn_275/simple_rnn_cell/MatMul/ReadVariableOp2
Dsequential_52/simple_rnn_275/simple_rnn_cell/MatMul_1/ReadVariableOpDsequential_52/simple_rnn_275/simple_rnn_cell/MatMul_1/ReadVariableOp2H
"sequential_52/simple_rnn_275/while"sequential_52/simple_rnn_275/while2
Csequential_52/simple_rnn_276/simple_rnn_cell/BiasAdd/ReadVariableOpCsequential_52/simple_rnn_276/simple_rnn_cell/BiasAdd/ReadVariableOp2
Bsequential_52/simple_rnn_276/simple_rnn_cell/MatMul/ReadVariableOpBsequential_52/simple_rnn_276/simple_rnn_cell/MatMul/ReadVariableOp2
Dsequential_52/simple_rnn_276/simple_rnn_cell/MatMul_1/ReadVariableOpDsequential_52/simple_rnn_276/simple_rnn_cell/MatMul_1/ReadVariableOp2H
"sequential_52/simple_rnn_276/while"sequential_52/simple_rnn_276/while2
Csequential_52/simple_rnn_277/simple_rnn_cell/BiasAdd/ReadVariableOpCsequential_52/simple_rnn_277/simple_rnn_cell/BiasAdd/ReadVariableOp2
Bsequential_52/simple_rnn_277/simple_rnn_cell/MatMul/ReadVariableOpBsequential_52/simple_rnn_277/simple_rnn_cell/MatMul/ReadVariableOp2
Dsequential_52/simple_rnn_277/simple_rnn_cell/MatMul_1/ReadVariableOpDsequential_52/simple_rnn_277/simple_rnn_cell/MatMul_1/ReadVariableOp2H
"sequential_52/simple_rnn_277/while"sequential_52/simple_rnn_277/while:a ]
+
_output_shapes
:џџџџџџџџџ
.
_user_specified_namesimple_rnn_274_input:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ч4

J__inference_simple_rnn_275_layer_call_and_return_conditional_losses_941210

inputs(
simple_rnn_cell_941135:22$
simple_rnn_cell_941137:2(
simple_rnn_cell_941139:22
identityЂ'simple_rnn_cell/StatefulPartitionedCallЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskр
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_941135simple_rnn_cell_941137simple_rnn_cell_941139*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_941134n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ъ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_941135simple_rnn_cell_941137simple_rnn_cell_941139*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_941147*
condR
while_cond_941146*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2T
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
 
_user_specified_nameinputs:&"
 
_user_specified_name941135:&"
 
_user_specified_name941137:&"
 
_user_specified_name941139
д
ц
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_941015

inputs

states0
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Е=
Б
J__inference_simple_rnn_274_layer_call_and_return_conditional_losses_943653

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:2=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_943587*
condR
while_cond_943586*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
я"
У
while_body_941316
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_simple_rnn_cell_941338_0:22,
while_simple_rnn_cell_941340_0:20
while_simple_rnn_cell_941342_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_simple_rnn_cell_941338:22*
while_simple_rnn_cell_941340:2.
while_simple_rnn_cell_941342:22Ђ-while/simple_rnn_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_941338_0while_simple_rnn_cell_941340_0while_simple_rnn_cell_941342_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_941303п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2X

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_941338while_simple_rnn_cell_941338_0">
while_simple_rnn_cell_941340while_simple_rnn_cell_941340_0">
while_simple_rnn_cell_941342while_simple_rnn_cell_941342_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name941338:&"
 
_user_specified_name941340:&	"
 
_user_specified_name941342
ѓ=
Г
J__inference_simple_rnn_274_layer_call_and_return_conditional_losses_943329
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:2=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_943263*
condR
while_cond_943262*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ф
e
,__inference_dropout_275_layer_call_fn_944161

inputs
identityЂStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_275_layer_call_and_return_conditional_losses_942097s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ222
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
З

f
G__inference_dropout_276_layer_call_and_return_conditional_losses_942225

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>Њ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
ќ-
Ж
while_body_943874
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:22E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:22C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ч
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
ч
Њ
while_cond_942268
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_942268___redundant_placeholder04
0while_while_cond_942268___redundant_placeholder14
0while_while_cond_942268___redundant_placeholder24
0while_while_cond_942268___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ї	
ѕ
D__inference_dense_52_layer_call_and_return_conditional_losses_942366

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Е=
Б
J__inference_simple_rnn_275_layer_call_and_return_conditional_losses_944048

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:22=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_943982*
condR
while_cond_943981*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Е=
Б
J__inference_simple_rnn_274_layer_call_and_return_conditional_losses_943545

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:2=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_943479*
condR
while_cond_943478*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ч
Њ
while_cond_943765
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_943765___redundant_placeholder04
0while_while_cond_943765___redundant_placeholder14
0while_while_cond_943765___redundant_placeholder24
0while_while_cond_943765___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ч4

J__inference_simple_rnn_276_layer_call_and_return_conditional_losses_941498

inputs(
simple_rnn_cell_941423:22$
simple_rnn_cell_941425:2(
simple_rnn_cell_941427:22
identityЂ'simple_rnn_cell/StatefulPartitionedCallЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskр
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_941423simple_rnn_cell_941425simple_rnn_cell_941427*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_941422n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ъ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_941423simple_rnn_cell_941425simple_rnn_cell_941427*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_941435*
condR
while_cond_941434*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2T
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
 
_user_specified_nameinputs:&"
 
_user_specified_name941423:&"
 
_user_specified_name941425:&"
 
_user_specified_name941427
ъ
e
G__inference_dropout_274_layer_call_and_return_conditional_losses_943680

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ2_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
Я
б
.sequential_52_simple_rnn_274_while_cond_940293V
Rsequential_52_simple_rnn_274_while_sequential_52_simple_rnn_274_while_loop_counter\
Xsequential_52_simple_rnn_274_while_sequential_52_simple_rnn_274_while_maximum_iterations2
.sequential_52_simple_rnn_274_while_placeholder4
0sequential_52_simple_rnn_274_while_placeholder_14
0sequential_52_simple_rnn_274_while_placeholder_2X
Tsequential_52_simple_rnn_274_while_less_sequential_52_simple_rnn_274_strided_slice_1n
jsequential_52_simple_rnn_274_while_sequential_52_simple_rnn_274_while_cond_940293___redundant_placeholder0n
jsequential_52_simple_rnn_274_while_sequential_52_simple_rnn_274_while_cond_940293___redundant_placeholder1n
jsequential_52_simple_rnn_274_while_sequential_52_simple_rnn_274_while_cond_940293___redundant_placeholder2n
jsequential_52_simple_rnn_274_while_sequential_52_simple_rnn_274_while_cond_940293___redundant_placeholder3/
+sequential_52_simple_rnn_274_while_identity
ж
'sequential_52/simple_rnn_274/while/LessLess.sequential_52_simple_rnn_274_while_placeholderTsequential_52_simple_rnn_274_while_less_sequential_52_simple_rnn_274_strided_slice_1*
T0*
_output_shapes
: 
+sequential_52/simple_rnn_274/while/IdentityIdentity+sequential_52/simple_rnn_274/while/Less:z:0*
T0
*
_output_shapes
: "c
+sequential_52_simple_rnn_274_while_identity4sequential_52/simple_rnn_274/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::g c

_output_shapes
: 
I
_user_specified_name1/sequential_52/simple_rnn_274/while/loop_counter:mi

_output_shapes
: 
O
_user_specified_name75sequential_52/simple_rnn_274/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:d`

_output_shapes
: 
F
_user_specified_name.,sequential_52/simple_rnn_274/strided_slice_1:

_output_shapes
:
ч
Њ
while_cond_941883
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_941883___redundant_placeholder04
0while_while_cond_941883___redundant_placeholder14
0while_while_cond_941883___redundant_placeholder24
0while_while_cond_941883___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
И
O
#__inference__update_step_xla_943157
gradient
variable:22*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:22: *
	_noinline(:H D

_output_shapes

:22
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
З

f
G__inference_dropout_274_layer_call_and_return_conditional_losses_943675

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>Њ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
ч
Њ
while_cond_940858
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_940858___redundant_placeholder04
0while_while_cond_940858___redundant_placeholder14
0while_while_cond_940858___redundant_placeholder24
0while_while_cond_940858___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:

ј
.__inference_sequential_52_layer_call_fn_942934
simple_rnn_274_input
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:22
	unknown_3:2
	unknown_4:22
	unknown_5:22
	unknown_6:2
	unknown_7:22
	unknown_8:22
	unknown_9:2

unknown_10:22

unknown_11:2

unknown_12:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_274_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_52_layer_call_and_return_conditional_losses_942868o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:џџџџџџџџџ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
+
_output_shapes
:џџџџџџџџџ
.
_user_specified_namesimple_rnn_274_input:&"
 
_user_specified_name942904:&"
 
_user_specified_name942906:&"
 
_user_specified_name942908:&"
 
_user_specified_name942910:&"
 
_user_specified_name942912:&"
 
_user_specified_name942914:&"
 
_user_specified_name942916:&"
 
_user_specified_name942918:&	"
 
_user_specified_name942920:&
"
 
_user_specified_name942922:&"
 
_user_specified_name942924:&"
 
_user_specified_name942926:&"
 
_user_specified_name942928:&"
 
_user_specified_name942930
ѓ=
Г
J__inference_simple_rnn_276_layer_call_and_return_conditional_losses_944443
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:22=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_944377*
condR
while_cond_944376*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ќ-
Ж
while_body_942140
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:22E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:22C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ч
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
к
ш
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945385

inputs
states_00
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ќ-
Ж
while_body_942417
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:2E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:2C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ч
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
ё
Л
/__inference_simple_rnn_277_layer_call_fn_944708
inputs_0
unknown:22
	unknown_0:2
	unknown_1:22
identityЂStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_277_layer_call_and_return_conditional_losses_941790o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs_0:&"
 
_user_specified_name944700:&"
 
_user_specified_name944702:&"
 
_user_specified_name944704
д
ц
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_941712

inputs

states0
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ќ-
Ж
while_body_943479
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:2E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:2C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ч
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
д
ц
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_941422

inputs

states0
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
КK
 
.sequential_52_simple_rnn_277_while_body_940610V
Rsequential_52_simple_rnn_277_while_sequential_52_simple_rnn_277_while_loop_counter\
Xsequential_52_simple_rnn_277_while_sequential_52_simple_rnn_277_while_maximum_iterations2
.sequential_52_simple_rnn_277_while_placeholder4
0sequential_52_simple_rnn_277_while_placeholder_14
0sequential_52_simple_rnn_277_while_placeholder_2U
Qsequential_52_simple_rnn_277_while_sequential_52_simple_rnn_277_strided_slice_1_0
sequential_52_simple_rnn_277_while_tensorarrayv2read_tensorlistgetitem_sequential_52_simple_rnn_277_tensorarrayunstack_tensorlistfromtensor_0e
Ssequential_52_simple_rnn_277_while_simple_rnn_cell_matmul_readvariableop_resource_0:22b
Tsequential_52_simple_rnn_277_while_simple_rnn_cell_biasadd_readvariableop_resource_0:2g
Usequential_52_simple_rnn_277_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22/
+sequential_52_simple_rnn_277_while_identity1
-sequential_52_simple_rnn_277_while_identity_11
-sequential_52_simple_rnn_277_while_identity_21
-sequential_52_simple_rnn_277_while_identity_31
-sequential_52_simple_rnn_277_while_identity_4S
Osequential_52_simple_rnn_277_while_sequential_52_simple_rnn_277_strided_slice_1
sequential_52_simple_rnn_277_while_tensorarrayv2read_tensorlistgetitem_sequential_52_simple_rnn_277_tensorarrayunstack_tensorlistfromtensorc
Qsequential_52_simple_rnn_277_while_simple_rnn_cell_matmul_readvariableop_resource:22`
Rsequential_52_simple_rnn_277_while_simple_rnn_cell_biasadd_readvariableop_resource:2e
Ssequential_52_simple_rnn_277_while_simple_rnn_cell_matmul_1_readvariableop_resource:22ЂIsequential_52/simple_rnn_277/while/simple_rnn_cell/BiasAdd/ReadVariableOpЂHsequential_52/simple_rnn_277/while/simple_rnn_cell/MatMul/ReadVariableOpЂJsequential_52/simple_rnn_277/while/simple_rnn_cell/MatMul_1/ReadVariableOpЅ
Tsequential_52/simple_rnn_277/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
Fsequential_52/simple_rnn_277/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_52_simple_rnn_277_while_tensorarrayv2read_tensorlistgetitem_sequential_52_simple_rnn_277_tensorarrayunstack_tensorlistfromtensor_0.sequential_52_simple_rnn_277_while_placeholder]sequential_52/simple_rnn_277/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0м
Hsequential_52/simple_rnn_277/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpSsequential_52_simple_rnn_277_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0
9sequential_52/simple_rnn_277/while/simple_rnn_cell/MatMulMatMulMsequential_52/simple_rnn_277/while/TensorArrayV2Read/TensorListGetItem:item:0Psequential_52/simple_rnn_277/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2к
Isequential_52/simple_rnn_277/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpTsequential_52_simple_rnn_277_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0
:sequential_52/simple_rnn_277/while/simple_rnn_cell/BiasAddBiasAddCsequential_52/simple_rnn_277/while/simple_rnn_cell/MatMul:product:0Qsequential_52/simple_rnn_277/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2р
Jsequential_52/simple_rnn_277/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpUsequential_52_simple_rnn_277_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0§
;sequential_52/simple_rnn_277/while/simple_rnn_cell/MatMul_1MatMul0sequential_52_simple_rnn_277_while_placeholder_2Rsequential_52/simple_rnn_277/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2§
6sequential_52/simple_rnn_277/while/simple_rnn_cell/addAddV2Csequential_52/simple_rnn_277/while/simple_rnn_cell/BiasAdd:output:0Esequential_52/simple_rnn_277/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2­
7sequential_52/simple_rnn_277/while/simple_rnn_cell/TanhTanh:sequential_52/simple_rnn_277/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2
Msequential_52/simple_rnn_277/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : у
Gsequential_52/simple_rnn_277/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem0sequential_52_simple_rnn_277_while_placeholder_1Vsequential_52/simple_rnn_277/while/TensorArrayV2Write/TensorListSetItem/index:output:0;sequential_52/simple_rnn_277/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвj
(sequential_52/simple_rnn_277/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Г
&sequential_52/simple_rnn_277/while/addAddV2.sequential_52_simple_rnn_277_while_placeholder1sequential_52/simple_rnn_277/while/add/y:output:0*
T0*
_output_shapes
: l
*sequential_52/simple_rnn_277/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :л
(sequential_52/simple_rnn_277/while/add_1AddV2Rsequential_52_simple_rnn_277_while_sequential_52_simple_rnn_277_while_loop_counter3sequential_52/simple_rnn_277/while/add_1/y:output:0*
T0*
_output_shapes
: А
+sequential_52/simple_rnn_277/while/IdentityIdentity,sequential_52/simple_rnn_277/while/add_1:z:0(^sequential_52/simple_rnn_277/while/NoOp*
T0*
_output_shapes
: о
-sequential_52/simple_rnn_277/while/Identity_1IdentityXsequential_52_simple_rnn_277_while_sequential_52_simple_rnn_277_while_maximum_iterations(^sequential_52/simple_rnn_277/while/NoOp*
T0*
_output_shapes
: А
-sequential_52/simple_rnn_277/while/Identity_2Identity*sequential_52/simple_rnn_277/while/add:z:0(^sequential_52/simple_rnn_277/while/NoOp*
T0*
_output_shapes
: н
-sequential_52/simple_rnn_277/while/Identity_3IdentityWsequential_52/simple_rnn_277/while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^sequential_52/simple_rnn_277/while/NoOp*
T0*
_output_shapes
: в
-sequential_52/simple_rnn_277/while/Identity_4Identity;sequential_52/simple_rnn_277/while/simple_rnn_cell/Tanh:y:0(^sequential_52/simple_rnn_277/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Љ
'sequential_52/simple_rnn_277/while/NoOpNoOpJ^sequential_52/simple_rnn_277/while/simple_rnn_cell/BiasAdd/ReadVariableOpI^sequential_52/simple_rnn_277/while/simple_rnn_cell/MatMul/ReadVariableOpK^sequential_52/simple_rnn_277/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "c
+sequential_52_simple_rnn_277_while_identity4sequential_52/simple_rnn_277/while/Identity:output:0"g
-sequential_52_simple_rnn_277_while_identity_16sequential_52/simple_rnn_277/while/Identity_1:output:0"g
-sequential_52_simple_rnn_277_while_identity_26sequential_52/simple_rnn_277/while/Identity_2:output:0"g
-sequential_52_simple_rnn_277_while_identity_36sequential_52/simple_rnn_277/while/Identity_3:output:0"g
-sequential_52_simple_rnn_277_while_identity_46sequential_52/simple_rnn_277/while/Identity_4:output:0"Є
Osequential_52_simple_rnn_277_while_sequential_52_simple_rnn_277_strided_slice_1Qsequential_52_simple_rnn_277_while_sequential_52_simple_rnn_277_strided_slice_1_0"Њ
Rsequential_52_simple_rnn_277_while_simple_rnn_cell_biasadd_readvariableop_resourceTsequential_52_simple_rnn_277_while_simple_rnn_cell_biasadd_readvariableop_resource_0"Ќ
Ssequential_52_simple_rnn_277_while_simple_rnn_cell_matmul_1_readvariableop_resourceUsequential_52_simple_rnn_277_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"Ј
Qsequential_52_simple_rnn_277_while_simple_rnn_cell_matmul_readvariableop_resourceSsequential_52_simple_rnn_277_while_simple_rnn_cell_matmul_readvariableop_resource_0"
sequential_52_simple_rnn_277_while_tensorarrayv2read_tensorlistgetitem_sequential_52_simple_rnn_277_tensorarrayunstack_tensorlistfromtensorsequential_52_simple_rnn_277_while_tensorarrayv2read_tensorlistgetitem_sequential_52_simple_rnn_277_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2
Isequential_52/simple_rnn_277/while/simple_rnn_cell/BiasAdd/ReadVariableOpIsequential_52/simple_rnn_277/while/simple_rnn_cell/BiasAdd/ReadVariableOp2
Hsequential_52/simple_rnn_277/while/simple_rnn_cell/MatMul/ReadVariableOpHsequential_52/simple_rnn_277/while/simple_rnn_cell/MatMul/ReadVariableOp2
Jsequential_52/simple_rnn_277/while/simple_rnn_cell/MatMul_1/ReadVariableOpJsequential_52/simple_rnn_277/while/simple_rnn_cell/MatMul_1/ReadVariableOp:g c

_output_shapes
: 
I
_user_specified_name1/sequential_52/simple_rnn_277/while/loop_counter:mi

_output_shapes
: 
O
_user_specified_name75sequential_52/simple_rnn_277/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:d`

_output_shapes
: 
F
_user_specified_name.,sequential_52/simple_rnn_277/strided_slice_1:|x

_output_shapes
: 
^
_user_specified_nameFDsequential_52/simple_rnn_277/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
ч
Њ
while_cond_944376
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_944376___redundant_placeholder04
0while_while_cond_944376___redundant_placeholder14
0while_while_cond_944376___redundant_placeholder24
0while_while_cond_944376___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
д
ц
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_940727

inputs

states0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
И
O
#__inference__update_step_xla_943147
gradient
variable:22*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:22: *
	_noinline(:H D

_output_shapes

:22
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ч
Њ
while_cond_944592
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_944592___redundant_placeholder04
0while_while_cond_944592___redundant_placeholder14
0while_while_cond_944592___redundant_placeholder24
0while_while_cond_944592___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:

и
0__inference_simple_rnn_cell_layer_call_fn_945430

inputs
states_0
unknown:22
	unknown_0:2
	unknown_1:22
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_941712o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ2:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_0:&"
 
_user_specified_name945420:&"
 
_user_specified_name945422:&"
 
_user_specified_name945424
ё

)__inference_dense_52_layer_call_fn_945206

inputs
unknown:2
	unknown_0:
identityЂStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_52_layer_call_and_return_conditional_losses_942366o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:&"
 
_user_specified_name945200:&"
 
_user_specified_name945202
ќ-
Ж
while_body_943766
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:22E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:22C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ч
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
	
Л
/__inference_simple_rnn_275_layer_call_fn_943702
inputs_0
unknown:22
	unknown_0:2
	unknown_1:22
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_275_layer_call_and_return_conditional_losses_941210|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs_0:&"
 
_user_specified_name943694:&"
 
_user_specified_name943696:&"
 
_user_specified_name943698
ч
Њ
while_cond_943981
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_943981___redundant_placeholder04
0while_while_cond_943981___redundant_placeholder14
0while_while_cond_943981___redundant_placeholder24
0while_while_cond_943981___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:


f
G__inference_dropout_277_layer_call_and_return_conditional_losses_945192

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>І
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ2:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
/
Ж
while_body_945103
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:22E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:22C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource

и
0__inference_simple_rnn_cell_layer_call_fn_945306

inputs
states_0
unknown:22
	unknown_0:2
	unknown_1:22
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_941134o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ2:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_0:&"
 
_user_specified_name945296:&"
 
_user_specified_name945298:&"
 
_user_specified_name945300
ќ-
Ж
while_body_942012
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:22E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:22C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ч
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
ч
Њ
while_cond_943873
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_943873___redundant_placeholder04
0while_while_cond_943873___redundant_placeholder14
0while_while_cond_943873___redundant_placeholder24
0while_while_cond_943873___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:

и
0__inference_simple_rnn_cell_layer_call_fn_945244

inputs
states_0
unknown:2
	unknown_0:2
	unknown_1:22
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_940846o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_0:&"
 
_user_specified_name945234:&"
 
_user_specified_name945236:&"
 
_user_specified_name945238
й
Й
/__inference_simple_rnn_277_layer_call_fn_944730

inputs
unknown:22
	unknown_0:2
	unknown_1:22
identityЂStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_277_layer_call_and_return_conditional_losses_942848o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:&"
 
_user_specified_name944722:&"
 
_user_specified_name944724:&"
 
_user_specified_name944726
ч
Њ
while_cond_944268
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_944268___redundant_placeholder04
0while_while_cond_944268___redundant_placeholder14
0while_while_cond_944268___redundant_placeholder24
0while_while_cond_944268___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
с
ю
$__inference_signature_wrapper_943107
simple_rnn_274_input
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:22
	unknown_3:2
	unknown_4:22
	unknown_5:22
	unknown_6:2
	unknown_7:22
	unknown_8:22
	unknown_9:2

unknown_10:22

unknown_11:2

unknown_12:
identityЂStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_274_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_940684o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:џџџџџџџџџ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
+
_output_shapes
:џџџџџџџџџ
.
_user_specified_namesimple_rnn_274_input:&"
 
_user_specified_name943077:&"
 
_user_specified_name943079:&"
 
_user_specified_name943081:&"
 
_user_specified_name943083:&"
 
_user_specified_name943085:&"
 
_user_specified_name943087:&"
 
_user_specified_name943089:&"
 
_user_specified_name943091:&	"
 
_user_specified_name943093:&
"
 
_user_specified_name943095:&"
 
_user_specified_name943097:&"
 
_user_specified_name943099:&"
 
_user_specified_name943101:&"
 
_user_specified_name943103
Е=
Б
J__inference_simple_rnn_276_layer_call_and_return_conditional_losses_942206

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:22=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_942140*
condR
while_cond_942139*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ъ
e
G__inference_dropout_275_layer_call_and_return_conditional_losses_942616

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ2_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
И
O
#__inference__update_step_xla_943117
gradient
variable:22*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:22: *
	_noinline(:H D

_output_shapes

:22
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Е=
Б
J__inference_simple_rnn_275_layer_call_and_return_conditional_losses_942604

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:22=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_942538*
condR
while_cond_942537*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ф
e
,__inference_dropout_274_layer_call_fn_943658

inputs
identityЂStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_274_layer_call_and_return_conditional_losses_941969s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ222
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
ќ-
Ж
while_body_944485
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:22E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:22C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ч
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
ч
Њ
while_cond_941604
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_941604___redundant_placeholder04
0while_while_cond_941604___redundant_placeholder14
0while_while_cond_941604___redundant_placeholder24
0while_while_cond_941604___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ч
Њ
while_cond_942658
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_942658___redundant_placeholder04
0while_while_cond_942658___redundant_placeholder14
0while_while_cond_942658___redundant_placeholder24
0while_while_cond_942658___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:

и
0__inference_simple_rnn_cell_layer_call_fn_945416

inputs
states_0
unknown:22
	unknown_0:2
	unknown_1:22
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_941591o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ2:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_0:&"
 
_user_specified_name945406:&"
 
_user_specified_name945408:&"
 
_user_specified_name945410
к
ш
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945261

inputs
states_00
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
к
ш
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945278

inputs
states_00
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ч
Њ
while_cond_940739
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_940739___redundant_placeholder04
0while_while_cond_940739___redundant_placeholder14
0while_while_cond_940739___redundant_placeholder24
0while_while_cond_940739___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
J
 
.sequential_52_simple_rnn_274_while_body_940294V
Rsequential_52_simple_rnn_274_while_sequential_52_simple_rnn_274_while_loop_counter\
Xsequential_52_simple_rnn_274_while_sequential_52_simple_rnn_274_while_maximum_iterations2
.sequential_52_simple_rnn_274_while_placeholder4
0sequential_52_simple_rnn_274_while_placeholder_14
0sequential_52_simple_rnn_274_while_placeholder_2U
Qsequential_52_simple_rnn_274_while_sequential_52_simple_rnn_274_strided_slice_1_0
sequential_52_simple_rnn_274_while_tensorarrayv2read_tensorlistgetitem_sequential_52_simple_rnn_274_tensorarrayunstack_tensorlistfromtensor_0e
Ssequential_52_simple_rnn_274_while_simple_rnn_cell_matmul_readvariableop_resource_0:2b
Tsequential_52_simple_rnn_274_while_simple_rnn_cell_biasadd_readvariableop_resource_0:2g
Usequential_52_simple_rnn_274_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22/
+sequential_52_simple_rnn_274_while_identity1
-sequential_52_simple_rnn_274_while_identity_11
-sequential_52_simple_rnn_274_while_identity_21
-sequential_52_simple_rnn_274_while_identity_31
-sequential_52_simple_rnn_274_while_identity_4S
Osequential_52_simple_rnn_274_while_sequential_52_simple_rnn_274_strided_slice_1
sequential_52_simple_rnn_274_while_tensorarrayv2read_tensorlistgetitem_sequential_52_simple_rnn_274_tensorarrayunstack_tensorlistfromtensorc
Qsequential_52_simple_rnn_274_while_simple_rnn_cell_matmul_readvariableop_resource:2`
Rsequential_52_simple_rnn_274_while_simple_rnn_cell_biasadd_readvariableop_resource:2e
Ssequential_52_simple_rnn_274_while_simple_rnn_cell_matmul_1_readvariableop_resource:22ЂIsequential_52/simple_rnn_274/while/simple_rnn_cell/BiasAdd/ReadVariableOpЂHsequential_52/simple_rnn_274/while/simple_rnn_cell/MatMul/ReadVariableOpЂJsequential_52/simple_rnn_274/while/simple_rnn_cell/MatMul_1/ReadVariableOpЅ
Tsequential_52/simple_rnn_274/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
Fsequential_52/simple_rnn_274/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_52_simple_rnn_274_while_tensorarrayv2read_tensorlistgetitem_sequential_52_simple_rnn_274_tensorarrayunstack_tensorlistfromtensor_0.sequential_52_simple_rnn_274_while_placeholder]sequential_52/simple_rnn_274/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0м
Hsequential_52/simple_rnn_274/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpSsequential_52_simple_rnn_274_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0
9sequential_52/simple_rnn_274/while/simple_rnn_cell/MatMulMatMulMsequential_52/simple_rnn_274/while/TensorArrayV2Read/TensorListGetItem:item:0Psequential_52/simple_rnn_274/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2к
Isequential_52/simple_rnn_274/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpTsequential_52_simple_rnn_274_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0
:sequential_52/simple_rnn_274/while/simple_rnn_cell/BiasAddBiasAddCsequential_52/simple_rnn_274/while/simple_rnn_cell/MatMul:product:0Qsequential_52/simple_rnn_274/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2р
Jsequential_52/simple_rnn_274/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpUsequential_52_simple_rnn_274_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0§
;sequential_52/simple_rnn_274/while/simple_rnn_cell/MatMul_1MatMul0sequential_52_simple_rnn_274_while_placeholder_2Rsequential_52/simple_rnn_274/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2§
6sequential_52/simple_rnn_274/while/simple_rnn_cell/addAddV2Csequential_52/simple_rnn_274/while/simple_rnn_cell/BiasAdd:output:0Esequential_52/simple_rnn_274/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2­
7sequential_52/simple_rnn_274/while/simple_rnn_cell/TanhTanh:sequential_52/simple_rnn_274/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Л
Gsequential_52/simple_rnn_274/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem0sequential_52_simple_rnn_274_while_placeholder_1.sequential_52_simple_rnn_274_while_placeholder;sequential_52/simple_rnn_274/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвj
(sequential_52/simple_rnn_274/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Г
&sequential_52/simple_rnn_274/while/addAddV2.sequential_52_simple_rnn_274_while_placeholder1sequential_52/simple_rnn_274/while/add/y:output:0*
T0*
_output_shapes
: l
*sequential_52/simple_rnn_274/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :л
(sequential_52/simple_rnn_274/while/add_1AddV2Rsequential_52_simple_rnn_274_while_sequential_52_simple_rnn_274_while_loop_counter3sequential_52/simple_rnn_274/while/add_1/y:output:0*
T0*
_output_shapes
: А
+sequential_52/simple_rnn_274/while/IdentityIdentity,sequential_52/simple_rnn_274/while/add_1:z:0(^sequential_52/simple_rnn_274/while/NoOp*
T0*
_output_shapes
: о
-sequential_52/simple_rnn_274/while/Identity_1IdentityXsequential_52_simple_rnn_274_while_sequential_52_simple_rnn_274_while_maximum_iterations(^sequential_52/simple_rnn_274/while/NoOp*
T0*
_output_shapes
: А
-sequential_52/simple_rnn_274/while/Identity_2Identity*sequential_52/simple_rnn_274/while/add:z:0(^sequential_52/simple_rnn_274/while/NoOp*
T0*
_output_shapes
: н
-sequential_52/simple_rnn_274/while/Identity_3IdentityWsequential_52/simple_rnn_274/while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^sequential_52/simple_rnn_274/while/NoOp*
T0*
_output_shapes
: в
-sequential_52/simple_rnn_274/while/Identity_4Identity;sequential_52/simple_rnn_274/while/simple_rnn_cell/Tanh:y:0(^sequential_52/simple_rnn_274/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Љ
'sequential_52/simple_rnn_274/while/NoOpNoOpJ^sequential_52/simple_rnn_274/while/simple_rnn_cell/BiasAdd/ReadVariableOpI^sequential_52/simple_rnn_274/while/simple_rnn_cell/MatMul/ReadVariableOpK^sequential_52/simple_rnn_274/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "c
+sequential_52_simple_rnn_274_while_identity4sequential_52/simple_rnn_274/while/Identity:output:0"g
-sequential_52_simple_rnn_274_while_identity_16sequential_52/simple_rnn_274/while/Identity_1:output:0"g
-sequential_52_simple_rnn_274_while_identity_26sequential_52/simple_rnn_274/while/Identity_2:output:0"g
-sequential_52_simple_rnn_274_while_identity_36sequential_52/simple_rnn_274/while/Identity_3:output:0"g
-sequential_52_simple_rnn_274_while_identity_46sequential_52/simple_rnn_274/while/Identity_4:output:0"Є
Osequential_52_simple_rnn_274_while_sequential_52_simple_rnn_274_strided_slice_1Qsequential_52_simple_rnn_274_while_sequential_52_simple_rnn_274_strided_slice_1_0"Њ
Rsequential_52_simple_rnn_274_while_simple_rnn_cell_biasadd_readvariableop_resourceTsequential_52_simple_rnn_274_while_simple_rnn_cell_biasadd_readvariableop_resource_0"Ќ
Ssequential_52_simple_rnn_274_while_simple_rnn_cell_matmul_1_readvariableop_resourceUsequential_52_simple_rnn_274_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"Ј
Qsequential_52_simple_rnn_274_while_simple_rnn_cell_matmul_readvariableop_resourceSsequential_52_simple_rnn_274_while_simple_rnn_cell_matmul_readvariableop_resource_0"
sequential_52_simple_rnn_274_while_tensorarrayv2read_tensorlistgetitem_sequential_52_simple_rnn_274_tensorarrayunstack_tensorlistfromtensorsequential_52_simple_rnn_274_while_tensorarrayv2read_tensorlistgetitem_sequential_52_simple_rnn_274_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2
Isequential_52/simple_rnn_274/while/simple_rnn_cell/BiasAdd/ReadVariableOpIsequential_52/simple_rnn_274/while/simple_rnn_cell/BiasAdd/ReadVariableOp2
Hsequential_52/simple_rnn_274/while/simple_rnn_cell/MatMul/ReadVariableOpHsequential_52/simple_rnn_274/while/simple_rnn_cell/MatMul/ReadVariableOp2
Jsequential_52/simple_rnn_274/while/simple_rnn_cell/MatMul_1/ReadVariableOpJsequential_52/simple_rnn_274/while/simple_rnn_cell/MatMul_1/ReadVariableOp:g c

_output_shapes
: 
I
_user_specified_name1/sequential_52/simple_rnn_274/while/loop_counter:mi

_output_shapes
: 
O
_user_specified_name75sequential_52/simple_rnn_274/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:d`

_output_shapes
: 
F
_user_specified_name.,sequential_52/simple_rnn_274/strided_slice_1:|x

_output_shapes
: 
^
_user_specified_nameFDsequential_52/simple_rnn_274/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
В5

J__inference_simple_rnn_277_layer_call_and_return_conditional_losses_941790

inputs(
simple_rnn_cell_941713:22$
simple_rnn_cell_941715:2(
simple_rnn_cell_941717:22
identityЂ'simple_rnn_cell/StatefulPartitionedCallЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskр
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_941713simple_rnn_cell_941715simple_rnn_cell_941717*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_941712n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ъ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_941713simple_rnn_cell_941715simple_rnn_cell_941717*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_941726*
condR
while_cond_941725*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2T
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
 
_user_specified_nameinputs:&"
 
_user_specified_name941713:&"
 
_user_specified_name941715:&"
 
_user_specified_name941717
І
H
,__inference_dropout_277_layer_call_fn_945180

inputs
identityЕ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_277_layer_call_and_return_conditional_losses_942860`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ2:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
	
Л
/__inference_simple_rnn_276_layer_call_fn_944205
inputs_0
unknown:22
	unknown_0:2
	unknown_1:22
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_276_layer_call_and_return_conditional_losses_941498|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs_0:&"
 
_user_specified_name944197:&"
 
_user_specified_name944199:&"
 
_user_specified_name944201
ч
Њ
while_cond_944772
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_944772___redundant_placeholder04
0while_while_cond_944772___redundant_placeholder14
0while_while_cond_944772___redundant_placeholder24
0while_while_cond_944772___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
к
ш
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945323

inputs
states_00
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ч
Њ
while_cond_941146
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_941146___redundant_placeholder04
0while_while_cond_941146___redundant_placeholder14
0while_while_cond_941146___redundant_placeholder24
0while_while_cond_941146___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ч
Њ
while_cond_941434
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_941434___redundant_placeholder04
0while_while_cond_941434___redundant_placeholder14
0while_while_cond_941434___redundant_placeholder24
0while_while_cond_941434___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
	
Л
/__inference_simple_rnn_276_layer_call_fn_944194
inputs_0
unknown:22
	unknown_0:2
	unknown_1:22
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_276_layer_call_and_return_conditional_losses_941379|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs_0:&"
 
_user_specified_name944186:&"
 
_user_specified_name944188:&"
 
_user_specified_name944190
я"
У
while_body_941147
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_simple_rnn_cell_941169_0:22,
while_simple_rnn_cell_941171_0:20
while_simple_rnn_cell_941173_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_simple_rnn_cell_941169:22*
while_simple_rnn_cell_941171:2.
while_simple_rnn_cell_941173:22Ђ-while/simple_rnn_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_941169_0while_simple_rnn_cell_941171_0while_simple_rnn_cell_941173_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_941134п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2X

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_941169while_simple_rnn_cell_941169_0">
while_simple_rnn_cell_941171while_simple_rnn_cell_941171_0">
while_simple_rnn_cell_941173while_simple_rnn_cell_941173_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name941169:&"
 
_user_specified_name941171:&	"
 
_user_specified_name941173
я"
У
while_body_941028
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_simple_rnn_cell_941050_0:22,
while_simple_rnn_cell_941052_0:20
while_simple_rnn_cell_941054_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_simple_rnn_cell_941050:22*
while_simple_rnn_cell_941052:2.
while_simple_rnn_cell_941054:22Ђ-while/simple_rnn_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_941050_0while_simple_rnn_cell_941052_0while_simple_rnn_cell_941054_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_941015п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2X

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_941050while_simple_rnn_cell_941050_0">
while_simple_rnn_cell_941052while_simple_rnn_cell_941052_0">
while_simple_rnn_cell_941054while_simple_rnn_cell_941054_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name941050:&"
 
_user_specified_name941052:&	"
 
_user_specified_name941054
$
У
while_body_941605
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_simple_rnn_cell_941627_0:22,
while_simple_rnn_cell_941629_0:20
while_simple_rnn_cell_941631_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_simple_rnn_cell_941627:22*
while_simple_rnn_cell_941629:2.
while_simple_rnn_cell_941631:22Ђ-while/simple_rnn_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_941627_0while_simple_rnn_cell_941629_0while_simple_rnn_cell_941631_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_941591r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:06while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2X

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_941627while_simple_rnn_cell_941627_0">
while_simple_rnn_cell_941629while_simple_rnn_cell_941629_0">
while_simple_rnn_cell_941631while_simple_rnn_cell_941631_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name941627:&"
 
_user_specified_name941629:&	"
 
_user_specified_name941631
д
ц
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_941134

inputs

states0
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
я"
У
while_body_940740
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_simple_rnn_cell_940762_0:2,
while_simple_rnn_cell_940764_0:20
while_simple_rnn_cell_940766_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_simple_rnn_cell_940762:2*
while_simple_rnn_cell_940764:2.
while_simple_rnn_cell_940766:22Ђ-while/simple_rnn_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_940762_0while_simple_rnn_cell_940764_0while_simple_rnn_cell_940766_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_940727п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2X

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_940762while_simple_rnn_cell_940762_0">
while_simple_rnn_cell_940764while_simple_rnn_cell_940764_0">
while_simple_rnn_cell_940766while_simple_rnn_cell_940766_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name940762:&"
 
_user_specified_name940764:&	"
 
_user_specified_name940766
Ч4

J__inference_simple_rnn_274_layer_call_and_return_conditional_losses_940803

inputs(
simple_rnn_cell_940728:2$
simple_rnn_cell_940730:2(
simple_rnn_cell_940732:22
identityЂ'simple_rnn_cell/StatefulPartitionedCallЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskр
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_940728simple_rnn_cell_940730simple_rnn_cell_940732*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_940727n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ъ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_940728simple_rnn_cell_940730simple_rnn_cell_940732*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_940740*
condR
while_cond_940739*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2T
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:&"
 
_user_specified_name940728:&"
 
_user_specified_name940730:&"
 
_user_specified_name940732
Ж
H
,__inference_dropout_274_layer_call_fn_943663

inputs
identityЙ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_274_layer_call_and_return_conditional_losses_942495d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
ч
Њ
while_cond_944882
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_944882___redundant_placeholder04
0while_while_cond_944882___redundant_placeholder14
0while_while_cond_944882___redundant_placeholder24
0while_while_cond_944882___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ч
Њ
while_cond_942139
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_942139___redundant_placeholder04
0while_while_cond_942139___redundant_placeholder14
0while_while_cond_942139___redundant_placeholder24
0while_while_cond_942139___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
И
O
#__inference__update_step_xla_943162
gradient
variable:22*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:22: *
	_noinline(:H D

_output_shapes

:22
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
д
e
,__inference_dropout_277_layer_call_fn_945175

inputs
identityЂStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_277_layer_call_and_return_conditional_losses_942355o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ222
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
З

f
G__inference_dropout_275_layer_call_and_return_conditional_losses_944178

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>Њ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
/
Ж
while_body_944883
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:22E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:22C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
6
ѓ
I__inference_sequential_52_layer_call_and_return_conditional_losses_942373
simple_rnn_274_input'
simple_rnn_274_941951:2#
simple_rnn_274_941953:2'
simple_rnn_274_941955:22'
simple_rnn_275_942079:22#
simple_rnn_275_942081:2'
simple_rnn_275_942083:22'
simple_rnn_276_942207:22#
simple_rnn_276_942209:2'
simple_rnn_276_942211:22'
simple_rnn_277_942337:22#
simple_rnn_277_942339:2'
simple_rnn_277_942341:22!
dense_52_942367:2
dense_52_942369:
identityЂ dense_52/StatefulPartitionedCallЂ#dropout_274/StatefulPartitionedCallЂ#dropout_275/StatefulPartitionedCallЂ#dropout_276/StatefulPartitionedCallЂ#dropout_277/StatefulPartitionedCallЂ&simple_rnn_274/StatefulPartitionedCallЂ&simple_rnn_275/StatefulPartitionedCallЂ&simple_rnn_276/StatefulPartitionedCallЂ&simple_rnn_277/StatefulPartitionedCallЖ
&simple_rnn_274/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_274_inputsimple_rnn_274_941951simple_rnn_274_941953simple_rnn_274_941955*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_274_layer_call_and_return_conditional_losses_941950ў
#dropout_274/StatefulPartitionedCallStatefulPartitionedCall/simple_rnn_274/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_274_layer_call_and_return_conditional_losses_941969Ю
&simple_rnn_275/StatefulPartitionedCallStatefulPartitionedCall,dropout_274/StatefulPartitionedCall:output:0simple_rnn_275_942079simple_rnn_275_942081simple_rnn_275_942083*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_275_layer_call_and_return_conditional_losses_942078Є
#dropout_275/StatefulPartitionedCallStatefulPartitionedCall/simple_rnn_275/StatefulPartitionedCall:output:0$^dropout_274/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_275_layer_call_and_return_conditional_losses_942097Ю
&simple_rnn_276/StatefulPartitionedCallStatefulPartitionedCall,dropout_275/StatefulPartitionedCall:output:0simple_rnn_276_942207simple_rnn_276_942209simple_rnn_276_942211*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_276_layer_call_and_return_conditional_losses_942206Є
#dropout_276/StatefulPartitionedCallStatefulPartitionedCall/simple_rnn_276/StatefulPartitionedCall:output:0$^dropout_275/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_276_layer_call_and_return_conditional_losses_942225Ъ
&simple_rnn_277/StatefulPartitionedCallStatefulPartitionedCall,dropout_276/StatefulPartitionedCall:output:0simple_rnn_277_942337simple_rnn_277_942339simple_rnn_277_942341*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_277_layer_call_and_return_conditional_losses_942336 
#dropout_277/StatefulPartitionedCallStatefulPartitionedCall/simple_rnn_277/StatefulPartitionedCall:output:0$^dropout_276/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_277_layer_call_and_return_conditional_losses_942355
 dense_52/StatefulPartitionedCallStatefulPartitionedCall,dropout_277/StatefulPartitionedCall:output:0dense_52_942367dense_52_942369*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_52_layer_call_and_return_conditional_losses_942366x
IdentityIdentity)dense_52/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp!^dense_52/StatefulPartitionedCall$^dropout_274/StatefulPartitionedCall$^dropout_275/StatefulPartitionedCall$^dropout_276/StatefulPartitionedCall$^dropout_277/StatefulPartitionedCall'^simple_rnn_274/StatefulPartitionedCall'^simple_rnn_275/StatefulPartitionedCall'^simple_rnn_276/StatefulPartitionedCall'^simple_rnn_277/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:џџџџџџџџџ: : : : : : : : : : : : : : 2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall2J
#dropout_274/StatefulPartitionedCall#dropout_274/StatefulPartitionedCall2J
#dropout_275/StatefulPartitionedCall#dropout_275/StatefulPartitionedCall2J
#dropout_276/StatefulPartitionedCall#dropout_276/StatefulPartitionedCall2J
#dropout_277/StatefulPartitionedCall#dropout_277/StatefulPartitionedCall2P
&simple_rnn_274/StatefulPartitionedCall&simple_rnn_274/StatefulPartitionedCall2P
&simple_rnn_275/StatefulPartitionedCall&simple_rnn_275/StatefulPartitionedCall2P
&simple_rnn_276/StatefulPartitionedCall&simple_rnn_276/StatefulPartitionedCall2P
&simple_rnn_277/StatefulPartitionedCall&simple_rnn_277/StatefulPartitionedCall:a ]
+
_output_shapes
:џџџџџџџџџ
.
_user_specified_namesimple_rnn_274_input:&"
 
_user_specified_name941951:&"
 
_user_specified_name941953:&"
 
_user_specified_name941955:&"
 
_user_specified_name942079:&"
 
_user_specified_name942081:&"
 
_user_specified_name942083:&"
 
_user_specified_name942207:&"
 
_user_specified_name942209:&	"
 
_user_specified_name942211:&
"
 
_user_specified_name942337:&"
 
_user_specified_name942339:&"
 
_user_specified_name942341:&"
 
_user_specified_name942367:&"
 
_user_specified_name942369
И
O
#__inference__update_step_xla_943142
gradient
variable:22*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:22: *
	_noinline(:H D

_output_shapes

:22
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
И
O
#__inference__update_step_xla_943127
gradient
variable:22*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:22: *
	_noinline(:H D

_output_shapes

:22
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Е=
Б
J__inference_simple_rnn_276_layer_call_and_return_conditional_losses_944551

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:22=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_944485*
condR
while_cond_944484*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
/
Ж
while_body_944773
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:22E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:22C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
/
Ж
while_body_942781
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:22E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:22C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
я"
У
while_body_941435
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_simple_rnn_cell_941457_0:22,
while_simple_rnn_cell_941459_0:20
while_simple_rnn_cell_941461_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_simple_rnn_cell_941457:22*
while_simple_rnn_cell_941459:2.
while_simple_rnn_cell_941461:22Ђ-while/simple_rnn_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_941457_0while_simple_rnn_cell_941459_0while_simple_rnn_cell_941461_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_941422п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2X

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_941457while_simple_rnn_cell_941457_0">
while_simple_rnn_cell_941459while_simple_rnn_cell_941459_0">
while_simple_rnn_cell_941461while_simple_rnn_cell_941461_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name941457:&"
 
_user_specified_name941459:&	"
 
_user_specified_name941461
к
ш
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945340

inputs
states_00
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
И
O
#__inference__update_step_xla_943112
gradient
variable:2*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:2: *
	_noinline(:H D

_output_shapes

:2
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ч4

J__inference_simple_rnn_274_layer_call_and_return_conditional_losses_940922

inputs(
simple_rnn_cell_940847:2$
simple_rnn_cell_940849:2(
simple_rnn_cell_940851:22
identityЂ'simple_rnn_cell/StatefulPartitionedCallЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskр
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_940847simple_rnn_cell_940849simple_rnn_cell_940851*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_940846n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ъ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_940847simple_rnn_cell_940849simple_rnn_cell_940851*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_940859*
condR
while_cond_940858*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2T
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:&"
 
_user_specified_name940847:&"
 
_user_specified_name940849:&"
 
_user_specified_name940851
я"
У
while_body_940859
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_simple_rnn_cell_940881_0:2,
while_simple_rnn_cell_940883_0:20
while_simple_rnn_cell_940885_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_simple_rnn_cell_940881:2*
while_simple_rnn_cell_940883:2.
while_simple_rnn_cell_940885:22Ђ-while/simple_rnn_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_940881_0while_simple_rnn_cell_940883_0while_simple_rnn_cell_940885_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_940846п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2X

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_940881while_simple_rnn_cell_940881_0">
while_simple_rnn_cell_940883while_simple_rnn_cell_940883_0">
while_simple_rnn_cell_940885while_simple_rnn_cell_940885_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name940881:&"
 
_user_specified_name940883:&	"
 
_user_specified_name940885
ч
Њ
while_cond_943370
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_943370___redundant_placeholder04
0while_while_cond_943370___redundant_placeholder14
0while_while_cond_943370___redundant_placeholder24
0while_while_cond_943370___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Л>
Б
J__inference_simple_rnn_277_layer_call_and_return_conditional_losses_942336

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:22=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_942269*
condR
while_cond_942268*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
к/
л
I__inference_sequential_52_layer_call_and_return_conditional_losses_942868
simple_rnn_274_input'
simple_rnn_274_942484:2#
simple_rnn_274_942486:2'
simple_rnn_274_942488:22'
simple_rnn_275_942605:22#
simple_rnn_275_942607:2'
simple_rnn_275_942609:22'
simple_rnn_276_942726:22#
simple_rnn_276_942728:2'
simple_rnn_276_942730:22'
simple_rnn_277_942849:22#
simple_rnn_277_942851:2'
simple_rnn_277_942853:22!
dense_52_942862:2
dense_52_942864:
identityЂ dense_52/StatefulPartitionedCallЂ&simple_rnn_274/StatefulPartitionedCallЂ&simple_rnn_275/StatefulPartitionedCallЂ&simple_rnn_276/StatefulPartitionedCallЂ&simple_rnn_277/StatefulPartitionedCallЖ
&simple_rnn_274/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_274_inputsimple_rnn_274_942484simple_rnn_274_942486simple_rnn_274_942488*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_274_layer_call_and_return_conditional_losses_942483ю
dropout_274/PartitionedCallPartitionedCall/simple_rnn_274/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_274_layer_call_and_return_conditional_losses_942495Ц
&simple_rnn_275/StatefulPartitionedCallStatefulPartitionedCall$dropout_274/PartitionedCall:output:0simple_rnn_275_942605simple_rnn_275_942607simple_rnn_275_942609*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_275_layer_call_and_return_conditional_losses_942604ю
dropout_275/PartitionedCallPartitionedCall/simple_rnn_275/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_275_layer_call_and_return_conditional_losses_942616Ц
&simple_rnn_276/StatefulPartitionedCallStatefulPartitionedCall$dropout_275/PartitionedCall:output:0simple_rnn_276_942726simple_rnn_276_942728simple_rnn_276_942730*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_276_layer_call_and_return_conditional_losses_942725ю
dropout_276/PartitionedCallPartitionedCall/simple_rnn_276/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_276_layer_call_and_return_conditional_losses_942737Т
&simple_rnn_277/StatefulPartitionedCallStatefulPartitionedCall$dropout_276/PartitionedCall:output:0simple_rnn_277_942849simple_rnn_277_942851simple_rnn_277_942853*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_277_layer_call_and_return_conditional_losses_942848ъ
dropout_277/PartitionedCallPartitionedCall/simple_rnn_277/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_277_layer_call_and_return_conditional_losses_942860
 dense_52/StatefulPartitionedCallStatefulPartitionedCall$dropout_277/PartitionedCall:output:0dense_52_942862dense_52_942864*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_52_layer_call_and_return_conditional_losses_942366x
IdentityIdentity)dense_52/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџщ
NoOpNoOp!^dense_52/StatefulPartitionedCall'^simple_rnn_274/StatefulPartitionedCall'^simple_rnn_275/StatefulPartitionedCall'^simple_rnn_276/StatefulPartitionedCall'^simple_rnn_277/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:џџџџџџџџџ: : : : : : : : : : : : : : 2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall2P
&simple_rnn_274/StatefulPartitionedCall&simple_rnn_274/StatefulPartitionedCall2P
&simple_rnn_275/StatefulPartitionedCall&simple_rnn_275/StatefulPartitionedCall2P
&simple_rnn_276/StatefulPartitionedCall&simple_rnn_276/StatefulPartitionedCall2P
&simple_rnn_277/StatefulPartitionedCall&simple_rnn_277/StatefulPartitionedCall:a ]
+
_output_shapes
:џџџџџџџџџ
.
_user_specified_namesimple_rnn_274_input:&"
 
_user_specified_name942484:&"
 
_user_specified_name942486:&"
 
_user_specified_name942488:&"
 
_user_specified_name942605:&"
 
_user_specified_name942607:&"
 
_user_specified_name942609:&"
 
_user_specified_name942726:&"
 
_user_specified_name942728:&	"
 
_user_specified_name942730:&
"
 
_user_specified_name942849:&"
 
_user_specified_name942851:&"
 
_user_specified_name942853:&"
 
_user_specified_name942862:&"
 
_user_specified_name942864
$
У
while_body_941726
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_simple_rnn_cell_941748_0:22,
while_simple_rnn_cell_941750_0:20
while_simple_rnn_cell_941752_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_simple_rnn_cell_941748:22*
while_simple_rnn_cell_941750:2.
while_simple_rnn_cell_941752:22Ђ-while/simple_rnn_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_941748_0while_simple_rnn_cell_941750_0while_simple_rnn_cell_941752_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_941712r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:06while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2X

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_941748while_simple_rnn_cell_941748_0">
while_simple_rnn_cell_941750while_simple_rnn_cell_941750_0">
while_simple_rnn_cell_941752while_simple_rnn_cell_941752_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2^
-while/simple_rnn_cell/StatefulPartitionedCall-while/simple_rnn_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name941748:&"
 
_user_specified_name941750:&	"
 
_user_specified_name941752
к
ш
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945402

inputs
states_00
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Е=
Б
J__inference_simple_rnn_276_layer_call_and_return_conditional_losses_944659

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:22=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_944593*
condR
while_cond_944592*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource

и
0__inference_simple_rnn_cell_layer_call_fn_945354

inputs
states_0
unknown:22
	unknown_0:2
	unknown_1:22
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_941303o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ2:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_0:&"
 
_user_specified_name945344:&"
 
_user_specified_name945346:&"
 
_user_specified_name945348
ї	
ѕ
D__inference_dense_52_layer_call_and_return_conditional_losses_945216

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
й
Й
/__inference_simple_rnn_277_layer_call_fn_944719

inputs
unknown:22
	unknown_0:2
	unknown_1:22
identityЂStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_277_layer_call_and_return_conditional_losses_942336o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:&"
 
_user_specified_name944711:&"
 
_user_specified_name944713:&"
 
_user_specified_name944715

и
0__inference_simple_rnn_cell_layer_call_fn_945292

inputs
states_0
unknown:22
	unknown_0:2
	unknown_1:22
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_941015o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ2:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_0:&"
 
_user_specified_name945282:&"
 
_user_specified_name945284:&"
 
_user_specified_name945286
с
Й
/__inference_simple_rnn_274_layer_call_fn_943221

inputs
unknown:2
	unknown_0:2
	unknown_1:22
identityЂStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_274_layer_call_and_return_conditional_losses_942483s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:&"
 
_user_specified_name943213:&"
 
_user_specified_name943215:&"
 
_user_specified_name943217
И
O
#__inference__update_step_xla_943172
gradient
variable:2*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:2: *
	_noinline(:H D

_output_shapes

:2
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
J
 
.sequential_52_simple_rnn_276_while_body_940504V
Rsequential_52_simple_rnn_276_while_sequential_52_simple_rnn_276_while_loop_counter\
Xsequential_52_simple_rnn_276_while_sequential_52_simple_rnn_276_while_maximum_iterations2
.sequential_52_simple_rnn_276_while_placeholder4
0sequential_52_simple_rnn_276_while_placeholder_14
0sequential_52_simple_rnn_276_while_placeholder_2U
Qsequential_52_simple_rnn_276_while_sequential_52_simple_rnn_276_strided_slice_1_0
sequential_52_simple_rnn_276_while_tensorarrayv2read_tensorlistgetitem_sequential_52_simple_rnn_276_tensorarrayunstack_tensorlistfromtensor_0e
Ssequential_52_simple_rnn_276_while_simple_rnn_cell_matmul_readvariableop_resource_0:22b
Tsequential_52_simple_rnn_276_while_simple_rnn_cell_biasadd_readvariableop_resource_0:2g
Usequential_52_simple_rnn_276_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22/
+sequential_52_simple_rnn_276_while_identity1
-sequential_52_simple_rnn_276_while_identity_11
-sequential_52_simple_rnn_276_while_identity_21
-sequential_52_simple_rnn_276_while_identity_31
-sequential_52_simple_rnn_276_while_identity_4S
Osequential_52_simple_rnn_276_while_sequential_52_simple_rnn_276_strided_slice_1
sequential_52_simple_rnn_276_while_tensorarrayv2read_tensorlistgetitem_sequential_52_simple_rnn_276_tensorarrayunstack_tensorlistfromtensorc
Qsequential_52_simple_rnn_276_while_simple_rnn_cell_matmul_readvariableop_resource:22`
Rsequential_52_simple_rnn_276_while_simple_rnn_cell_biasadd_readvariableop_resource:2e
Ssequential_52_simple_rnn_276_while_simple_rnn_cell_matmul_1_readvariableop_resource:22ЂIsequential_52/simple_rnn_276/while/simple_rnn_cell/BiasAdd/ReadVariableOpЂHsequential_52/simple_rnn_276/while/simple_rnn_cell/MatMul/ReadVariableOpЂJsequential_52/simple_rnn_276/while/simple_rnn_cell/MatMul_1/ReadVariableOpЅ
Tsequential_52/simple_rnn_276/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
Fsequential_52/simple_rnn_276/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_52_simple_rnn_276_while_tensorarrayv2read_tensorlistgetitem_sequential_52_simple_rnn_276_tensorarrayunstack_tensorlistfromtensor_0.sequential_52_simple_rnn_276_while_placeholder]sequential_52/simple_rnn_276/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0м
Hsequential_52/simple_rnn_276/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpSsequential_52_simple_rnn_276_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0
9sequential_52/simple_rnn_276/while/simple_rnn_cell/MatMulMatMulMsequential_52/simple_rnn_276/while/TensorArrayV2Read/TensorListGetItem:item:0Psequential_52/simple_rnn_276/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2к
Isequential_52/simple_rnn_276/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpTsequential_52_simple_rnn_276_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0
:sequential_52/simple_rnn_276/while/simple_rnn_cell/BiasAddBiasAddCsequential_52/simple_rnn_276/while/simple_rnn_cell/MatMul:product:0Qsequential_52/simple_rnn_276/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2р
Jsequential_52/simple_rnn_276/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpUsequential_52_simple_rnn_276_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0§
;sequential_52/simple_rnn_276/while/simple_rnn_cell/MatMul_1MatMul0sequential_52_simple_rnn_276_while_placeholder_2Rsequential_52/simple_rnn_276/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2§
6sequential_52/simple_rnn_276/while/simple_rnn_cell/addAddV2Csequential_52/simple_rnn_276/while/simple_rnn_cell/BiasAdd:output:0Esequential_52/simple_rnn_276/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2­
7sequential_52/simple_rnn_276/while/simple_rnn_cell/TanhTanh:sequential_52/simple_rnn_276/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Л
Gsequential_52/simple_rnn_276/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem0sequential_52_simple_rnn_276_while_placeholder_1.sequential_52_simple_rnn_276_while_placeholder;sequential_52/simple_rnn_276/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвj
(sequential_52/simple_rnn_276/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Г
&sequential_52/simple_rnn_276/while/addAddV2.sequential_52_simple_rnn_276_while_placeholder1sequential_52/simple_rnn_276/while/add/y:output:0*
T0*
_output_shapes
: l
*sequential_52/simple_rnn_276/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :л
(sequential_52/simple_rnn_276/while/add_1AddV2Rsequential_52_simple_rnn_276_while_sequential_52_simple_rnn_276_while_loop_counter3sequential_52/simple_rnn_276/while/add_1/y:output:0*
T0*
_output_shapes
: А
+sequential_52/simple_rnn_276/while/IdentityIdentity,sequential_52/simple_rnn_276/while/add_1:z:0(^sequential_52/simple_rnn_276/while/NoOp*
T0*
_output_shapes
: о
-sequential_52/simple_rnn_276/while/Identity_1IdentityXsequential_52_simple_rnn_276_while_sequential_52_simple_rnn_276_while_maximum_iterations(^sequential_52/simple_rnn_276/while/NoOp*
T0*
_output_shapes
: А
-sequential_52/simple_rnn_276/while/Identity_2Identity*sequential_52/simple_rnn_276/while/add:z:0(^sequential_52/simple_rnn_276/while/NoOp*
T0*
_output_shapes
: н
-sequential_52/simple_rnn_276/while/Identity_3IdentityWsequential_52/simple_rnn_276/while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^sequential_52/simple_rnn_276/while/NoOp*
T0*
_output_shapes
: в
-sequential_52/simple_rnn_276/while/Identity_4Identity;sequential_52/simple_rnn_276/while/simple_rnn_cell/Tanh:y:0(^sequential_52/simple_rnn_276/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Љ
'sequential_52/simple_rnn_276/while/NoOpNoOpJ^sequential_52/simple_rnn_276/while/simple_rnn_cell/BiasAdd/ReadVariableOpI^sequential_52/simple_rnn_276/while/simple_rnn_cell/MatMul/ReadVariableOpK^sequential_52/simple_rnn_276/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "c
+sequential_52_simple_rnn_276_while_identity4sequential_52/simple_rnn_276/while/Identity:output:0"g
-sequential_52_simple_rnn_276_while_identity_16sequential_52/simple_rnn_276/while/Identity_1:output:0"g
-sequential_52_simple_rnn_276_while_identity_26sequential_52/simple_rnn_276/while/Identity_2:output:0"g
-sequential_52_simple_rnn_276_while_identity_36sequential_52/simple_rnn_276/while/Identity_3:output:0"g
-sequential_52_simple_rnn_276_while_identity_46sequential_52/simple_rnn_276/while/Identity_4:output:0"Є
Osequential_52_simple_rnn_276_while_sequential_52_simple_rnn_276_strided_slice_1Qsequential_52_simple_rnn_276_while_sequential_52_simple_rnn_276_strided_slice_1_0"Њ
Rsequential_52_simple_rnn_276_while_simple_rnn_cell_biasadd_readvariableop_resourceTsequential_52_simple_rnn_276_while_simple_rnn_cell_biasadd_readvariableop_resource_0"Ќ
Ssequential_52_simple_rnn_276_while_simple_rnn_cell_matmul_1_readvariableop_resourceUsequential_52_simple_rnn_276_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"Ј
Qsequential_52_simple_rnn_276_while_simple_rnn_cell_matmul_readvariableop_resourceSsequential_52_simple_rnn_276_while_simple_rnn_cell_matmul_readvariableop_resource_0"
sequential_52_simple_rnn_276_while_tensorarrayv2read_tensorlistgetitem_sequential_52_simple_rnn_276_tensorarrayunstack_tensorlistfromtensorsequential_52_simple_rnn_276_while_tensorarrayv2read_tensorlistgetitem_sequential_52_simple_rnn_276_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2
Isequential_52/simple_rnn_276/while/simple_rnn_cell/BiasAdd/ReadVariableOpIsequential_52/simple_rnn_276/while/simple_rnn_cell/BiasAdd/ReadVariableOp2
Hsequential_52/simple_rnn_276/while/simple_rnn_cell/MatMul/ReadVariableOpHsequential_52/simple_rnn_276/while/simple_rnn_cell/MatMul/ReadVariableOp2
Jsequential_52/simple_rnn_276/while/simple_rnn_cell/MatMul_1/ReadVariableOpJsequential_52/simple_rnn_276/while/simple_rnn_cell/MatMul_1/ReadVariableOp:g c

_output_shapes
: 
I
_user_specified_name1/sequential_52/simple_rnn_276/while/loop_counter:mi

_output_shapes
: 
O
_user_specified_name75sequential_52/simple_rnn_276/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:d`

_output_shapes
: 
F
_user_specified_name.,sequential_52/simple_rnn_276/strided_slice_1:|x

_output_shapes
: 
^
_user_specified_nameFDsequential_52/simple_rnn_276/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
щ
§#
"__inference__traced_restore_945909
file_prefix2
 assignvariableop_dense_52_kernel:2.
 assignvariableop_1_dense_52_bias:J
8assignvariableop_2_simple_rnn_274_simple_rnn_cell_kernel:2T
Bassignvariableop_3_simple_rnn_274_simple_rnn_cell_recurrent_kernel:22D
6assignvariableop_4_simple_rnn_274_simple_rnn_cell_bias:2J
8assignvariableop_5_simple_rnn_275_simple_rnn_cell_kernel:22T
Bassignvariableop_6_simple_rnn_275_simple_rnn_cell_recurrent_kernel:22D
6assignvariableop_7_simple_rnn_275_simple_rnn_cell_bias:2J
8assignvariableop_8_simple_rnn_276_simple_rnn_cell_kernel:22T
Bassignvariableop_9_simple_rnn_276_simple_rnn_cell_recurrent_kernel:22E
7assignvariableop_10_simple_rnn_276_simple_rnn_cell_bias:2K
9assignvariableop_11_simple_rnn_277_simple_rnn_cell_kernel:22U
Cassignvariableop_12_simple_rnn_277_simple_rnn_cell_recurrent_kernel:22E
7assignvariableop_13_simple_rnn_277_simple_rnn_cell_bias:2'
assignvariableop_14_iteration:	 +
!assignvariableop_15_learning_rate: T
Bassignvariableop_16_adamax_m_simple_rnn_274_simple_rnn_cell_kernel:2T
Bassignvariableop_17_adamax_u_simple_rnn_274_simple_rnn_cell_kernel:2^
Lassignvariableop_18_adamax_m_simple_rnn_274_simple_rnn_cell_recurrent_kernel:22^
Lassignvariableop_19_adamax_u_simple_rnn_274_simple_rnn_cell_recurrent_kernel:22N
@assignvariableop_20_adamax_m_simple_rnn_274_simple_rnn_cell_bias:2N
@assignvariableop_21_adamax_u_simple_rnn_274_simple_rnn_cell_bias:2T
Bassignvariableop_22_adamax_m_simple_rnn_275_simple_rnn_cell_kernel:22T
Bassignvariableop_23_adamax_u_simple_rnn_275_simple_rnn_cell_kernel:22^
Lassignvariableop_24_adamax_m_simple_rnn_275_simple_rnn_cell_recurrent_kernel:22^
Lassignvariableop_25_adamax_u_simple_rnn_275_simple_rnn_cell_recurrent_kernel:22N
@assignvariableop_26_adamax_m_simple_rnn_275_simple_rnn_cell_bias:2N
@assignvariableop_27_adamax_u_simple_rnn_275_simple_rnn_cell_bias:2T
Bassignvariableop_28_adamax_m_simple_rnn_276_simple_rnn_cell_kernel:22T
Bassignvariableop_29_adamax_u_simple_rnn_276_simple_rnn_cell_kernel:22^
Lassignvariableop_30_adamax_m_simple_rnn_276_simple_rnn_cell_recurrent_kernel:22^
Lassignvariableop_31_adamax_u_simple_rnn_276_simple_rnn_cell_recurrent_kernel:22N
@assignvariableop_32_adamax_m_simple_rnn_276_simple_rnn_cell_bias:2N
@assignvariableop_33_adamax_u_simple_rnn_276_simple_rnn_cell_bias:2T
Bassignvariableop_34_adamax_m_simple_rnn_277_simple_rnn_cell_kernel:22T
Bassignvariableop_35_adamax_u_simple_rnn_277_simple_rnn_cell_kernel:22^
Lassignvariableop_36_adamax_m_simple_rnn_277_simple_rnn_cell_recurrent_kernel:22^
Lassignvariableop_37_adamax_u_simple_rnn_277_simple_rnn_cell_recurrent_kernel:22N
@assignvariableop_38_adamax_m_simple_rnn_277_simple_rnn_cell_bias:2N
@assignvariableop_39_adamax_u_simple_rnn_277_simple_rnn_cell_bias:2>
,assignvariableop_40_adamax_m_dense_52_kernel:2>
,assignvariableop_41_adamax_u_dense_52_kernel:28
*assignvariableop_42_adamax_m_dense_52_bias:8
*assignvariableop_43_adamax_u_dense_52_bias:#
assignvariableop_44_total: #
assignvariableop_45_count: 
identity_47ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_42ЂAssignVariableOp_43ЂAssignVariableOp_44ЂAssignVariableOp_45ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9з
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*§
valueѓB№/B6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЮ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*q
valuehBf/B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*в
_output_shapesП
М:::::::::::::::::::::::::::::::::::::::::::::::*=
dtypes3
12/	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Г
AssignVariableOpAssignVariableOp assignvariableop_dense_52_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_52_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_2AssignVariableOp8assignvariableop_2_simple_rnn_274_simple_rnn_cell_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_3AssignVariableOpBassignvariableop_3_simple_rnn_274_simple_rnn_cell_recurrent_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_4AssignVariableOp6assignvariableop_4_simple_rnn_274_simple_rnn_cell_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_5AssignVariableOp8assignvariableop_5_simple_rnn_275_simple_rnn_cell_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_6AssignVariableOpBassignvariableop_6_simple_rnn_275_simple_rnn_cell_recurrent_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_7AssignVariableOp6assignvariableop_7_simple_rnn_275_simple_rnn_cell_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_8AssignVariableOp8assignvariableop_8_simple_rnn_276_simple_rnn_cell_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_9AssignVariableOpBassignvariableop_9_simple_rnn_276_simple_rnn_cell_recurrent_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_10AssignVariableOp7assignvariableop_10_simple_rnn_276_simple_rnn_cell_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:в
AssignVariableOp_11AssignVariableOp9assignvariableop_11_simple_rnn_277_simple_rnn_cell_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:м
AssignVariableOp_12AssignVariableOpCassignvariableop_12_simple_rnn_277_simple_rnn_cell_recurrent_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_13AssignVariableOp7assignvariableop_13_simple_rnn_277_simple_rnn_cell_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:Ж
AssignVariableOp_14AssignVariableOpassignvariableop_14_iterationIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_15AssignVariableOp!assignvariableop_15_learning_rateIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:л
AssignVariableOp_16AssignVariableOpBassignvariableop_16_adamax_m_simple_rnn_274_simple_rnn_cell_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:л
AssignVariableOp_17AssignVariableOpBassignvariableop_17_adamax_u_simple_rnn_274_simple_rnn_cell_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:х
AssignVariableOp_18AssignVariableOpLassignvariableop_18_adamax_m_simple_rnn_274_simple_rnn_cell_recurrent_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:х
AssignVariableOp_19AssignVariableOpLassignvariableop_19_adamax_u_simple_rnn_274_simple_rnn_cell_recurrent_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_20AssignVariableOp@assignvariableop_20_adamax_m_simple_rnn_274_simple_rnn_cell_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adamax_u_simple_rnn_274_simple_rnn_cell_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:л
AssignVariableOp_22AssignVariableOpBassignvariableop_22_adamax_m_simple_rnn_275_simple_rnn_cell_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:л
AssignVariableOp_23AssignVariableOpBassignvariableop_23_adamax_u_simple_rnn_275_simple_rnn_cell_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:х
AssignVariableOp_24AssignVariableOpLassignvariableop_24_adamax_m_simple_rnn_275_simple_rnn_cell_recurrent_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:х
AssignVariableOp_25AssignVariableOpLassignvariableop_25_adamax_u_simple_rnn_275_simple_rnn_cell_recurrent_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_26AssignVariableOp@assignvariableop_26_adamax_m_simple_rnn_275_simple_rnn_cell_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adamax_u_simple_rnn_275_simple_rnn_cell_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:л
AssignVariableOp_28AssignVariableOpBassignvariableop_28_adamax_m_simple_rnn_276_simple_rnn_cell_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:л
AssignVariableOp_29AssignVariableOpBassignvariableop_29_adamax_u_simple_rnn_276_simple_rnn_cell_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:х
AssignVariableOp_30AssignVariableOpLassignvariableop_30_adamax_m_simple_rnn_276_simple_rnn_cell_recurrent_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:х
AssignVariableOp_31AssignVariableOpLassignvariableop_31_adamax_u_simple_rnn_276_simple_rnn_cell_recurrent_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_32AssignVariableOp@assignvariableop_32_adamax_m_simple_rnn_276_simple_rnn_cell_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_33AssignVariableOp@assignvariableop_33_adamax_u_simple_rnn_276_simple_rnn_cell_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:л
AssignVariableOp_34AssignVariableOpBassignvariableop_34_adamax_m_simple_rnn_277_simple_rnn_cell_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:л
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adamax_u_simple_rnn_277_simple_rnn_cell_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:х
AssignVariableOp_36AssignVariableOpLassignvariableop_36_adamax_m_simple_rnn_277_simple_rnn_cell_recurrent_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:х
AssignVariableOp_37AssignVariableOpLassignvariableop_37_adamax_u_simple_rnn_277_simple_rnn_cell_recurrent_kernelIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_38AssignVariableOp@assignvariableop_38_adamax_m_simple_rnn_277_simple_rnn_cell_biasIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_39AssignVariableOp@assignvariableop_39_adamax_u_simple_rnn_277_simple_rnn_cell_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_40AssignVariableOp,assignvariableop_40_adamax_m_dense_52_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_41AssignVariableOp,assignvariableop_41_adamax_u_dense_52_kernelIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adamax_m_dense_52_biasIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adamax_u_dense_52_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_44AssignVariableOpassignvariableop_44_totalIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_45AssignVariableOpassignvariableop_45_countIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 У
Identity_46Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_47IdentityIdentity_46:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_47Identity_47:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:/+
)
_user_specified_namedense_52/kernel:-)
'
_user_specified_namedense_52/bias:EA
?
_user_specified_name'%simple_rnn_274/simple_rnn_cell/kernel:OK
I
_user_specified_name1/simple_rnn_274/simple_rnn_cell/recurrent_kernel:C?
=
_user_specified_name%#simple_rnn_274/simple_rnn_cell/bias:EA
?
_user_specified_name'%simple_rnn_275/simple_rnn_cell/kernel:OK
I
_user_specified_name1/simple_rnn_275/simple_rnn_cell/recurrent_kernel:C?
=
_user_specified_name%#simple_rnn_275/simple_rnn_cell/bias:E	A
?
_user_specified_name'%simple_rnn_276/simple_rnn_cell/kernel:O
K
I
_user_specified_name1/simple_rnn_276/simple_rnn_cell/recurrent_kernel:C?
=
_user_specified_name%#simple_rnn_276/simple_rnn_cell/bias:EA
?
_user_specified_name'%simple_rnn_277/simple_rnn_cell/kernel:OK
I
_user_specified_name1/simple_rnn_277/simple_rnn_cell/recurrent_kernel:C?
=
_user_specified_name%#simple_rnn_277/simple_rnn_cell/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:NJ
H
_user_specified_name0.Adamax/m/simple_rnn_274/simple_rnn_cell/kernel:NJ
H
_user_specified_name0.Adamax/u/simple_rnn_274/simple_rnn_cell/kernel:XT
R
_user_specified_name:8Adamax/m/simple_rnn_274/simple_rnn_cell/recurrent_kernel:XT
R
_user_specified_name:8Adamax/u/simple_rnn_274/simple_rnn_cell/recurrent_kernel:LH
F
_user_specified_name.,Adamax/m/simple_rnn_274/simple_rnn_cell/bias:LH
F
_user_specified_name.,Adamax/u/simple_rnn_274/simple_rnn_cell/bias:NJ
H
_user_specified_name0.Adamax/m/simple_rnn_275/simple_rnn_cell/kernel:NJ
H
_user_specified_name0.Adamax/u/simple_rnn_275/simple_rnn_cell/kernel:XT
R
_user_specified_name:8Adamax/m/simple_rnn_275/simple_rnn_cell/recurrent_kernel:XT
R
_user_specified_name:8Adamax/u/simple_rnn_275/simple_rnn_cell/recurrent_kernel:LH
F
_user_specified_name.,Adamax/m/simple_rnn_275/simple_rnn_cell/bias:LH
F
_user_specified_name.,Adamax/u/simple_rnn_275/simple_rnn_cell/bias:NJ
H
_user_specified_name0.Adamax/m/simple_rnn_276/simple_rnn_cell/kernel:NJ
H
_user_specified_name0.Adamax/u/simple_rnn_276/simple_rnn_cell/kernel:XT
R
_user_specified_name:8Adamax/m/simple_rnn_276/simple_rnn_cell/recurrent_kernel:X T
R
_user_specified_name:8Adamax/u/simple_rnn_276/simple_rnn_cell/recurrent_kernel:L!H
F
_user_specified_name.,Adamax/m/simple_rnn_276/simple_rnn_cell/bias:L"H
F
_user_specified_name.,Adamax/u/simple_rnn_276/simple_rnn_cell/bias:N#J
H
_user_specified_name0.Adamax/m/simple_rnn_277/simple_rnn_cell/kernel:N$J
H
_user_specified_name0.Adamax/u/simple_rnn_277/simple_rnn_cell/kernel:X%T
R
_user_specified_name:8Adamax/m/simple_rnn_277/simple_rnn_cell/recurrent_kernel:X&T
R
_user_specified_name:8Adamax/u/simple_rnn_277/simple_rnn_cell/recurrent_kernel:L'H
F
_user_specified_name.,Adamax/m/simple_rnn_277/simple_rnn_cell/bias:L(H
F
_user_specified_name.,Adamax/u/simple_rnn_277/simple_rnn_cell/bias:8)4
2
_user_specified_nameAdamax/m/dense_52/kernel:8*4
2
_user_specified_nameAdamax/u/dense_52/kernel:6+2
0
_user_specified_nameAdamax/m/dense_52/bias:6,2
0
_user_specified_nameAdamax/u/dense_52/bias:%-!

_user_specified_nametotal:%.!

_user_specified_namecount
J
 
.sequential_52_simple_rnn_275_while_body_940399V
Rsequential_52_simple_rnn_275_while_sequential_52_simple_rnn_275_while_loop_counter\
Xsequential_52_simple_rnn_275_while_sequential_52_simple_rnn_275_while_maximum_iterations2
.sequential_52_simple_rnn_275_while_placeholder4
0sequential_52_simple_rnn_275_while_placeholder_14
0sequential_52_simple_rnn_275_while_placeholder_2U
Qsequential_52_simple_rnn_275_while_sequential_52_simple_rnn_275_strided_slice_1_0
sequential_52_simple_rnn_275_while_tensorarrayv2read_tensorlistgetitem_sequential_52_simple_rnn_275_tensorarrayunstack_tensorlistfromtensor_0e
Ssequential_52_simple_rnn_275_while_simple_rnn_cell_matmul_readvariableop_resource_0:22b
Tsequential_52_simple_rnn_275_while_simple_rnn_cell_biasadd_readvariableop_resource_0:2g
Usequential_52_simple_rnn_275_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22/
+sequential_52_simple_rnn_275_while_identity1
-sequential_52_simple_rnn_275_while_identity_11
-sequential_52_simple_rnn_275_while_identity_21
-sequential_52_simple_rnn_275_while_identity_31
-sequential_52_simple_rnn_275_while_identity_4S
Osequential_52_simple_rnn_275_while_sequential_52_simple_rnn_275_strided_slice_1
sequential_52_simple_rnn_275_while_tensorarrayv2read_tensorlistgetitem_sequential_52_simple_rnn_275_tensorarrayunstack_tensorlistfromtensorc
Qsequential_52_simple_rnn_275_while_simple_rnn_cell_matmul_readvariableop_resource:22`
Rsequential_52_simple_rnn_275_while_simple_rnn_cell_biasadd_readvariableop_resource:2e
Ssequential_52_simple_rnn_275_while_simple_rnn_cell_matmul_1_readvariableop_resource:22ЂIsequential_52/simple_rnn_275/while/simple_rnn_cell/BiasAdd/ReadVariableOpЂHsequential_52/simple_rnn_275/while/simple_rnn_cell/MatMul/ReadVariableOpЂJsequential_52/simple_rnn_275/while/simple_rnn_cell/MatMul_1/ReadVariableOpЅ
Tsequential_52/simple_rnn_275/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
Fsequential_52/simple_rnn_275/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_52_simple_rnn_275_while_tensorarrayv2read_tensorlistgetitem_sequential_52_simple_rnn_275_tensorarrayunstack_tensorlistfromtensor_0.sequential_52_simple_rnn_275_while_placeholder]sequential_52/simple_rnn_275/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0м
Hsequential_52/simple_rnn_275/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpSsequential_52_simple_rnn_275_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0
9sequential_52/simple_rnn_275/while/simple_rnn_cell/MatMulMatMulMsequential_52/simple_rnn_275/while/TensorArrayV2Read/TensorListGetItem:item:0Psequential_52/simple_rnn_275/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2к
Isequential_52/simple_rnn_275/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpTsequential_52_simple_rnn_275_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0
:sequential_52/simple_rnn_275/while/simple_rnn_cell/BiasAddBiasAddCsequential_52/simple_rnn_275/while/simple_rnn_cell/MatMul:product:0Qsequential_52/simple_rnn_275/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2р
Jsequential_52/simple_rnn_275/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpUsequential_52_simple_rnn_275_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0§
;sequential_52/simple_rnn_275/while/simple_rnn_cell/MatMul_1MatMul0sequential_52_simple_rnn_275_while_placeholder_2Rsequential_52/simple_rnn_275/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2§
6sequential_52/simple_rnn_275/while/simple_rnn_cell/addAddV2Csequential_52/simple_rnn_275/while/simple_rnn_cell/BiasAdd:output:0Esequential_52/simple_rnn_275/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2­
7sequential_52/simple_rnn_275/while/simple_rnn_cell/TanhTanh:sequential_52/simple_rnn_275/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Л
Gsequential_52/simple_rnn_275/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem0sequential_52_simple_rnn_275_while_placeholder_1.sequential_52_simple_rnn_275_while_placeholder;sequential_52/simple_rnn_275/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвj
(sequential_52/simple_rnn_275/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Г
&sequential_52/simple_rnn_275/while/addAddV2.sequential_52_simple_rnn_275_while_placeholder1sequential_52/simple_rnn_275/while/add/y:output:0*
T0*
_output_shapes
: l
*sequential_52/simple_rnn_275/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :л
(sequential_52/simple_rnn_275/while/add_1AddV2Rsequential_52_simple_rnn_275_while_sequential_52_simple_rnn_275_while_loop_counter3sequential_52/simple_rnn_275/while/add_1/y:output:0*
T0*
_output_shapes
: А
+sequential_52/simple_rnn_275/while/IdentityIdentity,sequential_52/simple_rnn_275/while/add_1:z:0(^sequential_52/simple_rnn_275/while/NoOp*
T0*
_output_shapes
: о
-sequential_52/simple_rnn_275/while/Identity_1IdentityXsequential_52_simple_rnn_275_while_sequential_52_simple_rnn_275_while_maximum_iterations(^sequential_52/simple_rnn_275/while/NoOp*
T0*
_output_shapes
: А
-sequential_52/simple_rnn_275/while/Identity_2Identity*sequential_52/simple_rnn_275/while/add:z:0(^sequential_52/simple_rnn_275/while/NoOp*
T0*
_output_shapes
: н
-sequential_52/simple_rnn_275/while/Identity_3IdentityWsequential_52/simple_rnn_275/while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^sequential_52/simple_rnn_275/while/NoOp*
T0*
_output_shapes
: в
-sequential_52/simple_rnn_275/while/Identity_4Identity;sequential_52/simple_rnn_275/while/simple_rnn_cell/Tanh:y:0(^sequential_52/simple_rnn_275/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Љ
'sequential_52/simple_rnn_275/while/NoOpNoOpJ^sequential_52/simple_rnn_275/while/simple_rnn_cell/BiasAdd/ReadVariableOpI^sequential_52/simple_rnn_275/while/simple_rnn_cell/MatMul/ReadVariableOpK^sequential_52/simple_rnn_275/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "c
+sequential_52_simple_rnn_275_while_identity4sequential_52/simple_rnn_275/while/Identity:output:0"g
-sequential_52_simple_rnn_275_while_identity_16sequential_52/simple_rnn_275/while/Identity_1:output:0"g
-sequential_52_simple_rnn_275_while_identity_26sequential_52/simple_rnn_275/while/Identity_2:output:0"g
-sequential_52_simple_rnn_275_while_identity_36sequential_52/simple_rnn_275/while/Identity_3:output:0"g
-sequential_52_simple_rnn_275_while_identity_46sequential_52/simple_rnn_275/while/Identity_4:output:0"Є
Osequential_52_simple_rnn_275_while_sequential_52_simple_rnn_275_strided_slice_1Qsequential_52_simple_rnn_275_while_sequential_52_simple_rnn_275_strided_slice_1_0"Њ
Rsequential_52_simple_rnn_275_while_simple_rnn_cell_biasadd_readvariableop_resourceTsequential_52_simple_rnn_275_while_simple_rnn_cell_biasadd_readvariableop_resource_0"Ќ
Ssequential_52_simple_rnn_275_while_simple_rnn_cell_matmul_1_readvariableop_resourceUsequential_52_simple_rnn_275_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"Ј
Qsequential_52_simple_rnn_275_while_simple_rnn_cell_matmul_readvariableop_resourceSsequential_52_simple_rnn_275_while_simple_rnn_cell_matmul_readvariableop_resource_0"
sequential_52_simple_rnn_275_while_tensorarrayv2read_tensorlistgetitem_sequential_52_simple_rnn_275_tensorarrayunstack_tensorlistfromtensorsequential_52_simple_rnn_275_while_tensorarrayv2read_tensorlistgetitem_sequential_52_simple_rnn_275_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2
Isequential_52/simple_rnn_275/while/simple_rnn_cell/BiasAdd/ReadVariableOpIsequential_52/simple_rnn_275/while/simple_rnn_cell/BiasAdd/ReadVariableOp2
Hsequential_52/simple_rnn_275/while/simple_rnn_cell/MatMul/ReadVariableOpHsequential_52/simple_rnn_275/while/simple_rnn_cell/MatMul/ReadVariableOp2
Jsequential_52/simple_rnn_275/while/simple_rnn_cell/MatMul_1/ReadVariableOpJsequential_52/simple_rnn_275/while/simple_rnn_cell/MatMul_1/ReadVariableOp:g c

_output_shapes
: 
I
_user_specified_name1/sequential_52/simple_rnn_275/while/loop_counter:mi

_output_shapes
: 
O
_user_specified_name75sequential_52/simple_rnn_275/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:d`

_output_shapes
: 
F
_user_specified_name.,sequential_52/simple_rnn_275/strided_slice_1:|x

_output_shapes
: 
^
_user_specified_nameFDsequential_52/simple_rnn_275/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
о>
Г
J__inference_simple_rnn_277_layer_call_and_return_conditional_losses_944950
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:22=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_944883*
condR
while_cond_944882*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
д
ц
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_941591

inputs

states0
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Я
б
.sequential_52_simple_rnn_275_while_cond_940398V
Rsequential_52_simple_rnn_275_while_sequential_52_simple_rnn_275_while_loop_counter\
Xsequential_52_simple_rnn_275_while_sequential_52_simple_rnn_275_while_maximum_iterations2
.sequential_52_simple_rnn_275_while_placeholder4
0sequential_52_simple_rnn_275_while_placeholder_14
0sequential_52_simple_rnn_275_while_placeholder_2X
Tsequential_52_simple_rnn_275_while_less_sequential_52_simple_rnn_275_strided_slice_1n
jsequential_52_simple_rnn_275_while_sequential_52_simple_rnn_275_while_cond_940398___redundant_placeholder0n
jsequential_52_simple_rnn_275_while_sequential_52_simple_rnn_275_while_cond_940398___redundant_placeholder1n
jsequential_52_simple_rnn_275_while_sequential_52_simple_rnn_275_while_cond_940398___redundant_placeholder2n
jsequential_52_simple_rnn_275_while_sequential_52_simple_rnn_275_while_cond_940398___redundant_placeholder3/
+sequential_52_simple_rnn_275_while_identity
ж
'sequential_52/simple_rnn_275/while/LessLess.sequential_52_simple_rnn_275_while_placeholderTsequential_52_simple_rnn_275_while_less_sequential_52_simple_rnn_275_strided_slice_1*
T0*
_output_shapes
: 
+sequential_52/simple_rnn_275/while/IdentityIdentity+sequential_52/simple_rnn_275/while/Less:z:0*
T0
*
_output_shapes
: "c
+sequential_52_simple_rnn_275_while_identity4sequential_52/simple_rnn_275/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::g c

_output_shapes
: 
I
_user_specified_name1/sequential_52/simple_rnn_275/while/loop_counter:mi

_output_shapes
: 
O
_user_specified_name75sequential_52/simple_rnn_275/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:d`

_output_shapes
: 
F
_user_specified_name.,sequential_52/simple_rnn_275/strided_slice_1:

_output_shapes
:
Е=
Б
J__inference_simple_rnn_276_layer_call_and_return_conditional_losses_942725

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:22=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_942659*
condR
while_cond_942658*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ќ
K
#__inference__update_step_xla_943177
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ќ-
Ж
while_body_942659
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:22E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:22C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ч
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource


f
G__inference_dropout_277_layer_call_and_return_conditional_losses_942355

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>І
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ2:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
	
Л
/__inference_simple_rnn_275_layer_call_fn_943691
inputs_0
unknown:22
	unknown_0:2
	unknown_1:22
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_275_layer_call_and_return_conditional_losses_941091|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs_0:&"
 
_user_specified_name943683:&"
 
_user_specified_name943685:&"
 
_user_specified_name943687
ъ
e
G__inference_dropout_275_layer_call_and_return_conditional_losses_944183

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ2_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
ч
Њ
while_cond_942537
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_942537___redundant_placeholder04
0while_while_cond_942537___redundant_placeholder14
0while_while_cond_942537___redundant_placeholder24
0while_while_cond_942537___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
И
O
#__inference__update_step_xla_943132
gradient
variable:22*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:22: *
	_noinline(:H D

_output_shapes

:22
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ж
H
,__inference_dropout_276_layer_call_fn_944669

inputs
identityЙ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_276_layer_call_and_return_conditional_losses_942737d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
к
ш
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945464

inputs
states_00
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ќ-
Ж
while_body_944269
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:22E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:22C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ч
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
	
Л
/__inference_simple_rnn_274_layer_call_fn_943199
inputs_0
unknown:2
	unknown_0:2
	unknown_1:22
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_274_layer_call_and_return_conditional_losses_940922|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0:&"
 
_user_specified_name943191:&"
 
_user_specified_name943193:&"
 
_user_specified_name943195
ќ-
Ж
while_body_943371
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:2E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:2C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ч
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
ќ-
Ж
while_body_944593
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:22E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:22C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ч
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
ќ-
Ж
while_body_943263
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:2E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:2C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ч
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
З

f
G__inference_dropout_275_layer_call_and_return_conditional_losses_942097

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>Њ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
ѓ=
Г
J__inference_simple_rnn_276_layer_call_and_return_conditional_losses_944335
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:22=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_944269*
condR
while_cond_944268*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Е=
Б
J__inference_simple_rnn_274_layer_call_and_return_conditional_losses_941950

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:2=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_941884*
condR
while_cond_941883*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
с
Й
/__inference_simple_rnn_274_layer_call_fn_943210

inputs
unknown:2
	unknown_0:2
	unknown_1:22
identityЂStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_274_layer_call_and_return_conditional_losses_941950s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:&"
 
_user_specified_name943202:&"
 
_user_specified_name943204:&"
 
_user_specified_name943206
Л>
Б
J__inference_simple_rnn_277_layer_call_and_return_conditional_losses_942848

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:22=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_942781*
condR
while_cond_942780*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Е=
Б
J__inference_simple_rnn_275_layer_call_and_return_conditional_losses_942078

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:22=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_942012*
condR
while_cond_942011*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
д
ц
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_940846

inputs

states0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Я
б
.sequential_52_simple_rnn_277_while_cond_940609V
Rsequential_52_simple_rnn_277_while_sequential_52_simple_rnn_277_while_loop_counter\
Xsequential_52_simple_rnn_277_while_sequential_52_simple_rnn_277_while_maximum_iterations2
.sequential_52_simple_rnn_277_while_placeholder4
0sequential_52_simple_rnn_277_while_placeholder_14
0sequential_52_simple_rnn_277_while_placeholder_2X
Tsequential_52_simple_rnn_277_while_less_sequential_52_simple_rnn_277_strided_slice_1n
jsequential_52_simple_rnn_277_while_sequential_52_simple_rnn_277_while_cond_940609___redundant_placeholder0n
jsequential_52_simple_rnn_277_while_sequential_52_simple_rnn_277_while_cond_940609___redundant_placeholder1n
jsequential_52_simple_rnn_277_while_sequential_52_simple_rnn_277_while_cond_940609___redundant_placeholder2n
jsequential_52_simple_rnn_277_while_sequential_52_simple_rnn_277_while_cond_940609___redundant_placeholder3/
+sequential_52_simple_rnn_277_while_identity
ж
'sequential_52/simple_rnn_277/while/LessLess.sequential_52_simple_rnn_277_while_placeholderTsequential_52_simple_rnn_277_while_less_sequential_52_simple_rnn_277_strided_slice_1*
T0*
_output_shapes
: 
+sequential_52/simple_rnn_277/while/IdentityIdentity+sequential_52/simple_rnn_277/while/Less:z:0*
T0
*
_output_shapes
: "c
+sequential_52_simple_rnn_277_while_identity4sequential_52/simple_rnn_277/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::g c

_output_shapes
: 
I
_user_specified_name1/sequential_52/simple_rnn_277/while/loop_counter:mi

_output_shapes
: 
O
_user_specified_name75sequential_52/simple_rnn_277/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:d`

_output_shapes
: 
F
_user_specified_name.,sequential_52/simple_rnn_277/strided_slice_1:

_output_shapes
:
Л>
Б
J__inference_simple_rnn_277_layer_call_and_return_conditional_losses_945060

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:22=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_944993*
condR
while_cond_944992*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ч
Њ
while_cond_944089
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_944089___redundant_placeholder04
0while_while_cond_944089___redundant_placeholder14
0while_while_cond_944089___redundant_placeholder24
0while_while_cond_944089___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
д
ц
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_941303

inputs

states0
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ф
e
,__inference_dropout_276_layer_call_fn_944664

inputs
identityЂStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_276_layer_call_and_return_conditional_losses_942225s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ222
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
ѓ=
Г
J__inference_simple_rnn_275_layer_call_and_return_conditional_losses_943940
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:22=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_943874*
condR
while_cond_943873*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ч
Њ
while_cond_943586
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_943586___redundant_placeholder04
0while_while_cond_943586___redundant_placeholder14
0while_while_cond_943586___redundant_placeholder24
0while_while_cond_943586___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ч4

J__inference_simple_rnn_275_layer_call_and_return_conditional_losses_941091

inputs(
simple_rnn_cell_941016:22$
simple_rnn_cell_941018:2(
simple_rnn_cell_941020:22
identityЂ'simple_rnn_cell/StatefulPartitionedCallЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskр
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_941016simple_rnn_cell_941018simple_rnn_cell_941020*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_941015n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ъ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_941016simple_rnn_cell_941018simple_rnn_cell_941020*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_941028*
condR
while_cond_941027*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2T
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
 
_user_specified_nameinputs:&"
 
_user_specified_name941016:&"
 
_user_specified_name941018:&"
 
_user_specified_name941020
ч
Њ
while_cond_943478
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_943478___redundant_placeholder04
0while_while_cond_943478___redundant_placeholder14
0while_while_cond_943478___redundant_placeholder24
0while_while_cond_943478___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
/
Ж
while_body_942269
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:22E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:22C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
ќ-
Ж
while_body_944377
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:22E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:22C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ч
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
к
e
G__inference_dropout_277_layer_call_and_return_conditional_losses_945197

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ2[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ2:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
о>
Г
J__inference_simple_rnn_277_layer_call_and_return_conditional_losses_944840
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:22=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_944773*
condR
while_cond_944772*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ч
Њ
while_cond_945102
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_945102___redundant_placeholder04
0while_while_cond_945102___redundant_placeholder14
0while_while_cond_945102___redundant_placeholder24
0while_while_cond_945102___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:

ј
.__inference_sequential_52_layer_call_fn_942901
simple_rnn_274_input
unknown:2
	unknown_0:2
	unknown_1:22
	unknown_2:22
	unknown_3:2
	unknown_4:22
	unknown_5:22
	unknown_6:2
	unknown_7:22
	unknown_8:22
	unknown_9:2

unknown_10:22

unknown_11:2

unknown_12:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_274_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_52_layer_call_and_return_conditional_losses_942373o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:џџџџџџџџџ: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
+
_output_shapes
:џџџџџџџџџ
.
_user_specified_namesimple_rnn_274_input:&"
 
_user_specified_name942871:&"
 
_user_specified_name942873:&"
 
_user_specified_name942875:&"
 
_user_specified_name942877:&"
 
_user_specified_name942879:&"
 
_user_specified_name942881:&"
 
_user_specified_name942883:&"
 
_user_specified_name942885:&	"
 
_user_specified_name942887:&
"
 
_user_specified_name942889:&"
 
_user_specified_name942891:&"
 
_user_specified_name942893:&"
 
_user_specified_name942895:&"
 
_user_specified_name942897
	
Л
/__inference_simple_rnn_274_layer_call_fn_943188
inputs_0
unknown:2
	unknown_0:2
	unknown_1:22
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_274_layer_call_and_return_conditional_losses_940803|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0:&"
 
_user_specified_name943180:&"
 
_user_specified_name943182:&"
 
_user_specified_name943184
ќ-
Ж
while_body_944090
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:22E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:22C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ч
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
нљ
Л1
__inference__traced_save_945762
file_prefix8
&read_disablecopyonread_dense_52_kernel:24
&read_1_disablecopyonread_dense_52_bias:P
>read_2_disablecopyonread_simple_rnn_274_simple_rnn_cell_kernel:2Z
Hread_3_disablecopyonread_simple_rnn_274_simple_rnn_cell_recurrent_kernel:22J
<read_4_disablecopyonread_simple_rnn_274_simple_rnn_cell_bias:2P
>read_5_disablecopyonread_simple_rnn_275_simple_rnn_cell_kernel:22Z
Hread_6_disablecopyonread_simple_rnn_275_simple_rnn_cell_recurrent_kernel:22J
<read_7_disablecopyonread_simple_rnn_275_simple_rnn_cell_bias:2P
>read_8_disablecopyonread_simple_rnn_276_simple_rnn_cell_kernel:22Z
Hread_9_disablecopyonread_simple_rnn_276_simple_rnn_cell_recurrent_kernel:22K
=read_10_disablecopyonread_simple_rnn_276_simple_rnn_cell_bias:2Q
?read_11_disablecopyonread_simple_rnn_277_simple_rnn_cell_kernel:22[
Iread_12_disablecopyonread_simple_rnn_277_simple_rnn_cell_recurrent_kernel:22K
=read_13_disablecopyonread_simple_rnn_277_simple_rnn_cell_bias:2-
#read_14_disablecopyonread_iteration:	 1
'read_15_disablecopyonread_learning_rate: Z
Hread_16_disablecopyonread_adamax_m_simple_rnn_274_simple_rnn_cell_kernel:2Z
Hread_17_disablecopyonread_adamax_u_simple_rnn_274_simple_rnn_cell_kernel:2d
Rread_18_disablecopyonread_adamax_m_simple_rnn_274_simple_rnn_cell_recurrent_kernel:22d
Rread_19_disablecopyonread_adamax_u_simple_rnn_274_simple_rnn_cell_recurrent_kernel:22T
Fread_20_disablecopyonread_adamax_m_simple_rnn_274_simple_rnn_cell_bias:2T
Fread_21_disablecopyonread_adamax_u_simple_rnn_274_simple_rnn_cell_bias:2Z
Hread_22_disablecopyonread_adamax_m_simple_rnn_275_simple_rnn_cell_kernel:22Z
Hread_23_disablecopyonread_adamax_u_simple_rnn_275_simple_rnn_cell_kernel:22d
Rread_24_disablecopyonread_adamax_m_simple_rnn_275_simple_rnn_cell_recurrent_kernel:22d
Rread_25_disablecopyonread_adamax_u_simple_rnn_275_simple_rnn_cell_recurrent_kernel:22T
Fread_26_disablecopyonread_adamax_m_simple_rnn_275_simple_rnn_cell_bias:2T
Fread_27_disablecopyonread_adamax_u_simple_rnn_275_simple_rnn_cell_bias:2Z
Hread_28_disablecopyonread_adamax_m_simple_rnn_276_simple_rnn_cell_kernel:22Z
Hread_29_disablecopyonread_adamax_u_simple_rnn_276_simple_rnn_cell_kernel:22d
Rread_30_disablecopyonread_adamax_m_simple_rnn_276_simple_rnn_cell_recurrent_kernel:22d
Rread_31_disablecopyonread_adamax_u_simple_rnn_276_simple_rnn_cell_recurrent_kernel:22T
Fread_32_disablecopyonread_adamax_m_simple_rnn_276_simple_rnn_cell_bias:2T
Fread_33_disablecopyonread_adamax_u_simple_rnn_276_simple_rnn_cell_bias:2Z
Hread_34_disablecopyonread_adamax_m_simple_rnn_277_simple_rnn_cell_kernel:22Z
Hread_35_disablecopyonread_adamax_u_simple_rnn_277_simple_rnn_cell_kernel:22d
Rread_36_disablecopyonread_adamax_m_simple_rnn_277_simple_rnn_cell_recurrent_kernel:22d
Rread_37_disablecopyonread_adamax_u_simple_rnn_277_simple_rnn_cell_recurrent_kernel:22T
Fread_38_disablecopyonread_adamax_m_simple_rnn_277_simple_rnn_cell_bias:2T
Fread_39_disablecopyonread_adamax_u_simple_rnn_277_simple_rnn_cell_bias:2D
2read_40_disablecopyonread_adamax_m_dense_52_kernel:2D
2read_41_disablecopyonread_adamax_u_dense_52_kernel:2>
0read_42_disablecopyonread_adamax_m_dense_52_bias:>
0read_43_disablecopyonread_adamax_u_dense_52_bias:)
read_44_disablecopyonread_total: )
read_45_disablecopyonread_count: 
savev2_const
identity_93ЂMergeV2CheckpointsЂRead/DisableCopyOnReadЂRead/ReadVariableOpЂRead_1/DisableCopyOnReadЂRead_1/ReadVariableOpЂRead_10/DisableCopyOnReadЂRead_10/ReadVariableOpЂRead_11/DisableCopyOnReadЂRead_11/ReadVariableOpЂRead_12/DisableCopyOnReadЂRead_12/ReadVariableOpЂRead_13/DisableCopyOnReadЂRead_13/ReadVariableOpЂRead_14/DisableCopyOnReadЂRead_14/ReadVariableOpЂRead_15/DisableCopyOnReadЂRead_15/ReadVariableOpЂRead_16/DisableCopyOnReadЂRead_16/ReadVariableOpЂRead_17/DisableCopyOnReadЂRead_17/ReadVariableOpЂRead_18/DisableCopyOnReadЂRead_18/ReadVariableOpЂRead_19/DisableCopyOnReadЂRead_19/ReadVariableOpЂRead_2/DisableCopyOnReadЂRead_2/ReadVariableOpЂRead_20/DisableCopyOnReadЂRead_20/ReadVariableOpЂRead_21/DisableCopyOnReadЂRead_21/ReadVariableOpЂRead_22/DisableCopyOnReadЂRead_22/ReadVariableOpЂRead_23/DisableCopyOnReadЂRead_23/ReadVariableOpЂRead_24/DisableCopyOnReadЂRead_24/ReadVariableOpЂRead_25/DisableCopyOnReadЂRead_25/ReadVariableOpЂRead_26/DisableCopyOnReadЂRead_26/ReadVariableOpЂRead_27/DisableCopyOnReadЂRead_27/ReadVariableOpЂRead_28/DisableCopyOnReadЂRead_28/ReadVariableOpЂRead_29/DisableCopyOnReadЂRead_29/ReadVariableOpЂRead_3/DisableCopyOnReadЂRead_3/ReadVariableOpЂRead_30/DisableCopyOnReadЂRead_30/ReadVariableOpЂRead_31/DisableCopyOnReadЂRead_31/ReadVariableOpЂRead_32/DisableCopyOnReadЂRead_32/ReadVariableOpЂRead_33/DisableCopyOnReadЂRead_33/ReadVariableOpЂRead_34/DisableCopyOnReadЂRead_34/ReadVariableOpЂRead_35/DisableCopyOnReadЂRead_35/ReadVariableOpЂRead_36/DisableCopyOnReadЂRead_36/ReadVariableOpЂRead_37/DisableCopyOnReadЂRead_37/ReadVariableOpЂRead_38/DisableCopyOnReadЂRead_38/ReadVariableOpЂRead_39/DisableCopyOnReadЂRead_39/ReadVariableOpЂRead_4/DisableCopyOnReadЂRead_4/ReadVariableOpЂRead_40/DisableCopyOnReadЂRead_40/ReadVariableOpЂRead_41/DisableCopyOnReadЂRead_41/ReadVariableOpЂRead_42/DisableCopyOnReadЂRead_42/ReadVariableOpЂRead_43/DisableCopyOnReadЂRead_43/ReadVariableOpЂRead_44/DisableCopyOnReadЂRead_44/ReadVariableOpЂRead_45/DisableCopyOnReadЂRead_45/ReadVariableOpЂRead_5/DisableCopyOnReadЂRead_5/ReadVariableOpЂRead_6/DisableCopyOnReadЂRead_6/ReadVariableOpЂRead_7/DisableCopyOnReadЂRead_7/ReadVariableOpЂRead_8/DisableCopyOnReadЂRead_8/ReadVariableOpЂRead_9/DisableCopyOnReadЂRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_dense_52_kernel"/device:CPU:0*
_output_shapes
 Ђ
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_dense_52_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:2z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_dense_52_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_dense_52_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_2/DisableCopyOnReadDisableCopyOnRead>read_2_disablecopyonread_simple_rnn_274_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 О
Read_2/ReadVariableOpReadVariableOp>read_2_disablecopyonread_simple_rnn_274_simple_rnn_cell_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:2
Read_3/DisableCopyOnReadDisableCopyOnReadHread_3_disablecopyonread_simple_rnn_274_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Ш
Read_3/ReadVariableOpReadVariableOpHread_3_disablecopyonread_simple_rnn_274_simple_rnn_cell_recurrent_kernel^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:22*
dtype0m

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:22c

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes

:22
Read_4/DisableCopyOnReadDisableCopyOnRead<read_4_disablecopyonread_simple_rnn_274_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 И
Read_4/ReadVariableOpReadVariableOp<read_4_disablecopyonread_simple_rnn_274_simple_rnn_cell_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:2
Read_5/DisableCopyOnReadDisableCopyOnRead>read_5_disablecopyonread_simple_rnn_275_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 О
Read_5/ReadVariableOpReadVariableOp>read_5_disablecopyonread_simple_rnn_275_simple_rnn_cell_kernel^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:22*
dtype0n
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:22e
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes

:22
Read_6/DisableCopyOnReadDisableCopyOnReadHread_6_disablecopyonread_simple_rnn_275_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Ш
Read_6/ReadVariableOpReadVariableOpHread_6_disablecopyonread_simple_rnn_275_simple_rnn_cell_recurrent_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:22*
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:22e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:22
Read_7/DisableCopyOnReadDisableCopyOnRead<read_7_disablecopyonread_simple_rnn_275_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 И
Read_7/ReadVariableOpReadVariableOp<read_7_disablecopyonread_simple_rnn_275_simple_rnn_cell_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:2
Read_8/DisableCopyOnReadDisableCopyOnRead>read_8_disablecopyonread_simple_rnn_276_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 О
Read_8/ReadVariableOpReadVariableOp>read_8_disablecopyonread_simple_rnn_276_simple_rnn_cell_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:22*
dtype0n
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:22e
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

:22
Read_9/DisableCopyOnReadDisableCopyOnReadHread_9_disablecopyonread_simple_rnn_276_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Ш
Read_9/ReadVariableOpReadVariableOpHread_9_disablecopyonread_simple_rnn_276_simple_rnn_cell_recurrent_kernel^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:22*
dtype0n
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:22e
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes

:22
Read_10/DisableCopyOnReadDisableCopyOnRead=read_10_disablecopyonread_simple_rnn_276_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 Л
Read_10/ReadVariableOpReadVariableOp=read_10_disablecopyonread_simple_rnn_276_simple_rnn_cell_bias^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:2
Read_11/DisableCopyOnReadDisableCopyOnRead?read_11_disablecopyonread_simple_rnn_277_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 С
Read_11/ReadVariableOpReadVariableOp?read_11_disablecopyonread_simple_rnn_277_simple_rnn_cell_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:22*
dtype0o
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:22e
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes

:22
Read_12/DisableCopyOnReadDisableCopyOnReadIread_12_disablecopyonread_simple_rnn_277_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Ы
Read_12/ReadVariableOpReadVariableOpIread_12_disablecopyonread_simple_rnn_277_simple_rnn_cell_recurrent_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:22*
dtype0o
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:22e
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes

:22
Read_13/DisableCopyOnReadDisableCopyOnRead=read_13_disablecopyonread_simple_rnn_277_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 Л
Read_13/ReadVariableOpReadVariableOp=read_13_disablecopyonread_simple_rnn_277_simple_rnn_cell_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:2x
Read_14/DisableCopyOnReadDisableCopyOnRead#read_14_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 
Read_14/ReadVariableOpReadVariableOp#read_14_disablecopyonread_iteration^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_15/DisableCopyOnReadDisableCopyOnRead'read_15_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 Ё
Read_15/ReadVariableOpReadVariableOp'read_15_disablecopyonread_learning_rate^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_16/DisableCopyOnReadDisableCopyOnReadHread_16_disablecopyonread_adamax_m_simple_rnn_274_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 Ъ
Read_16/ReadVariableOpReadVariableOpHread_16_disablecopyonread_adamax_m_simple_rnn_274_simple_rnn_cell_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0o
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2e
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes

:2
Read_17/DisableCopyOnReadDisableCopyOnReadHread_17_disablecopyonread_adamax_u_simple_rnn_274_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 Ъ
Read_17/ReadVariableOpReadVariableOpHread_17_disablecopyonread_adamax_u_simple_rnn_274_simple_rnn_cell_kernel^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0o
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2e
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes

:2Ї
Read_18/DisableCopyOnReadDisableCopyOnReadRread_18_disablecopyonread_adamax_m_simple_rnn_274_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 д
Read_18/ReadVariableOpReadVariableOpRread_18_disablecopyonread_adamax_m_simple_rnn_274_simple_rnn_cell_recurrent_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:22*
dtype0o
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:22e
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes

:22Ї
Read_19/DisableCopyOnReadDisableCopyOnReadRread_19_disablecopyonread_adamax_u_simple_rnn_274_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 д
Read_19/ReadVariableOpReadVariableOpRread_19_disablecopyonread_adamax_u_simple_rnn_274_simple_rnn_cell_recurrent_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:22*
dtype0o
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:22e
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes

:22
Read_20/DisableCopyOnReadDisableCopyOnReadFread_20_disablecopyonread_adamax_m_simple_rnn_274_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 Ф
Read_20/ReadVariableOpReadVariableOpFread_20_disablecopyonread_adamax_m_simple_rnn_274_simple_rnn_cell_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:2
Read_21/DisableCopyOnReadDisableCopyOnReadFread_21_disablecopyonread_adamax_u_simple_rnn_274_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 Ф
Read_21/ReadVariableOpReadVariableOpFread_21_disablecopyonread_adamax_u_simple_rnn_274_simple_rnn_cell_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:2
Read_22/DisableCopyOnReadDisableCopyOnReadHread_22_disablecopyonread_adamax_m_simple_rnn_275_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 Ъ
Read_22/ReadVariableOpReadVariableOpHread_22_disablecopyonread_adamax_m_simple_rnn_275_simple_rnn_cell_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:22*
dtype0o
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:22e
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes

:22
Read_23/DisableCopyOnReadDisableCopyOnReadHread_23_disablecopyonread_adamax_u_simple_rnn_275_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 Ъ
Read_23/ReadVariableOpReadVariableOpHread_23_disablecopyonread_adamax_u_simple_rnn_275_simple_rnn_cell_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:22*
dtype0o
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:22e
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes

:22Ї
Read_24/DisableCopyOnReadDisableCopyOnReadRread_24_disablecopyonread_adamax_m_simple_rnn_275_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 д
Read_24/ReadVariableOpReadVariableOpRread_24_disablecopyonread_adamax_m_simple_rnn_275_simple_rnn_cell_recurrent_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:22*
dtype0o
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:22e
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes

:22Ї
Read_25/DisableCopyOnReadDisableCopyOnReadRread_25_disablecopyonread_adamax_u_simple_rnn_275_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 д
Read_25/ReadVariableOpReadVariableOpRread_25_disablecopyonread_adamax_u_simple_rnn_275_simple_rnn_cell_recurrent_kernel^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:22*
dtype0o
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:22e
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes

:22
Read_26/DisableCopyOnReadDisableCopyOnReadFread_26_disablecopyonread_adamax_m_simple_rnn_275_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 Ф
Read_26/ReadVariableOpReadVariableOpFread_26_disablecopyonread_adamax_m_simple_rnn_275_simple_rnn_cell_bias^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:2
Read_27/DisableCopyOnReadDisableCopyOnReadFread_27_disablecopyonread_adamax_u_simple_rnn_275_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 Ф
Read_27/ReadVariableOpReadVariableOpFread_27_disablecopyonread_adamax_u_simple_rnn_275_simple_rnn_cell_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:2
Read_28/DisableCopyOnReadDisableCopyOnReadHread_28_disablecopyonread_adamax_m_simple_rnn_276_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 Ъ
Read_28/ReadVariableOpReadVariableOpHread_28_disablecopyonread_adamax_m_simple_rnn_276_simple_rnn_cell_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:22*
dtype0o
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:22e
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes

:22
Read_29/DisableCopyOnReadDisableCopyOnReadHread_29_disablecopyonread_adamax_u_simple_rnn_276_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 Ъ
Read_29/ReadVariableOpReadVariableOpHread_29_disablecopyonread_adamax_u_simple_rnn_276_simple_rnn_cell_kernel^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:22*
dtype0o
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:22e
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes

:22Ї
Read_30/DisableCopyOnReadDisableCopyOnReadRread_30_disablecopyonread_adamax_m_simple_rnn_276_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 д
Read_30/ReadVariableOpReadVariableOpRread_30_disablecopyonread_adamax_m_simple_rnn_276_simple_rnn_cell_recurrent_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:22*
dtype0o
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:22e
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes

:22Ї
Read_31/DisableCopyOnReadDisableCopyOnReadRread_31_disablecopyonread_adamax_u_simple_rnn_276_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 д
Read_31/ReadVariableOpReadVariableOpRread_31_disablecopyonread_adamax_u_simple_rnn_276_simple_rnn_cell_recurrent_kernel^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:22*
dtype0o
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:22e
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes

:22
Read_32/DisableCopyOnReadDisableCopyOnReadFread_32_disablecopyonread_adamax_m_simple_rnn_276_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 Ф
Read_32/ReadVariableOpReadVariableOpFread_32_disablecopyonread_adamax_m_simple_rnn_276_simple_rnn_cell_bias^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0k
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:2
Read_33/DisableCopyOnReadDisableCopyOnReadFread_33_disablecopyonread_adamax_u_simple_rnn_276_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 Ф
Read_33/ReadVariableOpReadVariableOpFread_33_disablecopyonread_adamax_u_simple_rnn_276_simple_rnn_cell_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:2
Read_34/DisableCopyOnReadDisableCopyOnReadHread_34_disablecopyonread_adamax_m_simple_rnn_277_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 Ъ
Read_34/ReadVariableOpReadVariableOpHread_34_disablecopyonread_adamax_m_simple_rnn_277_simple_rnn_cell_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:22*
dtype0o
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:22e
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes

:22
Read_35/DisableCopyOnReadDisableCopyOnReadHread_35_disablecopyonread_adamax_u_simple_rnn_277_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 Ъ
Read_35/ReadVariableOpReadVariableOpHread_35_disablecopyonread_adamax_u_simple_rnn_277_simple_rnn_cell_kernel^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:22*
dtype0o
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:22e
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes

:22Ї
Read_36/DisableCopyOnReadDisableCopyOnReadRread_36_disablecopyonread_adamax_m_simple_rnn_277_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 д
Read_36/ReadVariableOpReadVariableOpRread_36_disablecopyonread_adamax_m_simple_rnn_277_simple_rnn_cell_recurrent_kernel^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:22*
dtype0o
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:22e
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes

:22Ї
Read_37/DisableCopyOnReadDisableCopyOnReadRread_37_disablecopyonread_adamax_u_simple_rnn_277_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 д
Read_37/ReadVariableOpReadVariableOpRread_37_disablecopyonread_adamax_u_simple_rnn_277_simple_rnn_cell_recurrent_kernel^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:22*
dtype0o
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:22e
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes

:22
Read_38/DisableCopyOnReadDisableCopyOnReadFread_38_disablecopyonread_adamax_m_simple_rnn_277_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 Ф
Read_38/ReadVariableOpReadVariableOpFread_38_disablecopyonread_adamax_m_simple_rnn_277_simple_rnn_cell_bias^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0k
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
:2
Read_39/DisableCopyOnReadDisableCopyOnReadFread_39_disablecopyonread_adamax_u_simple_rnn_277_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 Ф
Read_39/ReadVariableOpReadVariableOpFread_39_disablecopyonread_adamax_u_simple_rnn_277_simple_rnn_cell_bias^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:2*
dtype0k
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:2a
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
:2
Read_40/DisableCopyOnReadDisableCopyOnRead2read_40_disablecopyonread_adamax_m_dense_52_kernel"/device:CPU:0*
_output_shapes
 Д
Read_40/ReadVariableOpReadVariableOp2read_40_disablecopyonread_adamax_m_dense_52_kernel^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0o
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2e
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes

:2
Read_41/DisableCopyOnReadDisableCopyOnRead2read_41_disablecopyonread_adamax_u_dense_52_kernel"/device:CPU:0*
_output_shapes
 Д
Read_41/ReadVariableOpReadVariableOp2read_41_disablecopyonread_adamax_u_dense_52_kernel^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2*
dtype0o
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2e
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes

:2
Read_42/DisableCopyOnReadDisableCopyOnRead0read_42_disablecopyonread_adamax_m_dense_52_bias"/device:CPU:0*
_output_shapes
 Ў
Read_42/ReadVariableOpReadVariableOp0read_42_disablecopyonread_adamax_m_dense_52_bias^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_43/DisableCopyOnReadDisableCopyOnRead0read_43_disablecopyonread_adamax_u_dense_52_bias"/device:CPU:0*
_output_shapes
 Ў
Read_43/ReadVariableOpReadVariableOp0read_43_disablecopyonread_adamax_u_dense_52_bias^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
:t
Read_44/DisableCopyOnReadDisableCopyOnReadread_44_disablecopyonread_total"/device:CPU:0*
_output_shapes
 
Read_44/ReadVariableOpReadVariableOpread_44_disablecopyonread_total^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_45/DisableCopyOnReadDisableCopyOnReadread_45_disablecopyonread_count"/device:CPU:0*
_output_shapes
 
Read_45/ReadVariableOpReadVariableOpread_45_disablecopyonread_count^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
: д
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*§
valueѓB№/B6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЫ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*q
valuehBf/B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ѕ	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *=
dtypes3
12/	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Г
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_92Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_93IdentityIdentity_92:output:0^NoOp*
T0*
_output_shapes
: Ѕ
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_93Identity_93:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:/+
)
_user_specified_namedense_52/kernel:-)
'
_user_specified_namedense_52/bias:EA
?
_user_specified_name'%simple_rnn_274/simple_rnn_cell/kernel:OK
I
_user_specified_name1/simple_rnn_274/simple_rnn_cell/recurrent_kernel:C?
=
_user_specified_name%#simple_rnn_274/simple_rnn_cell/bias:EA
?
_user_specified_name'%simple_rnn_275/simple_rnn_cell/kernel:OK
I
_user_specified_name1/simple_rnn_275/simple_rnn_cell/recurrent_kernel:C?
=
_user_specified_name%#simple_rnn_275/simple_rnn_cell/bias:E	A
?
_user_specified_name'%simple_rnn_276/simple_rnn_cell/kernel:O
K
I
_user_specified_name1/simple_rnn_276/simple_rnn_cell/recurrent_kernel:C?
=
_user_specified_name%#simple_rnn_276/simple_rnn_cell/bias:EA
?
_user_specified_name'%simple_rnn_277/simple_rnn_cell/kernel:OK
I
_user_specified_name1/simple_rnn_277/simple_rnn_cell/recurrent_kernel:C?
=
_user_specified_name%#simple_rnn_277/simple_rnn_cell/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:NJ
H
_user_specified_name0.Adamax/m/simple_rnn_274/simple_rnn_cell/kernel:NJ
H
_user_specified_name0.Adamax/u/simple_rnn_274/simple_rnn_cell/kernel:XT
R
_user_specified_name:8Adamax/m/simple_rnn_274/simple_rnn_cell/recurrent_kernel:XT
R
_user_specified_name:8Adamax/u/simple_rnn_274/simple_rnn_cell/recurrent_kernel:LH
F
_user_specified_name.,Adamax/m/simple_rnn_274/simple_rnn_cell/bias:LH
F
_user_specified_name.,Adamax/u/simple_rnn_274/simple_rnn_cell/bias:NJ
H
_user_specified_name0.Adamax/m/simple_rnn_275/simple_rnn_cell/kernel:NJ
H
_user_specified_name0.Adamax/u/simple_rnn_275/simple_rnn_cell/kernel:XT
R
_user_specified_name:8Adamax/m/simple_rnn_275/simple_rnn_cell/recurrent_kernel:XT
R
_user_specified_name:8Adamax/u/simple_rnn_275/simple_rnn_cell/recurrent_kernel:LH
F
_user_specified_name.,Adamax/m/simple_rnn_275/simple_rnn_cell/bias:LH
F
_user_specified_name.,Adamax/u/simple_rnn_275/simple_rnn_cell/bias:NJ
H
_user_specified_name0.Adamax/m/simple_rnn_276/simple_rnn_cell/kernel:NJ
H
_user_specified_name0.Adamax/u/simple_rnn_276/simple_rnn_cell/kernel:XT
R
_user_specified_name:8Adamax/m/simple_rnn_276/simple_rnn_cell/recurrent_kernel:X T
R
_user_specified_name:8Adamax/u/simple_rnn_276/simple_rnn_cell/recurrent_kernel:L!H
F
_user_specified_name.,Adamax/m/simple_rnn_276/simple_rnn_cell/bias:L"H
F
_user_specified_name.,Adamax/u/simple_rnn_276/simple_rnn_cell/bias:N#J
H
_user_specified_name0.Adamax/m/simple_rnn_277/simple_rnn_cell/kernel:N$J
H
_user_specified_name0.Adamax/u/simple_rnn_277/simple_rnn_cell/kernel:X%T
R
_user_specified_name:8Adamax/m/simple_rnn_277/simple_rnn_cell/recurrent_kernel:X&T
R
_user_specified_name:8Adamax/u/simple_rnn_277/simple_rnn_cell/recurrent_kernel:L'H
F
_user_specified_name.,Adamax/m/simple_rnn_277/simple_rnn_cell/bias:L(H
F
_user_specified_name.,Adamax/u/simple_rnn_277/simple_rnn_cell/bias:8)4
2
_user_specified_nameAdamax/m/dense_52/kernel:8*4
2
_user_specified_nameAdamax/u/dense_52/kernel:6+2
0
_user_specified_nameAdamax/m/dense_52/bias:6,2
0
_user_specified_nameAdamax/u/dense_52/bias:%-!

_user_specified_nametotal:%.!

_user_specified_namecount:=/9

_output_shapes
: 

_user_specified_nameConst
ч
Њ
while_cond_943262
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_943262___redundant_placeholder04
0while_while_cond_943262___redundant_placeholder14
0while_while_cond_943262___redundant_placeholder24
0while_while_cond_943262___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Л>
Б
J__inference_simple_rnn_277_layer_call_and_return_conditional_losses_945170

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:22=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_945103*
condR
while_cond_945102*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
с
Й
/__inference_simple_rnn_275_layer_call_fn_943713

inputs
unknown:22
	unknown_0:2
	unknown_1:22
identityЂStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_275_layer_call_and_return_conditional_losses_942078s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:&"
 
_user_specified_name943705:&"
 
_user_specified_name943707:&"
 
_user_specified_name943709
с
Й
/__inference_simple_rnn_275_layer_call_fn_943724

inputs
unknown:22
	unknown_0:2
	unknown_1:22
identityЂStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_275_layer_call_and_return_conditional_losses_942604s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:&"
 
_user_specified_name943716:&"
 
_user_specified_name943718:&"
 
_user_specified_name943720
ѓ=
Г
J__inference_simple_rnn_274_layer_call_and_return_conditional_losses_943437
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:2=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_943371*
condR
while_cond_943370*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
с
Й
/__inference_simple_rnn_276_layer_call_fn_944216

inputs
unknown:22
	unknown_0:2
	unknown_1:22
identityЂStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_276_layer_call_and_return_conditional_losses_942206s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:&"
 
_user_specified_name944208:&"
 
_user_specified_name944210:&"
 
_user_specified_name944212
к
e
G__inference_dropout_277_layer_call_and_return_conditional_losses_942860

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ2[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ2:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
ё
Л
/__inference_simple_rnn_277_layer_call_fn_944697
inputs_0
unknown:22
	unknown_0:2
	unknown_1:22
identityЂStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_277_layer_call_and_return_conditional_losses_941669o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs_0:&"
 
_user_specified_name944689:&"
 
_user_specified_name944691:&"
 
_user_specified_name944693
ъ
e
G__inference_dropout_276_layer_call_and_return_conditional_losses_944686

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ2_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
ъ
e
G__inference_dropout_276_layer_call_and_return_conditional_losses_942737

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ2_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
Ќ
K
#__inference__update_step_xla_943167
gradient
variable:2*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:2: *
	_noinline(:D @

_output_shapes
:2
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ч
Њ
while_cond_942780
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_942780___redundant_placeholder04
0while_while_cond_942780___redundant_placeholder14
0while_while_cond_942780___redundant_placeholder24
0while_while_cond_942780___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ч
Њ
while_cond_944484
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_944484___redundant_placeholder04
0while_while_cond_944484___redundant_placeholder14
0while_while_cond_944484___redundant_placeholder24
0while_while_cond_944484___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ќ
K
#__inference__update_step_xla_943137
gradient
variable:2*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:2: *
	_noinline(:D @

_output_shapes
:2
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ч
Њ
while_cond_944992
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_944992___redundant_placeholder04
0while_while_cond_944992___redundant_placeholder14
0while_while_cond_944992___redundant_placeholder24
0while_while_cond_944992___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ќ-
Ж
while_body_943982
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:22E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:22C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ч
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
ъ
e
G__inference_dropout_274_layer_call_and_return_conditional_losses_942495

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ2_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
ѓ=
Г
J__inference_simple_rnn_275_layer_call_and_return_conditional_losses_943832
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:22=
/simple_rnn_cell_biasadd_readvariableop_resource:2B
0simple_rnn_cell_matmul_1_readvariableop_resource:22
identityЂ&simple_rnn_cell/BiasAdd/ReadVariableOpЂ%simple_rnn_cell/MatMul/ReadVariableOpЂ'simple_rnn_cell/MatMul_1/ReadVariableOpЂwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Е
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_943766*
condR
while_cond_943765*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ж
H
,__inference_dropout_275_layer_call_fn_944166

inputs
identityЙ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_dropout_275_layer_call_and_return_conditional_losses_942616d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
ќ-
Ж
while_body_943587
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:2E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:2C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ч
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
ч
Њ
while_cond_942416
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_942416___redundant_placeholder04
0while_while_cond_942416___redundant_placeholder14
0while_while_cond_942416___redundant_placeholder24
0while_while_cond_942416___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
З

f
G__inference_dropout_274_layer_call_and_return_conditional_losses_941969

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>Њ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
к
ш
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945447

inputs
states_00
matmul_readvariableop_resource:22-
biasadd_readvariableop_resource:22
 matmul_1_readvariableop_resource:22
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:22*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:22*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2G
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ2:џџџџџџџџџ2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
З

f
G__inference_dropout_276_layer_call_and_return_conditional_losses_944681

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUе?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬЬ>Њ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
ч
Њ
while_cond_941027
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_941027___redundant_placeholder04
0while_while_cond_941027___redundant_placeholder14
0while_while_cond_941027___redundant_placeholder24
0while_while_cond_941027___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
с
Й
/__inference_simple_rnn_276_layer_call_fn_944227

inputs
unknown:22
	unknown_0:2
	unknown_1:22
identityЂStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_276_layer_call_and_return_conditional_losses_942725s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs:&"
 
_user_specified_name944219:&"
 
_user_specified_name944221:&"
 
_user_specified_name944223
ќ-
Ж
while_body_941884
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:2E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:2C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:2*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2Ч
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
Я
б
.sequential_52_simple_rnn_276_while_cond_940503V
Rsequential_52_simple_rnn_276_while_sequential_52_simple_rnn_276_while_loop_counter\
Xsequential_52_simple_rnn_276_while_sequential_52_simple_rnn_276_while_maximum_iterations2
.sequential_52_simple_rnn_276_while_placeholder4
0sequential_52_simple_rnn_276_while_placeholder_14
0sequential_52_simple_rnn_276_while_placeholder_2X
Tsequential_52_simple_rnn_276_while_less_sequential_52_simple_rnn_276_strided_slice_1n
jsequential_52_simple_rnn_276_while_sequential_52_simple_rnn_276_while_cond_940503___redundant_placeholder0n
jsequential_52_simple_rnn_276_while_sequential_52_simple_rnn_276_while_cond_940503___redundant_placeholder1n
jsequential_52_simple_rnn_276_while_sequential_52_simple_rnn_276_while_cond_940503___redundant_placeholder2n
jsequential_52_simple_rnn_276_while_sequential_52_simple_rnn_276_while_cond_940503___redundant_placeholder3/
+sequential_52_simple_rnn_276_while_identity
ж
'sequential_52/simple_rnn_276/while/LessLess.sequential_52_simple_rnn_276_while_placeholderTsequential_52_simple_rnn_276_while_less_sequential_52_simple_rnn_276_strided_slice_1*
T0*
_output_shapes
: 
+sequential_52/simple_rnn_276/while/IdentityIdentity+sequential_52/simple_rnn_276/while/Less:z:0*
T0
*
_output_shapes
: "c
+sequential_52_simple_rnn_276_while_identity4sequential_52/simple_rnn_276/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::g c

_output_shapes
: 
I
_user_specified_name1/sequential_52/simple_rnn_276/while/loop_counter:mi

_output_shapes
: 
O
_user_specified_name75sequential_52/simple_rnn_276/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:d`

_output_shapes
: 
F
_user_specified_name.,sequential_52/simple_rnn_276/strided_slice_1:

_output_shapes
:
ч
Њ
while_cond_941725
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_941725___redundant_placeholder04
0while_while_cond_941725___redundant_placeholder14
0while_while_cond_941725___redundant_placeholder24
0while_while_cond_941725___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
/
Ж
while_body_944993
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:22E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:2J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:22
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:22C
5while_simple_rnn_cell_biasadd_readvariableop_resource:2H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:22Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ2*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:22*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:2*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:22*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2І
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ2s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ2r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2Е

while/NoOpNoOp-^while/simple_rnn_cell/BiasAdd/ReadVariableOp,^while/simple_rnn_cell/MatMul/ReadVariableOp.^while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"p
5while_simple_rnn_cell_biasadd_readvariableop_resource7while_simple_rnn_cell_biasadd_readvariableop_resource_0"r
6while_simple_rnn_cell_matmul_1_readvariableop_resource8while_simple_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_simple_rnn_cell_matmul_readvariableop_resource6while_simple_rnn_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ2: : : : : 2\
,while/simple_rnn_cell/BiasAdd/ReadVariableOp,while/simple_rnn_cell/BiasAdd/ReadVariableOp2Z
+while/simple_rnn_cell/MatMul/ReadVariableOp+while/simple_rnn_cell/MatMul/ReadVariableOp2^
-while/simple_rnn_cell/MatMul_1/ReadVariableOp-while/simple_rnn_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
ч
Њ
while_cond_941315
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_941315___redundant_placeholder04
0while_while_cond_941315___redundant_placeholder14
0while_while_cond_941315___redundant_placeholder24
0while_while_cond_941315___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ2:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ч4

J__inference_simple_rnn_276_layer_call_and_return_conditional_losses_941379

inputs(
simple_rnn_cell_941304:22$
simple_rnn_cell_941306:2(
simple_rnn_cell_941308:22
identityЂ'simple_rnn_cell/StatefulPartitionedCallЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maskр
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_941304simple_rnn_cell_941306simple_rnn_cell_941308*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_941303n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ъ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_941304simple_rnn_cell_941306simple_rnn_cell_941308*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_941316*
condR
while_cond_941315*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2T
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ2: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
 
_user_specified_nameinputs:&"
 
_user_specified_name941304:&"
 
_user_specified_name941306:&"
 
_user_specified_name941308
Ќ
K
#__inference__update_step_xla_943122
gradient
variable:2*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:2: *
	_noinline(:D @

_output_shapes
:2
"
_user_specified_name
gradient:($
"
_user_specified_name
variable"эL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Щ
serving_defaultЕ
Y
simple_rnn_274_inputA
&serving_default_simple_rnn_274_input:0џџџџџџџџџ<
dense_520
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:№
н
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
У
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec"
_tf_keras_rnn_layer
М
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!_random_generator"
_tf_keras_layer
У
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses
(cell
)
state_spec"
_tf_keras_rnn_layer
М
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0_random_generator"
_tf_keras_layer
У
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses
7cell
8
state_spec"
_tf_keras_rnn_layer
М
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses
?_random_generator"
_tf_keras_layer
У
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses
Fcell
G
state_spec"
_tf_keras_rnn_layer
М
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses
N_random_generator"
_tf_keras_layer
Л
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

Ukernel
Vbias"
_tf_keras_layer

W0
X1
Y2
Z3
[4
\5
]6
^7
_8
`9
a10
b11
U12
V13"
trackable_list_wrapper

W0
X1
Y2
Z3
[4
\5
]6
^7
_8
`9
a10
b11
U12
V13"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Я
htrace_0
itrace_12
.__inference_sequential_52_layer_call_fn_942901
.__inference_sequential_52_layer_call_fn_942934Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zhtrace_0zitrace_1

jtrace_0
ktrace_12Ю
I__inference_sequential_52_layer_call_and_return_conditional_losses_942373
I__inference_sequential_52_layer_call_and_return_conditional_losses_942868Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zjtrace_0zktrace_1
йBж
!__inference__wrapped_model_940684simple_rnn_274_input"
В
FullArgSpec
args

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 

l
_variables
m_iterations
n_learning_rate
o_index_dict
p_m
q_u
r_update_step_xla"
experimentalOptimizer
,
sserving_default"
signature_map
5
W0
X1
Y2"
trackable_list_wrapper
5
W0
X1
Y2"
trackable_list_wrapper
 "
trackable_list_wrapper
Й

tstates
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ќ
ztrace_0
{trace_1
|trace_2
}trace_32
/__inference_simple_rnn_274_layer_call_fn_943188
/__inference_simple_rnn_274_layer_call_fn_943199
/__inference_simple_rnn_274_layer_call_fn_943210
/__inference_simple_rnn_274_layer_call_fn_943221Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zztrace_0z{trace_1z|trace_2z}trace_3
ь
~trace_0
trace_1
trace_2
trace_32§
J__inference_simple_rnn_274_layer_call_and_return_conditional_losses_943329
J__inference_simple_rnn_274_layer_call_and_return_conditional_losses_943437
J__inference_simple_rnn_274_layer_call_and_return_conditional_losses_943545
J__inference_simple_rnn_274_layer_call_and_return_conditional_losses_943653Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z~trace_0ztrace_1ztrace_2ztrace_3
я
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator

Wkernel
Xrecurrent_kernel
Ybias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
У
trace_0
trace_12
,__inference_dropout_274_layer_call_fn_943658
,__inference_dropout_274_layer_call_fn_943663Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1
љ
trace_0
trace_12О
G__inference_dropout_274_layer_call_and_return_conditional_losses_943675
G__inference_dropout_274_layer_call_and_return_conditional_losses_943680Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1
"
_generic_user_object
5
Z0
[1
\2"
trackable_list_wrapper
5
Z0
[1
\2"
trackable_list_wrapper
 "
trackable_list_wrapper
П
states
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object

trace_0
trace_1
trace_2
trace_32
/__inference_simple_rnn_275_layer_call_fn_943691
/__inference_simple_rnn_275_layer_call_fn_943702
/__inference_simple_rnn_275_layer_call_fn_943713
/__inference_simple_rnn_275_layer_call_fn_943724Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1ztrace_2ztrace_3
№
trace_0
trace_1
trace_2
trace_32§
J__inference_simple_rnn_275_layer_call_and_return_conditional_losses_943832
J__inference_simple_rnn_275_layer_call_and_return_conditional_losses_943940
J__inference_simple_rnn_275_layer_call_and_return_conditional_losses_944048
J__inference_simple_rnn_275_layer_call_and_return_conditional_losses_944156Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1ztrace_2ztrace_3
я
 	variables
Ёtrainable_variables
Ђregularization_losses
Ѓ	keras_api
Є__call__
+Ѕ&call_and_return_all_conditional_losses
І_random_generator

Zkernel
[recurrent_kernel
\bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Їnon_trainable_variables
Јlayers
Љmetrics
 Њlayer_regularization_losses
Ћlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
У
Ќtrace_0
­trace_12
,__inference_dropout_275_layer_call_fn_944161
,__inference_dropout_275_layer_call_fn_944166Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЌtrace_0z­trace_1
љ
Ўtrace_0
Џtrace_12О
G__inference_dropout_275_layer_call_and_return_conditional_losses_944178
G__inference_dropout_275_layer_call_and_return_conditional_losses_944183Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЎtrace_0zЏtrace_1
"
_generic_user_object
5
]0
^1
_2"
trackable_list_wrapper
5
]0
^1
_2"
trackable_list_wrapper
 "
trackable_list_wrapper
П
Аstates
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object

Жtrace_0
Зtrace_1
Иtrace_2
Йtrace_32
/__inference_simple_rnn_276_layer_call_fn_944194
/__inference_simple_rnn_276_layer_call_fn_944205
/__inference_simple_rnn_276_layer_call_fn_944216
/__inference_simple_rnn_276_layer_call_fn_944227Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЖtrace_0zЗtrace_1zИtrace_2zЙtrace_3
№
Кtrace_0
Лtrace_1
Мtrace_2
Нtrace_32§
J__inference_simple_rnn_276_layer_call_and_return_conditional_losses_944335
J__inference_simple_rnn_276_layer_call_and_return_conditional_losses_944443
J__inference_simple_rnn_276_layer_call_and_return_conditional_losses_944551
J__inference_simple_rnn_276_layer_call_and_return_conditional_losses_944659Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zКtrace_0zЛtrace_1zМtrace_2zНtrace_3
я
О	variables
Пtrainable_variables
Рregularization_losses
С	keras_api
Т__call__
+У&call_and_return_all_conditional_losses
Ф_random_generator

]kernel
^recurrent_kernel
_bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
У
Ъtrace_0
Ыtrace_12
,__inference_dropout_276_layer_call_fn_944664
,__inference_dropout_276_layer_call_fn_944669Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЪtrace_0zЫtrace_1
љ
Ьtrace_0
Эtrace_12О
G__inference_dropout_276_layer_call_and_return_conditional_losses_944681
G__inference_dropout_276_layer_call_and_return_conditional_losses_944686Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЬtrace_0zЭtrace_1
"
_generic_user_object
5
`0
a1
b2"
trackable_list_wrapper
5
`0
a1
b2"
trackable_list_wrapper
 "
trackable_list_wrapper
П
Юstates
Яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object

дtrace_0
еtrace_1
жtrace_2
зtrace_32
/__inference_simple_rnn_277_layer_call_fn_944697
/__inference_simple_rnn_277_layer_call_fn_944708
/__inference_simple_rnn_277_layer_call_fn_944719
/__inference_simple_rnn_277_layer_call_fn_944730Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zдtrace_0zеtrace_1zжtrace_2zзtrace_3
№
иtrace_0
йtrace_1
кtrace_2
лtrace_32§
J__inference_simple_rnn_277_layer_call_and_return_conditional_losses_944840
J__inference_simple_rnn_277_layer_call_and_return_conditional_losses_944950
J__inference_simple_rnn_277_layer_call_and_return_conditional_losses_945060
J__inference_simple_rnn_277_layer_call_and_return_conditional_losses_945170Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zиtrace_0zйtrace_1zкtrace_2zлtrace_3
я
м	variables
нtrainable_variables
оregularization_losses
п	keras_api
р__call__
+с&call_and_return_all_conditional_losses
т_random_generator

`kernel
arecurrent_kernel
bbias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
У
шtrace_0
щtrace_12
,__inference_dropout_277_layer_call_fn_945175
,__inference_dropout_277_layer_call_fn_945180Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zшtrace_0zщtrace_1
љ
ъtrace_0
ыtrace_12О
G__inference_dropout_277_layer_call_and_return_conditional_losses_945192
G__inference_dropout_277_layer_call_and_return_conditional_losses_945197Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zъtrace_0zыtrace_1
"
_generic_user_object
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
ьnon_trainable_variables
эlayers
юmetrics
 яlayer_regularization_losses
№layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
х
ёtrace_02Ц
)__inference_dense_52_layer_call_fn_945206
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zёtrace_0

ђtrace_02с
D__inference_dense_52_layer_call_and_return_conditional_losses_945216
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zђtrace_0
!:22dense_52/kernel
:2dense_52/bias
7:522%simple_rnn_274/simple_rnn_cell/kernel
A:?222/simple_rnn_274/simple_rnn_cell/recurrent_kernel
1:/22#simple_rnn_274/simple_rnn_cell/bias
7:5222%simple_rnn_275/simple_rnn_cell/kernel
A:?222/simple_rnn_275/simple_rnn_cell/recurrent_kernel
1:/22#simple_rnn_275/simple_rnn_cell/bias
7:5222%simple_rnn_276/simple_rnn_cell/kernel
A:?222/simple_rnn_276/simple_rnn_cell/recurrent_kernel
1:/22#simple_rnn_276/simple_rnn_cell/bias
7:5222%simple_rnn_277/simple_rnn_cell/kernel
A:?222/simple_rnn_277/simple_rnn_cell/recurrent_kernel
1:/22#simple_rnn_277/simple_rnn_cell/bias
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
(
ѓ0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
њBї
.__inference_sequential_52_layer_call_fn_942901simple_rnn_274_input"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
њBї
.__inference_sequential_52_layer_call_fn_942934simple_rnn_274_input"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
I__inference_sequential_52_layer_call_and_return_conditional_losses_942373simple_rnn_274_input"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
I__inference_sequential_52_layer_call_and_return_conditional_losses_942868simple_rnn_274_input"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 

m0
є1
ѕ2
і3
ї4
ј5
љ6
њ7
ћ8
ќ9
§10
ў11
џ12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper

є0
і1
ј2
њ3
ќ4
ў5
6
7
8
9
10
11
12
13"
trackable_list_wrapper

ѕ0
ї1
љ2
ћ3
§4
џ5
6
7
8
9
10
11
12
13"
trackable_list_wrapper
Ы
trace_0
trace_1
trace_2
trace_3
trace_4
trace_5
trace_6
trace_7
trace_8
trace_9
trace_10
trace_11
trace_12
trace_132И
#__inference__update_step_xla_943112
#__inference__update_step_xla_943117
#__inference__update_step_xla_943122
#__inference__update_step_xla_943127
#__inference__update_step_xla_943132
#__inference__update_step_xla_943137
#__inference__update_step_xla_943142
#__inference__update_step_xla_943147
#__inference__update_step_xla_943152
#__inference__update_step_xla_943157
#__inference__update_step_xla_943162
#__inference__update_step_xla_943167
#__inference__update_step_xla_943172
#__inference__update_step_xla_943177Џ
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0ztrace_0ztrace_1ztrace_2ztrace_3ztrace_4ztrace_5ztrace_6ztrace_7ztrace_8ztrace_9ztrace_10ztrace_11ztrace_12ztrace_13
ъBч
$__inference_signature_wrapper_943107simple_rnn_274_input"І
В
FullArgSpec
args 
varargs
 
varkw
 
defaults
 )

kwonlyargs
jsimple_rnn_274_input
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B§
/__inference_simple_rnn_274_layer_call_fn_943188inputs_0"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
/__inference_simple_rnn_274_layer_call_fn_943199inputs_0"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
/__inference_simple_rnn_274_layer_call_fn_943210inputs"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
/__inference_simple_rnn_274_layer_call_fn_943221inputs"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
J__inference_simple_rnn_274_layer_call_and_return_conditional_losses_943329inputs_0"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
J__inference_simple_rnn_274_layer_call_and_return_conditional_losses_943437inputs_0"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
J__inference_simple_rnn_274_layer_call_and_return_conditional_losses_943545inputs"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
J__inference_simple_rnn_274_layer_call_and_return_conditional_losses_943653inputs"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
5
W0
X1
Y2"
trackable_list_wrapper
5
W0
X1
Y2"
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
 metrics
 Ёlayer_regularization_losses
Ђlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
е
Ѓtrace_0
Єtrace_12
0__inference_simple_rnn_cell_layer_call_fn_945230
0__inference_simple_rnn_cell_layer_call_fn_945244Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЃtrace_0zЄtrace_1

Ѕtrace_0
Іtrace_12а
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945261
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945278Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЅtrace_0zІtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тBп
,__inference_dropout_274_layer_call_fn_943658inputs"Є
В
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
тBп
,__inference_dropout_274_layer_call_fn_943663inputs"Є
В
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
§Bњ
G__inference_dropout_274_layer_call_and_return_conditional_losses_943675inputs"Є
В
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
§Bњ
G__inference_dropout_274_layer_call_and_return_conditional_losses_943680inputs"Є
В
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
(0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B§
/__inference_simple_rnn_275_layer_call_fn_943691inputs_0"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
/__inference_simple_rnn_275_layer_call_fn_943702inputs_0"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
/__inference_simple_rnn_275_layer_call_fn_943713inputs"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
/__inference_simple_rnn_275_layer_call_fn_943724inputs"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
J__inference_simple_rnn_275_layer_call_and_return_conditional_losses_943832inputs_0"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
J__inference_simple_rnn_275_layer_call_and_return_conditional_losses_943940inputs_0"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
J__inference_simple_rnn_275_layer_call_and_return_conditional_losses_944048inputs"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
J__inference_simple_rnn_275_layer_call_and_return_conditional_losses_944156inputs"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
5
Z0
[1
\2"
trackable_list_wrapper
5
Z0
[1
\2"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Їnon_trainable_variables
Јlayers
Љmetrics
 Њlayer_regularization_losses
Ћlayer_metrics
 	variables
Ёtrainable_variables
Ђregularization_losses
Є__call__
+Ѕ&call_and_return_all_conditional_losses
'Ѕ"call_and_return_conditional_losses"
_generic_user_object
е
Ќtrace_0
­trace_12
0__inference_simple_rnn_cell_layer_call_fn_945292
0__inference_simple_rnn_cell_layer_call_fn_945306Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЌtrace_0z­trace_1

Ўtrace_0
Џtrace_12а
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945323
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945340Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЎtrace_0zЏtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тBп
,__inference_dropout_275_layer_call_fn_944161inputs"Є
В
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
тBп
,__inference_dropout_275_layer_call_fn_944166inputs"Є
В
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
§Bњ
G__inference_dropout_275_layer_call_and_return_conditional_losses_944178inputs"Є
В
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
§Bњ
G__inference_dropout_275_layer_call_and_return_conditional_losses_944183inputs"Є
В
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
70"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B§
/__inference_simple_rnn_276_layer_call_fn_944194inputs_0"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
/__inference_simple_rnn_276_layer_call_fn_944205inputs_0"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
/__inference_simple_rnn_276_layer_call_fn_944216inputs"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
/__inference_simple_rnn_276_layer_call_fn_944227inputs"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
J__inference_simple_rnn_276_layer_call_and_return_conditional_losses_944335inputs_0"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
J__inference_simple_rnn_276_layer_call_and_return_conditional_losses_944443inputs_0"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
J__inference_simple_rnn_276_layer_call_and_return_conditional_losses_944551inputs"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
J__inference_simple_rnn_276_layer_call_and_return_conditional_losses_944659inputs"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
5
]0
^1
_2"
trackable_list_wrapper
5
]0
^1
_2"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
О	variables
Пtrainable_variables
Рregularization_losses
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses"
_generic_user_object
е
Еtrace_0
Жtrace_12
0__inference_simple_rnn_cell_layer_call_fn_945354
0__inference_simple_rnn_cell_layer_call_fn_945368Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЕtrace_0zЖtrace_1

Зtrace_0
Иtrace_12а
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945385
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945402Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЗtrace_0zИtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тBп
,__inference_dropout_276_layer_call_fn_944664inputs"Є
В
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
тBп
,__inference_dropout_276_layer_call_fn_944669inputs"Є
В
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
§Bњ
G__inference_dropout_276_layer_call_and_return_conditional_losses_944681inputs"Є
В
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
§Bњ
G__inference_dropout_276_layer_call_and_return_conditional_losses_944686inputs"Є
В
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
F0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B§
/__inference_simple_rnn_277_layer_call_fn_944697inputs_0"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B§
/__inference_simple_rnn_277_layer_call_fn_944708inputs_0"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
/__inference_simple_rnn_277_layer_call_fn_944719inputs"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
/__inference_simple_rnn_277_layer_call_fn_944730inputs"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
J__inference_simple_rnn_277_layer_call_and_return_conditional_losses_944840inputs_0"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
J__inference_simple_rnn_277_layer_call_and_return_conditional_losses_944950inputs_0"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
J__inference_simple_rnn_277_layer_call_and_return_conditional_losses_945060inputs"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
J__inference_simple_rnn_277_layer_call_and_return_conditional_losses_945170inputs"Н
ЖВВ
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
5
`0
a1
b2"
trackable_list_wrapper
5
`0
a1
b2"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
м	variables
нtrainable_variables
оregularization_losses
р__call__
+с&call_and_return_all_conditional_losses
'с"call_and_return_conditional_losses"
_generic_user_object
е
Оtrace_0
Пtrace_12
0__inference_simple_rnn_cell_layer_call_fn_945416
0__inference_simple_rnn_cell_layer_call_fn_945430Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zОtrace_0zПtrace_1

Рtrace_0
Сtrace_12а
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945447
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945464Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zРtrace_0zСtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тBп
,__inference_dropout_277_layer_call_fn_945175inputs"Є
В
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
тBп
,__inference_dropout_277_layer_call_fn_945180inputs"Є
В
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
§Bњ
G__inference_dropout_277_layer_call_and_return_conditional_losses_945192inputs"Є
В
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
§Bњ
G__inference_dropout_277_layer_call_and_return_conditional_losses_945197inputs"Є
В
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
гBа
)__inference_dense_52_layer_call_fn_945206inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
D__inference_dense_52_layer_call_and_return_conditional_losses_945216inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
R
Т	variables
У	keras_api

Фtotal

Хcount"
_tf_keras_metric
>:<22.Adamax/m/simple_rnn_274/simple_rnn_cell/kernel
>:<22.Adamax/u/simple_rnn_274/simple_rnn_cell/kernel
H:F2228Adamax/m/simple_rnn_274/simple_rnn_cell/recurrent_kernel
H:F2228Adamax/u/simple_rnn_274/simple_rnn_cell/recurrent_kernel
8:622,Adamax/m/simple_rnn_274/simple_rnn_cell/bias
8:622,Adamax/u/simple_rnn_274/simple_rnn_cell/bias
>:<222.Adamax/m/simple_rnn_275/simple_rnn_cell/kernel
>:<222.Adamax/u/simple_rnn_275/simple_rnn_cell/kernel
H:F2228Adamax/m/simple_rnn_275/simple_rnn_cell/recurrent_kernel
H:F2228Adamax/u/simple_rnn_275/simple_rnn_cell/recurrent_kernel
8:622,Adamax/m/simple_rnn_275/simple_rnn_cell/bias
8:622,Adamax/u/simple_rnn_275/simple_rnn_cell/bias
>:<222.Adamax/m/simple_rnn_276/simple_rnn_cell/kernel
>:<222.Adamax/u/simple_rnn_276/simple_rnn_cell/kernel
H:F2228Adamax/m/simple_rnn_276/simple_rnn_cell/recurrent_kernel
H:F2228Adamax/u/simple_rnn_276/simple_rnn_cell/recurrent_kernel
8:622,Adamax/m/simple_rnn_276/simple_rnn_cell/bias
8:622,Adamax/u/simple_rnn_276/simple_rnn_cell/bias
>:<222.Adamax/m/simple_rnn_277/simple_rnn_cell/kernel
>:<222.Adamax/u/simple_rnn_277/simple_rnn_cell/kernel
H:F2228Adamax/m/simple_rnn_277/simple_rnn_cell/recurrent_kernel
H:F2228Adamax/u/simple_rnn_277/simple_rnn_cell/recurrent_kernel
8:622,Adamax/m/simple_rnn_277/simple_rnn_cell/bias
8:622,Adamax/u/simple_rnn_277/simple_rnn_cell/bias
(:&22Adamax/m/dense_52/kernel
(:&22Adamax/u/dense_52/kernel
": 2Adamax/m/dense_52/bias
": 2Adamax/u/dense_52/bias
юBы
#__inference__update_step_xla_943112gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
#__inference__update_step_xla_943117gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
#__inference__update_step_xla_943122gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
#__inference__update_step_xla_943127gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
#__inference__update_step_xla_943132gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
#__inference__update_step_xla_943137gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
#__inference__update_step_xla_943142gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
#__inference__update_step_xla_943147gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
#__inference__update_step_xla_943152gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
#__inference__update_step_xla_943157gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
#__inference__update_step_xla_943162gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
#__inference__update_step_xla_943167gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
#__inference__update_step_xla_943172gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
юBы
#__inference__update_step_xla_943177gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
њBї
0__inference_simple_rnn_cell_layer_call_fn_945230inputsstates_0"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
њBї
0__inference_simple_rnn_cell_layer_call_fn_945244inputsstates_0"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945261inputsstates_0"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945278inputsstates_0"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
њBї
0__inference_simple_rnn_cell_layer_call_fn_945292inputsstates_0"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
њBї
0__inference_simple_rnn_cell_layer_call_fn_945306inputsstates_0"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945323inputsstates_0"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945340inputsstates_0"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
њBї
0__inference_simple_rnn_cell_layer_call_fn_945354inputsstates_0"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
њBї
0__inference_simple_rnn_cell_layer_call_fn_945368inputsstates_0"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945385inputsstates_0"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945402inputsstates_0"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
њBї
0__inference_simple_rnn_cell_layer_call_fn_945416inputsstates_0"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
њBї
0__inference_simple_rnn_cell_layer_call_fn_945430inputsstates_0"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945447inputsstates_0"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945464inputsstates_0"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
0
Ф0
Х1"
trackable_list_wrapper
.
Т	variables"
_generic_user_object
:  (2total
:  (2count
#__inference__update_step_xla_943112nhЂe
^Ђ[

gradient2
41	Ђ
њ2

p
` VariableSpec 
`рУњэ?
Њ "
 
#__inference__update_step_xla_943117nhЂe
^Ђ[

gradient22
41	Ђ
њ22

p
` VariableSpec 
`ЎЏјэ?
Њ "
 
#__inference__update_step_xla_943122f`Ђ]
VЂS

gradient2
0-	Ђ
њ2

p
` VariableSpec 
` Иіэ?
Њ "
 
#__inference__update_step_xla_943127nhЂe
^Ђ[

gradient22
41	Ђ
њ22

p
` VariableSpec 
` §і§э?
Њ "
 
#__inference__update_step_xla_943132nhЂe
^Ђ[

gradient22
41	Ђ
њ22

p
` VariableSpec 
` ыБѕэ?
Њ "
 
#__inference__update_step_xla_943137f`Ђ]
VЂS

gradient2
0-	Ђ
њ2

p
` VariableSpec 
` Іі§э?
Њ "
 
#__inference__update_step_xla_943142nhЂe
^Ђ[

gradient22
41	Ђ
њ22

p
` VariableSpec 
`рлй§э?
Њ "
 
#__inference__update_step_xla_943147nhЂe
^Ђ[

gradient22
41	Ђ
њ22

p
` VariableSpec 
`РЅВѕэ?
Њ "
 
#__inference__update_step_xla_943152f`Ђ]
VЂS

gradient2
0-	Ђ
њ2

p
` VariableSpec 
`рди§э?
Њ "
 
#__inference__update_step_xla_943157nhЂe
^Ђ[

gradient22
41	Ђ
њ22

p
` VariableSpec 
` В§э?
Њ "
 
#__inference__update_step_xla_943162nhЂe
^Ђ[

gradient22
41	Ђ
њ22

p
` VariableSpec 
`фєэ?
Њ "
 
#__inference__update_step_xla_943167f`Ђ]
VЂS

gradient2
0-	Ђ
њ2

p
` VariableSpec 
`рШ§э?
Њ "
 
#__inference__update_step_xla_943172nhЂe
^Ђ[

gradient2
41	Ђ
њ2

p
` VariableSpec 
`уЅѕэ?
Њ "
 
#__inference__update_step_xla_943177f`Ђ]
VЂS

gradient
0-	Ђ
њ

p
` VariableSpec 
` фЅѕэ?
Њ "
 Ў
!__inference__wrapped_model_940684WYXZ\[]_^`baUVAЂ>
7Ђ4
2/
simple_rnn_274_inputџџџџџџџџџ
Њ "3Њ0
.
dense_52"
dense_52џџџџџџџџџЋ
D__inference_dense_52_layer_call_and_return_conditional_losses_945216cUV/Ђ,
%Ђ"
 
inputsџџџџџџџџџ2
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
)__inference_dense_52_layer_call_fn_945206XUV/Ђ,
%Ђ"
 
inputsџџџџџџџџџ2
Њ "!
unknownџџџџџџџџџЖ
G__inference_dropout_274_layer_call_and_return_conditional_losses_943675k7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ2
p
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ2
 Ж
G__inference_dropout_274_layer_call_and_return_conditional_losses_943680k7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ2
p 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ2
 
,__inference_dropout_274_layer_call_fn_943658`7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ2
p
Њ "%"
unknownџџџџџџџџџ2
,__inference_dropout_274_layer_call_fn_943663`7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ2
p 
Њ "%"
unknownџџџџџџџџџ2Ж
G__inference_dropout_275_layer_call_and_return_conditional_losses_944178k7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ2
p
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ2
 Ж
G__inference_dropout_275_layer_call_and_return_conditional_losses_944183k7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ2
p 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ2
 
,__inference_dropout_275_layer_call_fn_944161`7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ2
p
Њ "%"
unknownџџџџџџџџџ2
,__inference_dropout_275_layer_call_fn_944166`7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ2
p 
Њ "%"
unknownџџџџџџџџџ2Ж
G__inference_dropout_276_layer_call_and_return_conditional_losses_944681k7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ2
p
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ2
 Ж
G__inference_dropout_276_layer_call_and_return_conditional_losses_944686k7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ2
p 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ2
 
,__inference_dropout_276_layer_call_fn_944664`7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ2
p
Њ "%"
unknownџџџџџџџџџ2
,__inference_dropout_276_layer_call_fn_944669`7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ2
p 
Њ "%"
unknownџџџџџџџџџ2Ў
G__inference_dropout_277_layer_call_and_return_conditional_losses_945192c3Ђ0
)Ђ&
 
inputsџџџџџџџџџ2
p
Њ ",Ђ)
"
tensor_0џџџџџџџџџ2
 Ў
G__inference_dropout_277_layer_call_and_return_conditional_losses_945197c3Ђ0
)Ђ&
 
inputsџџџџџџџџџ2
p 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ2
 
,__inference_dropout_277_layer_call_fn_945175X3Ђ0
)Ђ&
 
inputsџџџџџџџџџ2
p
Њ "!
unknownџџџџџџџџџ2
,__inference_dropout_277_layer_call_fn_945180X3Ђ0
)Ђ&
 
inputsџџџџџџџџџ2
p 
Њ "!
unknownџџџџџџџџџ2з
I__inference_sequential_52_layer_call_and_return_conditional_losses_942373WYXZ\[]_^`baUVIЂF
?Ђ<
2/
simple_rnn_274_inputџџџџџџџџџ
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 з
I__inference_sequential_52_layer_call_and_return_conditional_losses_942868WYXZ\[]_^`baUVIЂF
?Ђ<
2/
simple_rnn_274_inputџџџџџџџџџ
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 А
.__inference_sequential_52_layer_call_fn_942901~WYXZ\[]_^`baUVIЂF
?Ђ<
2/
simple_rnn_274_inputџџџџџџџџџ
p

 
Њ "!
unknownџџџџџџџџџА
.__inference_sequential_52_layer_call_fn_942934~WYXZ\[]_^`baUVIЂF
?Ђ<
2/
simple_rnn_274_inputџџџџџџџџџ
p 

 
Њ "!
unknownџџџџџџџџџЩ
$__inference_signature_wrapper_943107 WYXZ\[]_^`baUVYЂV
Ђ 
OЊL
J
simple_rnn_274_input2/
simple_rnn_274_inputџџџџџџџџџ"3Њ0
.
dense_52"
dense_52џџџџџџџџџр
J__inference_simple_rnn_274_layer_call_and_return_conditional_losses_943329WYXOЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ2
 р
J__inference_simple_rnn_274_layer_call_and_return_conditional_losses_943437WYXOЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ2
 Ц
J__inference_simple_rnn_274_layer_call_and_return_conditional_losses_943545xWYX?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p

 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ2
 Ц
J__inference_simple_rnn_274_layer_call_and_return_conditional_losses_943653xWYX?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p 

 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ2
 К
/__inference_simple_rnn_274_layer_call_fn_943188WYXOЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџ2К
/__inference_simple_rnn_274_layer_call_fn_943199WYXOЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџ2 
/__inference_simple_rnn_274_layer_call_fn_943210mWYX?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p

 
Њ "%"
unknownџџџџџџџџџ2 
/__inference_simple_rnn_274_layer_call_fn_943221mWYX?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p 

 
Њ "%"
unknownџџџџџџџџџ2р
J__inference_simple_rnn_275_layer_call_and_return_conditional_losses_943832Z\[OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ2

 
p

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ2
 р
J__inference_simple_rnn_275_layer_call_and_return_conditional_losses_943940Z\[OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ2

 
p 

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ2
 Ц
J__inference_simple_rnn_275_layer_call_and_return_conditional_losses_944048xZ\[?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p

 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ2
 Ц
J__inference_simple_rnn_275_layer_call_and_return_conditional_losses_944156xZ\[?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p 

 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ2
 К
/__inference_simple_rnn_275_layer_call_fn_943691Z\[OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ2

 
p

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџ2К
/__inference_simple_rnn_275_layer_call_fn_943702Z\[OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ2

 
p 

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџ2 
/__inference_simple_rnn_275_layer_call_fn_943713mZ\[?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p

 
Њ "%"
unknownџџџџџџџџџ2 
/__inference_simple_rnn_275_layer_call_fn_943724mZ\[?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p 

 
Њ "%"
unknownџџџџџџџџџ2р
J__inference_simple_rnn_276_layer_call_and_return_conditional_losses_944335]_^OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ2

 
p

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ2
 р
J__inference_simple_rnn_276_layer_call_and_return_conditional_losses_944443]_^OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ2

 
p 

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ2
 Ц
J__inference_simple_rnn_276_layer_call_and_return_conditional_losses_944551x]_^?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p

 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ2
 Ц
J__inference_simple_rnn_276_layer_call_and_return_conditional_losses_944659x]_^?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p 

 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ2
 К
/__inference_simple_rnn_276_layer_call_fn_944194]_^OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ2

 
p

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџ2К
/__inference_simple_rnn_276_layer_call_fn_944205]_^OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ2

 
p 

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџ2 
/__inference_simple_rnn_276_layer_call_fn_944216m]_^?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p

 
Њ "%"
unknownџџџџџџџџџ2 
/__inference_simple_rnn_276_layer_call_fn_944227m]_^?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p 

 
Њ "%"
unknownџџџџџџџџџ2г
J__inference_simple_rnn_277_layer_call_and_return_conditional_losses_944840`baOЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ2

 
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ2
 г
J__inference_simple_rnn_277_layer_call_and_return_conditional_losses_944950`baOЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ2

 
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ2
 Т
J__inference_simple_rnn_277_layer_call_and_return_conditional_losses_945060t`ba?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ2
 Т
J__inference_simple_rnn_277_layer_call_and_return_conditional_losses_945170t`ba?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ2
 Ќ
/__inference_simple_rnn_277_layer_call_fn_944697y`baOЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ2

 
p

 
Њ "!
unknownџџџџџџџџџ2Ќ
/__inference_simple_rnn_277_layer_call_fn_944708y`baOЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ2

 
p 

 
Њ "!
unknownџџџџџџџџџ2
/__inference_simple_rnn_277_layer_call_fn_944719i`ba?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p

 
Њ "!
unknownџџџџџџџџџ2
/__inference_simple_rnn_277_layer_call_fn_944730i`ba?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ2

 
p 

 
Њ "!
unknownџџџџџџџџџ2
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945261ХWYX\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states_0џџџџџџџџџ2
p
Њ "`Ђ]
VЂS
$!

tensor_0_0џџџџџџџџџ2
+(
&#
tensor_0_1_0џџџџџџџџџ2
 
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945278ХWYX\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states_0џџџџџџџџџ2
p 
Њ "`Ђ]
VЂS
$!

tensor_0_0џџџџџџџџџ2
+(
&#
tensor_0_1_0џџџџџџџџџ2
 
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945323ХZ\[\ЂY
RЂO
 
inputsџџџџџџџџџ2
'Ђ$
"
states_0џџџџџџџџџ2
p
Њ "`Ђ]
VЂS
$!

tensor_0_0џџџџџџџџџ2
+(
&#
tensor_0_1_0џџџџџџџџџ2
 
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945340ХZ\[\ЂY
RЂO
 
inputsџџџџџџџџџ2
'Ђ$
"
states_0џџџџџџџџџ2
p 
Њ "`Ђ]
VЂS
$!

tensor_0_0џџџџџџџџџ2
+(
&#
tensor_0_1_0џџџџџџџџџ2
 
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945385Х]_^\ЂY
RЂO
 
inputsџџџџџџџџџ2
'Ђ$
"
states_0џџџџџџџџџ2
p
Њ "`Ђ]
VЂS
$!

tensor_0_0џџџџџџџџџ2
+(
&#
tensor_0_1_0џџџџџџџџџ2
 
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945402Х]_^\ЂY
RЂO
 
inputsџџџџџџџџџ2
'Ђ$
"
states_0џџџџџџџџџ2
p 
Њ "`Ђ]
VЂS
$!

tensor_0_0џџџџџџџџџ2
+(
&#
tensor_0_1_0џџџџџџџџџ2
 
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945447Х`ba\ЂY
RЂO
 
inputsџџџџџџџџџ2
'Ђ$
"
states_0џџџџџџџџџ2
p
Њ "`Ђ]
VЂS
$!

tensor_0_0џџџџџџџџџ2
+(
&#
tensor_0_1_0џџџџџџџџџ2
 
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_945464Х`ba\ЂY
RЂO
 
inputsџџџџџџџџџ2
'Ђ$
"
states_0џџџџџџџџџ2
p 
Њ "`Ђ]
VЂS
$!

tensor_0_0џџџџџџџџџ2
+(
&#
tensor_0_1_0џџџџџџџџџ2
 ь
0__inference_simple_rnn_cell_layer_call_fn_945230ЗWYX\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states_0џџџџџџџџџ2
p
Њ "RЂO
"
tensor_0џџџџџџџџџ2
)&
$!

tensor_1_0џџџџџџџџџ2ь
0__inference_simple_rnn_cell_layer_call_fn_945244ЗWYX\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states_0џџџџџџџџџ2
p 
Њ "RЂO
"
tensor_0џџџџџџџџџ2
)&
$!

tensor_1_0џџџџџџџџџ2ь
0__inference_simple_rnn_cell_layer_call_fn_945292ЗZ\[\ЂY
RЂO
 
inputsџџџџџџџџџ2
'Ђ$
"
states_0џџџџџџџџџ2
p
Њ "RЂO
"
tensor_0џџџџџџџџџ2
)&
$!

tensor_1_0џџџџџџџџџ2ь
0__inference_simple_rnn_cell_layer_call_fn_945306ЗZ\[\ЂY
RЂO
 
inputsџџџџџџџџџ2
'Ђ$
"
states_0џџџџџџџџџ2
p 
Њ "RЂO
"
tensor_0џџџџџџџџџ2
)&
$!

tensor_1_0џџџџџџџџџ2ь
0__inference_simple_rnn_cell_layer_call_fn_945354З]_^\ЂY
RЂO
 
inputsџџџџџџџџџ2
'Ђ$
"
states_0џџџџџџџџџ2
p
Њ "RЂO
"
tensor_0џџџџџџџџџ2
)&
$!

tensor_1_0џџџџџџџџџ2ь
0__inference_simple_rnn_cell_layer_call_fn_945368З]_^\ЂY
RЂO
 
inputsџџџџџџџџџ2
'Ђ$
"
states_0џџџџџџџџџ2
p 
Њ "RЂO
"
tensor_0џџџџџџџџџ2
)&
$!

tensor_1_0џџџџџџџџџ2ь
0__inference_simple_rnn_cell_layer_call_fn_945416З`ba\ЂY
RЂO
 
inputsџџџџџџџџџ2
'Ђ$
"
states_0џџџџџџџџџ2
p
Њ "RЂO
"
tensor_0џџџџџџџџџ2
)&
$!

tensor_1_0џџџџџџџџџ2ь
0__inference_simple_rnn_cell_layer_call_fn_945430З`ba\ЂY
RЂO
 
inputsџџџџџџџџџ2
'Ђ$
"
states_0џџџџџџџџџ2
p 
Њ "RЂO
"
tensor_0џџџџџџџџџ2
)&
$!

tensor_1_0џџџџџџџџџ2