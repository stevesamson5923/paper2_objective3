Љн3
мј
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
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
resourceИ
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
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
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
dtypetypeИ
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
output"out_typeКнout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
Ѕ
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
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
ч
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
∞
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleКйиelement_dtype"
element_dtypetype"

shape_typetype:
2	
Я
TensorListReserve
element_shape"
shape_type
num_elements(
handleКйиelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint€€€€€€€€€
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
∞
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
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
И"serve*2.15.02v2.15.0-2-g0b15fdfcb3f8Ъƒ/
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
І
Nadam/v/dense_9/biasVarHandleOp*
_output_shapes
: *%

debug_nameNadam/v/dense_9/bias/*
dtype0*
shape:*%
shared_nameNadam/v/dense_9/bias
y
(Nadam/v/dense_9/bias/Read/ReadVariableOpReadVariableOpNadam/v/dense_9/bias*
_output_shapes
:*
dtype0
І
Nadam/m/dense_9/biasVarHandleOp*
_output_shapes
: *%

debug_nameNadam/m/dense_9/bias/*
dtype0*
shape:*%
shared_nameNadam/m/dense_9/bias
y
(Nadam/m/dense_9/bias/Read/ReadVariableOpReadVariableOpNadam/m/dense_9/bias*
_output_shapes
:*
dtype0
±
Nadam/v/dense_9/kernelVarHandleOp*
_output_shapes
: *'

debug_nameNadam/v/dense_9/kernel/*
dtype0*
shape
:*'
shared_nameNadam/v/dense_9/kernel
Б
*Nadam/v/dense_9/kernel/Read/ReadVariableOpReadVariableOpNadam/v/dense_9/kernel*
_output_shapes

:*
dtype0
±
Nadam/m/dense_9/kernelVarHandleOp*
_output_shapes
: *'

debug_nameNadam/m/dense_9/kernel/*
dtype0*
shape
:*'
shared_nameNadam/m/dense_9/kernel
Б
*Nadam/m/dense_9/kernel/Read/ReadVariableOpReadVariableOpNadam/m/dense_9/kernel*
_output_shapes

:*
dtype0
й
*Nadam/v/simple_rnn_39/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *;

debug_name-+Nadam/v/simple_rnn_39/simple_rnn_cell/bias/*
dtype0*
shape:*;
shared_name,*Nadam/v/simple_rnn_39/simple_rnn_cell/bias
•
>Nadam/v/simple_rnn_39/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp*Nadam/v/simple_rnn_39/simple_rnn_cell/bias*
_output_shapes
:*
dtype0
й
*Nadam/m/simple_rnn_39/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *;

debug_name-+Nadam/m/simple_rnn_39/simple_rnn_cell/bias/*
dtype0*
shape:*;
shared_name,*Nadam/m/simple_rnn_39/simple_rnn_cell/bias
•
>Nadam/m/simple_rnn_39/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp*Nadam/m/simple_rnn_39/simple_rnn_cell/bias*
_output_shapes
:*
dtype0
С
6Nadam/v/simple_rnn_39/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *G

debug_name97Nadam/v/simple_rnn_39/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:*G
shared_name86Nadam/v/simple_rnn_39/simple_rnn_cell/recurrent_kernel
Ѕ
JNadam/v/simple_rnn_39/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp6Nadam/v/simple_rnn_39/simple_rnn_cell/recurrent_kernel*
_output_shapes

:*
dtype0
С
6Nadam/m/simple_rnn_39/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *G

debug_name97Nadam/m/simple_rnn_39/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:*G
shared_name86Nadam/m/simple_rnn_39/simple_rnn_cell/recurrent_kernel
Ѕ
JNadam/m/simple_rnn_39/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp6Nadam/m/simple_rnn_39/simple_rnn_cell/recurrent_kernel*
_output_shapes

:*
dtype0
у
,Nadam/v/simple_rnn_39/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *=

debug_name/-Nadam/v/simple_rnn_39/simple_rnn_cell/kernel/*
dtype0*
shape
:*=
shared_name.,Nadam/v/simple_rnn_39/simple_rnn_cell/kernel
≠
@Nadam/v/simple_rnn_39/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp,Nadam/v/simple_rnn_39/simple_rnn_cell/kernel*
_output_shapes

:*
dtype0
у
,Nadam/m/simple_rnn_39/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *=

debug_name/-Nadam/m/simple_rnn_39/simple_rnn_cell/kernel/*
dtype0*
shape
:*=
shared_name.,Nadam/m/simple_rnn_39/simple_rnn_cell/kernel
≠
@Nadam/m/simple_rnn_39/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp,Nadam/m/simple_rnn_39/simple_rnn_cell/kernel*
_output_shapes

:*
dtype0
й
*Nadam/v/simple_rnn_38/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *;

debug_name-+Nadam/v/simple_rnn_38/simple_rnn_cell/bias/*
dtype0*
shape:*;
shared_name,*Nadam/v/simple_rnn_38/simple_rnn_cell/bias
•
>Nadam/v/simple_rnn_38/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp*Nadam/v/simple_rnn_38/simple_rnn_cell/bias*
_output_shapes
:*
dtype0
й
*Nadam/m/simple_rnn_38/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *;

debug_name-+Nadam/m/simple_rnn_38/simple_rnn_cell/bias/*
dtype0*
shape:*;
shared_name,*Nadam/m/simple_rnn_38/simple_rnn_cell/bias
•
>Nadam/m/simple_rnn_38/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp*Nadam/m/simple_rnn_38/simple_rnn_cell/bias*
_output_shapes
:*
dtype0
С
6Nadam/v/simple_rnn_38/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *G

debug_name97Nadam/v/simple_rnn_38/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:*G
shared_name86Nadam/v/simple_rnn_38/simple_rnn_cell/recurrent_kernel
Ѕ
JNadam/v/simple_rnn_38/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp6Nadam/v/simple_rnn_38/simple_rnn_cell/recurrent_kernel*
_output_shapes

:*
dtype0
С
6Nadam/m/simple_rnn_38/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *G

debug_name97Nadam/m/simple_rnn_38/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:*G
shared_name86Nadam/m/simple_rnn_38/simple_rnn_cell/recurrent_kernel
Ѕ
JNadam/m/simple_rnn_38/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp6Nadam/m/simple_rnn_38/simple_rnn_cell/recurrent_kernel*
_output_shapes

:*
dtype0
у
,Nadam/v/simple_rnn_38/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *=

debug_name/-Nadam/v/simple_rnn_38/simple_rnn_cell/kernel/*
dtype0*
shape
:*=
shared_name.,Nadam/v/simple_rnn_38/simple_rnn_cell/kernel
≠
@Nadam/v/simple_rnn_38/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp,Nadam/v/simple_rnn_38/simple_rnn_cell/kernel*
_output_shapes

:*
dtype0
у
,Nadam/m/simple_rnn_38/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *=

debug_name/-Nadam/m/simple_rnn_38/simple_rnn_cell/kernel/*
dtype0*
shape
:*=
shared_name.,Nadam/m/simple_rnn_38/simple_rnn_cell/kernel
≠
@Nadam/m/simple_rnn_38/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp,Nadam/m/simple_rnn_38/simple_rnn_cell/kernel*
_output_shapes

:*
dtype0
й
*Nadam/v/simple_rnn_37/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *;

debug_name-+Nadam/v/simple_rnn_37/simple_rnn_cell/bias/*
dtype0*
shape:*;
shared_name,*Nadam/v/simple_rnn_37/simple_rnn_cell/bias
•
>Nadam/v/simple_rnn_37/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp*Nadam/v/simple_rnn_37/simple_rnn_cell/bias*
_output_shapes
:*
dtype0
й
*Nadam/m/simple_rnn_37/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *;

debug_name-+Nadam/m/simple_rnn_37/simple_rnn_cell/bias/*
dtype0*
shape:*;
shared_name,*Nadam/m/simple_rnn_37/simple_rnn_cell/bias
•
>Nadam/m/simple_rnn_37/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp*Nadam/m/simple_rnn_37/simple_rnn_cell/bias*
_output_shapes
:*
dtype0
С
6Nadam/v/simple_rnn_37/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *G

debug_name97Nadam/v/simple_rnn_37/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:*G
shared_name86Nadam/v/simple_rnn_37/simple_rnn_cell/recurrent_kernel
Ѕ
JNadam/v/simple_rnn_37/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp6Nadam/v/simple_rnn_37/simple_rnn_cell/recurrent_kernel*
_output_shapes

:*
dtype0
С
6Nadam/m/simple_rnn_37/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *G

debug_name97Nadam/m/simple_rnn_37/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:*G
shared_name86Nadam/m/simple_rnn_37/simple_rnn_cell/recurrent_kernel
Ѕ
JNadam/m/simple_rnn_37/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp6Nadam/m/simple_rnn_37/simple_rnn_cell/recurrent_kernel*
_output_shapes

:*
dtype0
у
,Nadam/v/simple_rnn_37/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *=

debug_name/-Nadam/v/simple_rnn_37/simple_rnn_cell/kernel/*
dtype0*
shape
:*=
shared_name.,Nadam/v/simple_rnn_37/simple_rnn_cell/kernel
≠
@Nadam/v/simple_rnn_37/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp,Nadam/v/simple_rnn_37/simple_rnn_cell/kernel*
_output_shapes

:*
dtype0
у
,Nadam/m/simple_rnn_37/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *=

debug_name/-Nadam/m/simple_rnn_37/simple_rnn_cell/kernel/*
dtype0*
shape
:*=
shared_name.,Nadam/m/simple_rnn_37/simple_rnn_cell/kernel
≠
@Nadam/m/simple_rnn_37/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp,Nadam/m/simple_rnn_37/simple_rnn_cell/kernel*
_output_shapes

:*
dtype0
й
*Nadam/v/simple_rnn_36/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *;

debug_name-+Nadam/v/simple_rnn_36/simple_rnn_cell/bias/*
dtype0*
shape:*;
shared_name,*Nadam/v/simple_rnn_36/simple_rnn_cell/bias
•
>Nadam/v/simple_rnn_36/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp*Nadam/v/simple_rnn_36/simple_rnn_cell/bias*
_output_shapes
:*
dtype0
й
*Nadam/m/simple_rnn_36/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *;

debug_name-+Nadam/m/simple_rnn_36/simple_rnn_cell/bias/*
dtype0*
shape:*;
shared_name,*Nadam/m/simple_rnn_36/simple_rnn_cell/bias
•
>Nadam/m/simple_rnn_36/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp*Nadam/m/simple_rnn_36/simple_rnn_cell/bias*
_output_shapes
:*
dtype0
С
6Nadam/v/simple_rnn_36/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *G

debug_name97Nadam/v/simple_rnn_36/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:*G
shared_name86Nadam/v/simple_rnn_36/simple_rnn_cell/recurrent_kernel
Ѕ
JNadam/v/simple_rnn_36/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp6Nadam/v/simple_rnn_36/simple_rnn_cell/recurrent_kernel*
_output_shapes

:*
dtype0
С
6Nadam/m/simple_rnn_36/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *G

debug_name97Nadam/m/simple_rnn_36/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:*G
shared_name86Nadam/m/simple_rnn_36/simple_rnn_cell/recurrent_kernel
Ѕ
JNadam/m/simple_rnn_36/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp6Nadam/m/simple_rnn_36/simple_rnn_cell/recurrent_kernel*
_output_shapes

:*
dtype0
у
,Nadam/v/simple_rnn_36/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *=

debug_name/-Nadam/v/simple_rnn_36/simple_rnn_cell/kernel/*
dtype0*
shape
:*=
shared_name.,Nadam/v/simple_rnn_36/simple_rnn_cell/kernel
≠
@Nadam/v/simple_rnn_36/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp,Nadam/v/simple_rnn_36/simple_rnn_cell/kernel*
_output_shapes

:*
dtype0
у
,Nadam/m/simple_rnn_36/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *=

debug_name/-Nadam/m/simple_rnn_36/simple_rnn_cell/kernel/*
dtype0*
shape
:*=
shared_name.,Nadam/m/simple_rnn_36/simple_rnn_cell/kernel
≠
@Nadam/m/simple_rnn_36/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp,Nadam/m/simple_rnn_36/simple_rnn_cell/kernel*
_output_shapes

:*
dtype0
С
Nadam/VariableVarHandleOp*
_output_shapes
: *

debug_nameNadam/Variable/*
dtype0*
shape: *
shared_nameNadam/Variable
i
"Nadam/Variable/Read/ReadVariableOpReadVariableOpNadam/Variable*
_output_shapes
: *
dtype0
О
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
В
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
—
"simple_rnn_39/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *3

debug_name%#simple_rnn_39/simple_rnn_cell/bias/*
dtype0*
shape:*3
shared_name$"simple_rnn_39/simple_rnn_cell/bias
Х
6simple_rnn_39/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp"simple_rnn_39/simple_rnn_cell/bias*
_output_shapes
:*
dtype0
щ
.simple_rnn_39/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *?

debug_name1/simple_rnn_39/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:*?
shared_name0.simple_rnn_39/simple_rnn_cell/recurrent_kernel
±
Bsimple_rnn_39/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp.simple_rnn_39/simple_rnn_cell/recurrent_kernel*
_output_shapes

:*
dtype0
џ
$simple_rnn_39/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *5

debug_name'%simple_rnn_39/simple_rnn_cell/kernel/*
dtype0*
shape
:*5
shared_name&$simple_rnn_39/simple_rnn_cell/kernel
Э
8simple_rnn_39/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp$simple_rnn_39/simple_rnn_cell/kernel*
_output_shapes

:*
dtype0
—
"simple_rnn_38/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *3

debug_name%#simple_rnn_38/simple_rnn_cell/bias/*
dtype0*
shape:*3
shared_name$"simple_rnn_38/simple_rnn_cell/bias
Х
6simple_rnn_38/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp"simple_rnn_38/simple_rnn_cell/bias*
_output_shapes
:*
dtype0
щ
.simple_rnn_38/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *?

debug_name1/simple_rnn_38/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:*?
shared_name0.simple_rnn_38/simple_rnn_cell/recurrent_kernel
±
Bsimple_rnn_38/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp.simple_rnn_38/simple_rnn_cell/recurrent_kernel*
_output_shapes

:*
dtype0
џ
$simple_rnn_38/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *5

debug_name'%simple_rnn_38/simple_rnn_cell/kernel/*
dtype0*
shape
:*5
shared_name&$simple_rnn_38/simple_rnn_cell/kernel
Э
8simple_rnn_38/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp$simple_rnn_38/simple_rnn_cell/kernel*
_output_shapes

:*
dtype0
—
"simple_rnn_37/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *3

debug_name%#simple_rnn_37/simple_rnn_cell/bias/*
dtype0*
shape:*3
shared_name$"simple_rnn_37/simple_rnn_cell/bias
Х
6simple_rnn_37/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp"simple_rnn_37/simple_rnn_cell/bias*
_output_shapes
:*
dtype0
щ
.simple_rnn_37/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *?

debug_name1/simple_rnn_37/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:*?
shared_name0.simple_rnn_37/simple_rnn_cell/recurrent_kernel
±
Bsimple_rnn_37/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp.simple_rnn_37/simple_rnn_cell/recurrent_kernel*
_output_shapes

:*
dtype0
џ
$simple_rnn_37/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *5

debug_name'%simple_rnn_37/simple_rnn_cell/kernel/*
dtype0*
shape
:*5
shared_name&$simple_rnn_37/simple_rnn_cell/kernel
Э
8simple_rnn_37/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp$simple_rnn_37/simple_rnn_cell/kernel*
_output_shapes

:*
dtype0
—
"simple_rnn_36/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *3

debug_name%#simple_rnn_36/simple_rnn_cell/bias/*
dtype0*
shape:*3
shared_name$"simple_rnn_36/simple_rnn_cell/bias
Х
6simple_rnn_36/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp"simple_rnn_36/simple_rnn_cell/bias*
_output_shapes
:*
dtype0
щ
.simple_rnn_36/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *?

debug_name1/simple_rnn_36/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:*?
shared_name0.simple_rnn_36/simple_rnn_cell/recurrent_kernel
±
Bsimple_rnn_36/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp.simple_rnn_36/simple_rnn_cell/recurrent_kernel*
_output_shapes

:*
dtype0
џ
$simple_rnn_36/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *5

debug_name'%simple_rnn_36/simple_rnn_cell/kernel/*
dtype0*
shape
:*5
shared_name&$simple_rnn_36/simple_rnn_cell/kernel
Э
8simple_rnn_36/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp$simple_rnn_36/simple_rnn_cell/kernel*
_output_shapes

:*
dtype0
П
dense_9/biasVarHandleOp*
_output_shapes
: *

debug_namedense_9/bias/*
dtype0*
shape:*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:*
dtype0
Щ
dense_9/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_9/kernel/*
dtype0*
shape
:*
shared_namedense_9/kernel
q
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes

:*
dtype0
О
#serving_default_simple_rnn_36_inputPlaceholder*+
_output_shapes
:€€€€€€€€€
*
dtype0* 
shape:€€€€€€€€€

г
StatefulPartitionedCallStatefulPartitionedCall#serving_default_simple_rnn_36_input$simple_rnn_36/simple_rnn_cell/kernel"simple_rnn_36/simple_rnn_cell/bias.simple_rnn_36/simple_rnn_cell/recurrent_kernel$simple_rnn_37/simple_rnn_cell/kernel"simple_rnn_37/simple_rnn_cell/bias.simple_rnn_37/simple_rnn_cell/recurrent_kernel$simple_rnn_38/simple_rnn_cell/kernel"simple_rnn_38/simple_rnn_cell/bias.simple_rnn_38/simple_rnn_cell/recurrent_kernel$simple_rnn_39/simple_rnn_cell/kernel"simple_rnn_39/simple_rnn_cell/bias.simple_rnn_39/simple_rnn_cell/recurrent_kerneldense_9/kerneldense_9/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_983631

NoOpNoOp
і|
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*п{
valueе{Bв{ Bџ{
√
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
™
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec*
•
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!_random_generator* 
™
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses
(cell
)
state_spec*
•
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0_random_generator* 
™
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses
7cell
8
state_spec*
•
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses
?_random_generator* 
™
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses
Fcell
G
state_spec*
•
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses
N_random_generator* 
¶
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
∞
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
С
l
_variables
m_iterations
n_learning_rate
o_index_dict
p
_momentums
q_velocities
r
_u_product
s_update_step_xla*

tserving_default* 

W0
X1
Y2*

W0
X1
Y2*
* 
Я

ustates
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
{trace_0
|trace_1
}trace_2
~trace_3* 
9
trace_0
Аtrace_1
Бtrace_2
Вtrace_3* 
Џ
Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses
Й_random_generator

Wkernel
Xrecurrent_kernel
Ybias*
* 
* 
* 
* 
Ц
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses* 

Пtrace_0
Рtrace_1* 

Сtrace_0
Тtrace_1* 
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
•
Уstates
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*
:
Щtrace_0
Ъtrace_1
Ыtrace_2
Ьtrace_3* 
:
Эtrace_0
Юtrace_1
Яtrace_2
†trace_3* 
Џ
°	variables
Ґtrainable_variables
£regularization_losses
§	keras_api
•__call__
+¶&call_and_return_all_conditional_losses
І_random_generator

Zkernel
[recurrent_kernel
\bias*
* 
* 
* 
* 
Ц
®non_trainable_variables
©layers
™metrics
 Ђlayer_regularization_losses
ђlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses* 

≠trace_0
Ѓtrace_1* 

ѓtrace_0
∞trace_1* 
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
•
±states
≤non_trainable_variables
≥layers
іmetrics
 µlayer_regularization_losses
ґlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*
:
Јtrace_0
Єtrace_1
єtrace_2
Їtrace_3* 
:
їtrace_0
Љtrace_1
љtrace_2
Њtrace_3* 
Џ
њ	variables
јtrainable_variables
Ѕregularization_losses
¬	keras_api
√__call__
+ƒ&call_and_return_all_conditional_losses
≈_random_generator

]kernel
^recurrent_kernel
_bias*
* 
* 
* 
* 
Ц
∆non_trainable_variables
«layers
»metrics
 …layer_regularization_losses
 layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses* 

Ћtrace_0
ћtrace_1* 

Ќtrace_0
ќtrace_1* 
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
•
ѕstates
–non_trainable_variables
—layers
“metrics
 ”layer_regularization_losses
‘layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*
:
’trace_0
÷trace_1
„trace_2
Ўtrace_3* 
:
ўtrace_0
Џtrace_1
џtrace_2
№trace_3* 
Џ
Ё	variables
ёtrainable_variables
яregularization_losses
а	keras_api
б__call__
+в&call_and_return_all_conditional_losses
г_random_generator

`kernel
arecurrent_kernel
bbias*
* 
* 
* 
* 
Ц
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses* 

йtrace_0
кtrace_1* 

лtrace_0
мtrace_1* 
* 

U0
V1*

U0
V1*
* 
Ш
нnon_trainable_variables
оlayers
пmetrics
 рlayer_regularization_losses
сlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*

тtrace_0* 

уtrace_0* 
^X
VARIABLE_VALUEdense_9/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_9/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$simple_rnn_36/simple_rnn_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE.simple_rnn_36/simple_rnn_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE"simple_rnn_36/simple_rnn_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$simple_rnn_37/simple_rnn_cell/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE.simple_rnn_37/simple_rnn_cell/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE"simple_rnn_37/simple_rnn_cell/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$simple_rnn_38/simple_rnn_cell/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE.simple_rnn_38/simple_rnn_cell/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE"simple_rnn_38/simple_rnn_cell/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$simple_rnn_39/simple_rnn_cell/kernel&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.simple_rnn_39/simple_rnn_cell/recurrent_kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"simple_rnn_39/simple_rnn_cell/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
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

ф0*
* 
* 
* 
* 
* 
* 
ю
m0
х1
ц2
ч3
ш4
щ5
ъ6
ы7
ь8
э9
ю10
€11
А12
Б13
В14
Г15
Д16
Е17
Ж18
З19
И20
Й21
К22
Л23
М24
Н25
О26
П27
Р28*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
x
х0
ч1
щ2
ы3
э4
€5
Б6
Г7
Е8
З9
Й10
Л11
Н12
П13*
x
ц0
ш1
ъ2
ь3
ю4
А5
В6
Д7
Ж8
И9
К10
М11
О12
Р13*
WQ
VARIABLE_VALUENadam/Variable/optimizer/_u_product/.ATTRIBUTES/VARIABLE_VALUE*
 
Сtrace_0
Тtrace_1
Уtrace_2
Фtrace_3
Хtrace_4
Цtrace_5
Чtrace_6
Шtrace_7
Щtrace_8
Ъtrace_9
Ыtrace_10
Ьtrace_11
Эtrace_12
Юtrace_13* 
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
Ю
Яnon_trainable_variables
†layers
°metrics
 Ґlayer_regularization_losses
£layer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses*

§trace_0
•trace_1* 

¶trace_0
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
Ю
®non_trainable_variables
©layers
™metrics
 Ђlayer_regularization_losses
ђlayer_metrics
°	variables
Ґtrainable_variables
£regularization_losses
•__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses*

≠trace_0
Ѓtrace_1* 

ѓtrace_0
∞trace_1* 
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
Ю
±non_trainable_variables
≤layers
≥metrics
 іlayer_regularization_losses
µlayer_metrics
њ	variables
јtrainable_variables
Ѕregularization_losses
√__call__
+ƒ&call_and_return_all_conditional_losses
'ƒ"call_and_return_conditional_losses*

ґtrace_0
Јtrace_1* 

Єtrace_0
єtrace_1* 
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
Ю
Їnon_trainable_variables
їlayers
Љmetrics
 љlayer_regularization_losses
Њlayer_metrics
Ё	variables
ёtrainable_variables
яregularization_losses
б__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses*

њtrace_0
јtrace_1* 

Ѕtrace_0
¬trace_1* 
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
√	variables
ƒ	keras_api

≈total

∆count*
wq
VARIABLE_VALUE,Nadam/m/simple_rnn_36/simple_rnn_cell/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE,Nadam/v/simple_rnn_36/simple_rnn_cell/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUE6Nadam/m/simple_rnn_36/simple_rnn_cell/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUE6Nadam/v/simple_rnn_36/simple_rnn_cell/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE*Nadam/m/simple_rnn_36/simple_rnn_cell/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE*Nadam/v/simple_rnn_36/simple_rnn_cell/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE,Nadam/m/simple_rnn_37/simple_rnn_cell/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE,Nadam/v/simple_rnn_37/simple_rnn_cell/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUE6Nadam/m/simple_rnn_37/simple_rnn_cell/recurrent_kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUE6Nadam/v/simple_rnn_37/simple_rnn_cell/recurrent_kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Nadam/m/simple_rnn_37/simple_rnn_cell/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Nadam/v/simple_rnn_37/simple_rnn_cell/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Nadam/m/simple_rnn_38/simple_rnn_cell/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Nadam/v/simple_rnn_38/simple_rnn_cell/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUE6Nadam/m/simple_rnn_38/simple_rnn_cell/recurrent_kernel2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUE6Nadam/v/simple_rnn_38/simple_rnn_cell/recurrent_kernel2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Nadam/m/simple_rnn_38/simple_rnn_cell/bias2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Nadam/v/simple_rnn_38/simple_rnn_cell/bias2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Nadam/m/simple_rnn_39/simple_rnn_cell/kernel2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Nadam/v/simple_rnn_39/simple_rnn_cell/kernel2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUE6Nadam/m/simple_rnn_39/simple_rnn_cell/recurrent_kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUE6Nadam/v/simple_rnn_39/simple_rnn_cell/recurrent_kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Nadam/m/simple_rnn_39/simple_rnn_cell/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Nadam/v/simple_rnn_39/simple_rnn_cell/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUENadam/m/dense_9/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUENadam/v/dense_9/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUENadam/m/dense_9/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUENadam/v/dense_9/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
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
≈0
∆1*

√	variables*
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
ч
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_9/kerneldense_9/bias$simple_rnn_36/simple_rnn_cell/kernel.simple_rnn_36/simple_rnn_cell/recurrent_kernel"simple_rnn_36/simple_rnn_cell/bias$simple_rnn_37/simple_rnn_cell/kernel.simple_rnn_37/simple_rnn_cell/recurrent_kernel"simple_rnn_37/simple_rnn_cell/bias$simple_rnn_38/simple_rnn_cell/kernel.simple_rnn_38/simple_rnn_cell/recurrent_kernel"simple_rnn_38/simple_rnn_cell/bias$simple_rnn_39/simple_rnn_cell/kernel.simple_rnn_39/simple_rnn_cell/recurrent_kernel"simple_rnn_39/simple_rnn_cell/bias	iterationlearning_rateNadam/Variable,Nadam/m/simple_rnn_36/simple_rnn_cell/kernel,Nadam/v/simple_rnn_36/simple_rnn_cell/kernel6Nadam/m/simple_rnn_36/simple_rnn_cell/recurrent_kernel6Nadam/v/simple_rnn_36/simple_rnn_cell/recurrent_kernel*Nadam/m/simple_rnn_36/simple_rnn_cell/bias*Nadam/v/simple_rnn_36/simple_rnn_cell/bias,Nadam/m/simple_rnn_37/simple_rnn_cell/kernel,Nadam/v/simple_rnn_37/simple_rnn_cell/kernel6Nadam/m/simple_rnn_37/simple_rnn_cell/recurrent_kernel6Nadam/v/simple_rnn_37/simple_rnn_cell/recurrent_kernel*Nadam/m/simple_rnn_37/simple_rnn_cell/bias*Nadam/v/simple_rnn_37/simple_rnn_cell/bias,Nadam/m/simple_rnn_38/simple_rnn_cell/kernel,Nadam/v/simple_rnn_38/simple_rnn_cell/kernel6Nadam/m/simple_rnn_38/simple_rnn_cell/recurrent_kernel6Nadam/v/simple_rnn_38/simple_rnn_cell/recurrent_kernel*Nadam/m/simple_rnn_38/simple_rnn_cell/bias*Nadam/v/simple_rnn_38/simple_rnn_cell/bias,Nadam/m/simple_rnn_39/simple_rnn_cell/kernel,Nadam/v/simple_rnn_39/simple_rnn_cell/kernel6Nadam/m/simple_rnn_39/simple_rnn_cell/recurrent_kernel6Nadam/v/simple_rnn_39/simple_rnn_cell/recurrent_kernel*Nadam/m/simple_rnn_39/simple_rnn_cell/bias*Nadam/v/simple_rnn_39/simple_rnn_cell/biasNadam/m/dense_9/kernelNadam/v/dense_9/kernelNadam/m/dense_9/biasNadam/v/dense_9/biastotalcountConst*<
Tin5
321*
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
GPU2*0J 8В *(
f#R!
__inference__traced_save_986292
т
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_9/kerneldense_9/bias$simple_rnn_36/simple_rnn_cell/kernel.simple_rnn_36/simple_rnn_cell/recurrent_kernel"simple_rnn_36/simple_rnn_cell/bias$simple_rnn_37/simple_rnn_cell/kernel.simple_rnn_37/simple_rnn_cell/recurrent_kernel"simple_rnn_37/simple_rnn_cell/bias$simple_rnn_38/simple_rnn_cell/kernel.simple_rnn_38/simple_rnn_cell/recurrent_kernel"simple_rnn_38/simple_rnn_cell/bias$simple_rnn_39/simple_rnn_cell/kernel.simple_rnn_39/simple_rnn_cell/recurrent_kernel"simple_rnn_39/simple_rnn_cell/bias	iterationlearning_rateNadam/Variable,Nadam/m/simple_rnn_36/simple_rnn_cell/kernel,Nadam/v/simple_rnn_36/simple_rnn_cell/kernel6Nadam/m/simple_rnn_36/simple_rnn_cell/recurrent_kernel6Nadam/v/simple_rnn_36/simple_rnn_cell/recurrent_kernel*Nadam/m/simple_rnn_36/simple_rnn_cell/bias*Nadam/v/simple_rnn_36/simple_rnn_cell/bias,Nadam/m/simple_rnn_37/simple_rnn_cell/kernel,Nadam/v/simple_rnn_37/simple_rnn_cell/kernel6Nadam/m/simple_rnn_37/simple_rnn_cell/recurrent_kernel6Nadam/v/simple_rnn_37/simple_rnn_cell/recurrent_kernel*Nadam/m/simple_rnn_37/simple_rnn_cell/bias*Nadam/v/simple_rnn_37/simple_rnn_cell/bias,Nadam/m/simple_rnn_38/simple_rnn_cell/kernel,Nadam/v/simple_rnn_38/simple_rnn_cell/kernel6Nadam/m/simple_rnn_38/simple_rnn_cell/recurrent_kernel6Nadam/v/simple_rnn_38/simple_rnn_cell/recurrent_kernel*Nadam/m/simple_rnn_38/simple_rnn_cell/bias*Nadam/v/simple_rnn_38/simple_rnn_cell/bias,Nadam/m/simple_rnn_39/simple_rnn_cell/kernel,Nadam/v/simple_rnn_39/simple_rnn_cell/kernel6Nadam/m/simple_rnn_39/simple_rnn_cell/recurrent_kernel6Nadam/v/simple_rnn_39/simple_rnn_cell/recurrent_kernel*Nadam/m/simple_rnn_39/simple_rnn_cell/bias*Nadam/v/simple_rnn_39/simple_rnn_cell/biasNadam/m/dense_9/kernelNadam/v/dense_9/kernelNadam/m/dense_9/biasNadam/v/dense_9/biastotalcount*;
Tin4
220*
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
GPU2*0J 8В *+
f&R$
"__inference__traced_restore_986442‘Р-
з
™
while_cond_981263
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_981263___redundant_placeholder04
0while_while_cond_981263___redundant_placeholder14
0while_while_cond_981263___redundant_placeholder24
0while_while_cond_981263___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Є
O
#__inference__update_step_xla_983651
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:: *
	_noinline(:H D

_output_shapes

:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
±5
Ф
I__inference_simple_rnn_39_layer_call_and_return_conditional_losses_982193

inputs(
simple_rnn_cell_982116:$
simple_rnn_cell_982118:(
simple_rnn_cell_982120:
identityИҐ'simple_rnn_cell/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskа
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_982116simple_rnn_cell_982118simple_rnn_cell_982120*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_982115n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : к
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_982116simple_rnn_cell_982118simple_rnn_cell_982120*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_982129*
condR
while_cond_982128*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€T
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:&"
 
_user_specified_name982116:&"
 
_user_specified_name982118:&"
 
_user_specified_name982120
і=
∞
I__inference_simple_rnn_38_layer_call_and_return_conditional_losses_985183

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
identityИҐ&simple_rnn_cell/BiasAdd/ReadVariableOpҐ%simple_rnn_cell/MatMul/ReadVariableOpҐ'simple_rnn_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskФ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ы
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ш
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Х
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : µ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_985117*
condR
while_cond_985116*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€
•
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€

 
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
Ї>
∞
I__inference_simple_rnn_39_layer_call_and_return_conditional_losses_985694

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
identityИҐ&simple_rnn_cell/BiasAdd/ReadVariableOpҐ%simple_rnn_cell/MatMul/ReadVariableOpҐ'simple_rnn_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskФ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ы
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ш
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Х
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : µ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_985627*
condR
while_cond_985626*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€•
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€

 
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
ц	
ф
C__inference_dense_9_layer_call_and_return_conditional_losses_982890

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
У
Ђ
,sequential_9_simple_rnn_36_while_cond_980817R
Nsequential_9_simple_rnn_36_while_sequential_9_simple_rnn_36_while_loop_counterX
Tsequential_9_simple_rnn_36_while_sequential_9_simple_rnn_36_while_maximum_iterations0
,sequential_9_simple_rnn_36_while_placeholder2
.sequential_9_simple_rnn_36_while_placeholder_12
.sequential_9_simple_rnn_36_while_placeholder_2T
Psequential_9_simple_rnn_36_while_less_sequential_9_simple_rnn_36_strided_slice_1j
fsequential_9_simple_rnn_36_while_sequential_9_simple_rnn_36_while_cond_980817___redundant_placeholder0j
fsequential_9_simple_rnn_36_while_sequential_9_simple_rnn_36_while_cond_980817___redundant_placeholder1j
fsequential_9_simple_rnn_36_while_sequential_9_simple_rnn_36_while_cond_980817___redundant_placeholder2j
fsequential_9_simple_rnn_36_while_sequential_9_simple_rnn_36_while_cond_980817___redundant_placeholder3-
)sequential_9_simple_rnn_36_while_identity
ќ
%sequential_9/simple_rnn_36/while/LessLess,sequential_9_simple_rnn_36_while_placeholderPsequential_9_simple_rnn_36_while_less_sequential_9_simple_rnn_36_strided_slice_1*
T0*
_output_shapes
: Б
)sequential_9/simple_rnn_36/while/IdentityIdentity)sequential_9/simple_rnn_36/while/Less:z:0*
T0
*
_output_shapes
: "_
)sequential_9_simple_rnn_36_while_identity2sequential_9/simple_rnn_36/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :€€€€€€€€€: :::::e a

_output_shapes
: 
G
_user_specified_name/-sequential_9/simple_rnn_36/while/loop_counter:kg

_output_shapes
: 
M
_user_specified_name53sequential_9/simple_rnn_36/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:b^

_output_shapes
: 
D
_user_specified_name,*sequential_9/simple_rnn_36/strided_slice_1:

_output_shapes
:
µю
ё1
__inference__traced_save_986292
file_prefix7
%read_disablecopyonread_dense_9_kernel:3
%read_1_disablecopyonread_dense_9_bias:O
=read_2_disablecopyonread_simple_rnn_36_simple_rnn_cell_kernel:Y
Gread_3_disablecopyonread_simple_rnn_36_simple_rnn_cell_recurrent_kernel:I
;read_4_disablecopyonread_simple_rnn_36_simple_rnn_cell_bias:O
=read_5_disablecopyonread_simple_rnn_37_simple_rnn_cell_kernel:Y
Gread_6_disablecopyonread_simple_rnn_37_simple_rnn_cell_recurrent_kernel:I
;read_7_disablecopyonread_simple_rnn_37_simple_rnn_cell_bias:O
=read_8_disablecopyonread_simple_rnn_38_simple_rnn_cell_kernel:Y
Gread_9_disablecopyonread_simple_rnn_38_simple_rnn_cell_recurrent_kernel:J
<read_10_disablecopyonread_simple_rnn_38_simple_rnn_cell_bias:P
>read_11_disablecopyonread_simple_rnn_39_simple_rnn_cell_kernel:Z
Hread_12_disablecopyonread_simple_rnn_39_simple_rnn_cell_recurrent_kernel:J
<read_13_disablecopyonread_simple_rnn_39_simple_rnn_cell_bias:-
#read_14_disablecopyonread_iteration:	 1
'read_15_disablecopyonread_learning_rate: 2
(read_16_disablecopyonread_nadam_variable: X
Fread_17_disablecopyonread_nadam_m_simple_rnn_36_simple_rnn_cell_kernel:X
Fread_18_disablecopyonread_nadam_v_simple_rnn_36_simple_rnn_cell_kernel:b
Pread_19_disablecopyonread_nadam_m_simple_rnn_36_simple_rnn_cell_recurrent_kernel:b
Pread_20_disablecopyonread_nadam_v_simple_rnn_36_simple_rnn_cell_recurrent_kernel:R
Dread_21_disablecopyonread_nadam_m_simple_rnn_36_simple_rnn_cell_bias:R
Dread_22_disablecopyonread_nadam_v_simple_rnn_36_simple_rnn_cell_bias:X
Fread_23_disablecopyonread_nadam_m_simple_rnn_37_simple_rnn_cell_kernel:X
Fread_24_disablecopyonread_nadam_v_simple_rnn_37_simple_rnn_cell_kernel:b
Pread_25_disablecopyonread_nadam_m_simple_rnn_37_simple_rnn_cell_recurrent_kernel:b
Pread_26_disablecopyonread_nadam_v_simple_rnn_37_simple_rnn_cell_recurrent_kernel:R
Dread_27_disablecopyonread_nadam_m_simple_rnn_37_simple_rnn_cell_bias:R
Dread_28_disablecopyonread_nadam_v_simple_rnn_37_simple_rnn_cell_bias:X
Fread_29_disablecopyonread_nadam_m_simple_rnn_38_simple_rnn_cell_kernel:X
Fread_30_disablecopyonread_nadam_v_simple_rnn_38_simple_rnn_cell_kernel:b
Pread_31_disablecopyonread_nadam_m_simple_rnn_38_simple_rnn_cell_recurrent_kernel:b
Pread_32_disablecopyonread_nadam_v_simple_rnn_38_simple_rnn_cell_recurrent_kernel:R
Dread_33_disablecopyonread_nadam_m_simple_rnn_38_simple_rnn_cell_bias:R
Dread_34_disablecopyonread_nadam_v_simple_rnn_38_simple_rnn_cell_bias:X
Fread_35_disablecopyonread_nadam_m_simple_rnn_39_simple_rnn_cell_kernel:X
Fread_36_disablecopyonread_nadam_v_simple_rnn_39_simple_rnn_cell_kernel:b
Pread_37_disablecopyonread_nadam_m_simple_rnn_39_simple_rnn_cell_recurrent_kernel:b
Pread_38_disablecopyonread_nadam_v_simple_rnn_39_simple_rnn_cell_recurrent_kernel:R
Dread_39_disablecopyonread_nadam_m_simple_rnn_39_simple_rnn_cell_bias:R
Dread_40_disablecopyonread_nadam_v_simple_rnn_39_simple_rnn_cell_bias:B
0read_41_disablecopyonread_nadam_m_dense_9_kernel:B
0read_42_disablecopyonread_nadam_v_dense_9_kernel:<
.read_43_disablecopyonread_nadam_m_dense_9_bias:<
.read_44_disablecopyonread_nadam_v_dense_9_bias:)
read_45_disablecopyonread_total: )
read_46_disablecopyonread_count: 
savev2_const
identity_95ИҐMergeV2CheckpointsҐRead/DisableCopyOnReadҐRead/ReadVariableOpҐRead_1/DisableCopyOnReadҐRead_1/ReadVariableOpҐRead_10/DisableCopyOnReadҐRead_10/ReadVariableOpҐRead_11/DisableCopyOnReadҐRead_11/ReadVariableOpҐRead_12/DisableCopyOnReadҐRead_12/ReadVariableOpҐRead_13/DisableCopyOnReadҐRead_13/ReadVariableOpҐRead_14/DisableCopyOnReadҐRead_14/ReadVariableOpҐRead_15/DisableCopyOnReadҐRead_15/ReadVariableOpҐRead_16/DisableCopyOnReadҐRead_16/ReadVariableOpҐRead_17/DisableCopyOnReadҐRead_17/ReadVariableOpҐRead_18/DisableCopyOnReadҐRead_18/ReadVariableOpҐRead_19/DisableCopyOnReadҐRead_19/ReadVariableOpҐRead_2/DisableCopyOnReadҐRead_2/ReadVariableOpҐRead_20/DisableCopyOnReadҐRead_20/ReadVariableOpҐRead_21/DisableCopyOnReadҐRead_21/ReadVariableOpҐRead_22/DisableCopyOnReadҐRead_22/ReadVariableOpҐRead_23/DisableCopyOnReadҐRead_23/ReadVariableOpҐRead_24/DisableCopyOnReadҐRead_24/ReadVariableOpҐRead_25/DisableCopyOnReadҐRead_25/ReadVariableOpҐRead_26/DisableCopyOnReadҐRead_26/ReadVariableOpҐRead_27/DisableCopyOnReadҐRead_27/ReadVariableOpҐRead_28/DisableCopyOnReadҐRead_28/ReadVariableOpҐRead_29/DisableCopyOnReadҐRead_29/ReadVariableOpҐRead_3/DisableCopyOnReadҐRead_3/ReadVariableOpҐRead_30/DisableCopyOnReadҐRead_30/ReadVariableOpҐRead_31/DisableCopyOnReadҐRead_31/ReadVariableOpҐRead_32/DisableCopyOnReadҐRead_32/ReadVariableOpҐRead_33/DisableCopyOnReadҐRead_33/ReadVariableOpҐRead_34/DisableCopyOnReadҐRead_34/ReadVariableOpҐRead_35/DisableCopyOnReadҐRead_35/ReadVariableOpҐRead_36/DisableCopyOnReadҐRead_36/ReadVariableOpҐRead_37/DisableCopyOnReadҐRead_37/ReadVariableOpҐRead_38/DisableCopyOnReadҐRead_38/ReadVariableOpҐRead_39/DisableCopyOnReadҐRead_39/ReadVariableOpҐRead_4/DisableCopyOnReadҐRead_4/ReadVariableOpҐRead_40/DisableCopyOnReadҐRead_40/ReadVariableOpҐRead_41/DisableCopyOnReadҐRead_41/ReadVariableOpҐRead_42/DisableCopyOnReadҐRead_42/ReadVariableOpҐRead_43/DisableCopyOnReadҐRead_43/ReadVariableOpҐRead_44/DisableCopyOnReadҐRead_44/ReadVariableOpҐRead_45/DisableCopyOnReadҐRead_45/ReadVariableOpҐRead_46/DisableCopyOnReadҐRead_46/ReadVariableOpҐRead_5/DisableCopyOnReadҐRead_5/ReadVariableOpҐRead_6/DisableCopyOnReadҐRead_6/ReadVariableOpҐRead_7/DisableCopyOnReadҐRead_7/ReadVariableOpҐRead_8/DisableCopyOnReadҐRead_8/ReadVariableOpҐRead_9/DisableCopyOnReadҐRead_9/ReadVariableOpw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: w
Read/DisableCopyOnReadDisableCopyOnRead%read_disablecopyonread_dense_9_kernel"/device:CPU:0*
_output_shapes
 °
Read/ReadVariableOpReadVariableOp%read_disablecopyonread_dense_9_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:y
Read_1/DisableCopyOnReadDisableCopyOnRead%read_1_disablecopyonread_dense_9_bias"/device:CPU:0*
_output_shapes
 °
Read_1/ReadVariableOpReadVariableOp%read_1_disablecopyonread_dense_9_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
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
:С
Read_2/DisableCopyOnReadDisableCopyOnRead=read_2_disablecopyonread_simple_rnn_36_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 љ
Read_2/ReadVariableOpReadVariableOp=read_2_disablecopyonread_simple_rnn_36_simple_rnn_cell_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:Ы
Read_3/DisableCopyOnReadDisableCopyOnReadGread_3_disablecopyonread_simple_rnn_36_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 «
Read_3/ReadVariableOpReadVariableOpGread_3_disablecopyonread_simple_rnn_36_simple_rnn_cell_recurrent_kernel^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes

:П
Read_4/DisableCopyOnReadDisableCopyOnRead;read_4_disablecopyonread_simple_rnn_36_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 Ј
Read_4/ReadVariableOpReadVariableOp;read_4_disablecopyonread_simple_rnn_36_simple_rnn_cell_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:С
Read_5/DisableCopyOnReadDisableCopyOnRead=read_5_disablecopyonread_simple_rnn_37_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 љ
Read_5/ReadVariableOpReadVariableOp=read_5_disablecopyonread_simple_rnn_37_simple_rnn_cell_kernel^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes

:Ы
Read_6/DisableCopyOnReadDisableCopyOnReadGread_6_disablecopyonread_simple_rnn_37_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 «
Read_6/ReadVariableOpReadVariableOpGread_6_disablecopyonread_simple_rnn_37_simple_rnn_cell_recurrent_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:П
Read_7/DisableCopyOnReadDisableCopyOnRead;read_7_disablecopyonread_simple_rnn_37_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 Ј
Read_7/ReadVariableOpReadVariableOp;read_7_disablecopyonread_simple_rnn_37_simple_rnn_cell_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:С
Read_8/DisableCopyOnReadDisableCopyOnRead=read_8_disablecopyonread_simple_rnn_38_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 љ
Read_8/ReadVariableOpReadVariableOp=read_8_disablecopyonread_simple_rnn_38_simple_rnn_cell_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

:Ы
Read_9/DisableCopyOnReadDisableCopyOnReadGread_9_disablecopyonread_simple_rnn_38_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 «
Read_9/ReadVariableOpReadVariableOpGread_9_disablecopyonread_simple_rnn_38_simple_rnn_cell_recurrent_kernel^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes

:С
Read_10/DisableCopyOnReadDisableCopyOnRead<read_10_disablecopyonread_simple_rnn_38_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 Ї
Read_10/ReadVariableOpReadVariableOp<read_10_disablecopyonread_simple_rnn_38_simple_rnn_cell_bias^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:У
Read_11/DisableCopyOnReadDisableCopyOnRead>read_11_disablecopyonread_simple_rnn_39_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 ј
Read_11/ReadVariableOpReadVariableOp>read_11_disablecopyonread_simple_rnn_39_simple_rnn_cell_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes

:Э
Read_12/DisableCopyOnReadDisableCopyOnReadHread_12_disablecopyonread_simple_rnn_39_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
  
Read_12/ReadVariableOpReadVariableOpHread_12_disablecopyonread_simple_rnn_39_simple_rnn_cell_recurrent_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes

:С
Read_13/DisableCopyOnReadDisableCopyOnRead<read_13_disablecopyonread_simple_rnn_39_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 Ї
Read_13/ReadVariableOpReadVariableOp<read_13_disablecopyonread_simple_rnn_39_simple_rnn_cell_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_14/DisableCopyOnReadDisableCopyOnRead#read_14_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Э
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
 °
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
: }
Read_16/DisableCopyOnReadDisableCopyOnRead(read_16_disablecopyonread_nadam_variable"/device:CPU:0*
_output_shapes
 Ґ
Read_16/ReadVariableOpReadVariableOp(read_16_disablecopyonread_nadam_variable^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
: Ы
Read_17/DisableCopyOnReadDisableCopyOnReadFread_17_disablecopyonread_nadam_m_simple_rnn_36_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 »
Read_17/ReadVariableOpReadVariableOpFread_17_disablecopyonread_nadam_m_simple_rnn_36_simple_rnn_cell_kernel^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes

:Ы
Read_18/DisableCopyOnReadDisableCopyOnReadFread_18_disablecopyonread_nadam_v_simple_rnn_36_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 »
Read_18/ReadVariableOpReadVariableOpFread_18_disablecopyonread_nadam_v_simple_rnn_36_simple_rnn_cell_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes

:•
Read_19/DisableCopyOnReadDisableCopyOnReadPread_19_disablecopyonread_nadam_m_simple_rnn_36_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 “
Read_19/ReadVariableOpReadVariableOpPread_19_disablecopyonread_nadam_m_simple_rnn_36_simple_rnn_cell_recurrent_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes

:•
Read_20/DisableCopyOnReadDisableCopyOnReadPread_20_disablecopyonread_nadam_v_simple_rnn_36_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 “
Read_20/ReadVariableOpReadVariableOpPread_20_disablecopyonread_nadam_v_simple_rnn_36_simple_rnn_cell_recurrent_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes

:Щ
Read_21/DisableCopyOnReadDisableCopyOnReadDread_21_disablecopyonread_nadam_m_simple_rnn_36_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 ¬
Read_21/ReadVariableOpReadVariableOpDread_21_disablecopyonread_nadam_m_simple_rnn_36_simple_rnn_cell_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:Щ
Read_22/DisableCopyOnReadDisableCopyOnReadDread_22_disablecopyonread_nadam_v_simple_rnn_36_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 ¬
Read_22/ReadVariableOpReadVariableOpDread_22_disablecopyonread_nadam_v_simple_rnn_36_simple_rnn_cell_bias^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:Ы
Read_23/DisableCopyOnReadDisableCopyOnReadFread_23_disablecopyonread_nadam_m_simple_rnn_37_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 »
Read_23/ReadVariableOpReadVariableOpFread_23_disablecopyonread_nadam_m_simple_rnn_37_simple_rnn_cell_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes

:Ы
Read_24/DisableCopyOnReadDisableCopyOnReadFread_24_disablecopyonread_nadam_v_simple_rnn_37_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 »
Read_24/ReadVariableOpReadVariableOpFread_24_disablecopyonread_nadam_v_simple_rnn_37_simple_rnn_cell_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes

:•
Read_25/DisableCopyOnReadDisableCopyOnReadPread_25_disablecopyonread_nadam_m_simple_rnn_37_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 “
Read_25/ReadVariableOpReadVariableOpPread_25_disablecopyonread_nadam_m_simple_rnn_37_simple_rnn_cell_recurrent_kernel^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes

:•
Read_26/DisableCopyOnReadDisableCopyOnReadPread_26_disablecopyonread_nadam_v_simple_rnn_37_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 “
Read_26/ReadVariableOpReadVariableOpPread_26_disablecopyonread_nadam_v_simple_rnn_37_simple_rnn_cell_recurrent_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes

:Щ
Read_27/DisableCopyOnReadDisableCopyOnReadDread_27_disablecopyonread_nadam_m_simple_rnn_37_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 ¬
Read_27/ReadVariableOpReadVariableOpDread_27_disablecopyonread_nadam_m_simple_rnn_37_simple_rnn_cell_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:Щ
Read_28/DisableCopyOnReadDisableCopyOnReadDread_28_disablecopyonread_nadam_v_simple_rnn_37_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 ¬
Read_28/ReadVariableOpReadVariableOpDread_28_disablecopyonread_nadam_v_simple_rnn_37_simple_rnn_cell_bias^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:Ы
Read_29/DisableCopyOnReadDisableCopyOnReadFread_29_disablecopyonread_nadam_m_simple_rnn_38_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 »
Read_29/ReadVariableOpReadVariableOpFread_29_disablecopyonread_nadam_m_simple_rnn_38_simple_rnn_cell_kernel^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes

:Ы
Read_30/DisableCopyOnReadDisableCopyOnReadFread_30_disablecopyonread_nadam_v_simple_rnn_38_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 »
Read_30/ReadVariableOpReadVariableOpFread_30_disablecopyonread_nadam_v_simple_rnn_38_simple_rnn_cell_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes

:•
Read_31/DisableCopyOnReadDisableCopyOnReadPread_31_disablecopyonread_nadam_m_simple_rnn_38_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 “
Read_31/ReadVariableOpReadVariableOpPread_31_disablecopyonread_nadam_m_simple_rnn_38_simple_rnn_cell_recurrent_kernel^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes

:•
Read_32/DisableCopyOnReadDisableCopyOnReadPread_32_disablecopyonread_nadam_v_simple_rnn_38_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 “
Read_32/ReadVariableOpReadVariableOpPread_32_disablecopyonread_nadam_v_simple_rnn_38_simple_rnn_cell_recurrent_kernel^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes

:Щ
Read_33/DisableCopyOnReadDisableCopyOnReadDread_33_disablecopyonread_nadam_m_simple_rnn_38_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 ¬
Read_33/ReadVariableOpReadVariableOpDread_33_disablecopyonread_nadam_m_simple_rnn_38_simple_rnn_cell_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:Щ
Read_34/DisableCopyOnReadDisableCopyOnReadDread_34_disablecopyonread_nadam_v_simple_rnn_38_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 ¬
Read_34/ReadVariableOpReadVariableOpDread_34_disablecopyonread_nadam_v_simple_rnn_38_simple_rnn_cell_bias^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:Ы
Read_35/DisableCopyOnReadDisableCopyOnReadFread_35_disablecopyonread_nadam_m_simple_rnn_39_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 »
Read_35/ReadVariableOpReadVariableOpFread_35_disablecopyonread_nadam_m_simple_rnn_39_simple_rnn_cell_kernel^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes

:Ы
Read_36/DisableCopyOnReadDisableCopyOnReadFread_36_disablecopyonread_nadam_v_simple_rnn_39_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 »
Read_36/ReadVariableOpReadVariableOpFread_36_disablecopyonread_nadam_v_simple_rnn_39_simple_rnn_cell_kernel^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes

:•
Read_37/DisableCopyOnReadDisableCopyOnReadPread_37_disablecopyonread_nadam_m_simple_rnn_39_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 “
Read_37/ReadVariableOpReadVariableOpPread_37_disablecopyonread_nadam_m_simple_rnn_39_simple_rnn_cell_recurrent_kernel^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes

:•
Read_38/DisableCopyOnReadDisableCopyOnReadPread_38_disablecopyonread_nadam_v_simple_rnn_39_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 “
Read_38/ReadVariableOpReadVariableOpPread_38_disablecopyonread_nadam_v_simple_rnn_39_simple_rnn_cell_recurrent_kernel^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes

:Щ
Read_39/DisableCopyOnReadDisableCopyOnReadDread_39_disablecopyonread_nadam_m_simple_rnn_39_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 ¬
Read_39/ReadVariableOpReadVariableOpDread_39_disablecopyonread_nadam_m_simple_rnn_39_simple_rnn_cell_bias^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
:Щ
Read_40/DisableCopyOnReadDisableCopyOnReadDread_40_disablecopyonread_nadam_v_simple_rnn_39_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 ¬
Read_40/ReadVariableOpReadVariableOpDread_40_disablecopyonread_nadam_v_simple_rnn_39_simple_rnn_cell_bias^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
:Е
Read_41/DisableCopyOnReadDisableCopyOnRead0read_41_disablecopyonread_nadam_m_dense_9_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_41/ReadVariableOpReadVariableOp0read_41_disablecopyonread_nadam_m_dense_9_kernel^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes

:Е
Read_42/DisableCopyOnReadDisableCopyOnRead0read_42_disablecopyonread_nadam_v_dense_9_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_42/ReadVariableOpReadVariableOp0read_42_disablecopyonread_nadam_v_dense_9_kernel^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes

:Г
Read_43/DisableCopyOnReadDisableCopyOnRead.read_43_disablecopyonread_nadam_m_dense_9_bias"/device:CPU:0*
_output_shapes
 ђ
Read_43/ReadVariableOpReadVariableOp.read_43_disablecopyonread_nadam_m_dense_9_bias^Read_43/DisableCopyOnRead"/device:CPU:0*
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
:Г
Read_44/DisableCopyOnReadDisableCopyOnRead.read_44_disablecopyonread_nadam_v_dense_9_bias"/device:CPU:0*
_output_shapes
 ђ
Read_44/ReadVariableOpReadVariableOp.read_44_disablecopyonread_nadam_v_dense_9_bias^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
:t
Read_45/DisableCopyOnReadDisableCopyOnReadread_45_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_45/ReadVariableOpReadVariableOpread_45_disablecopyonread_total^Read_45/DisableCopyOnRead"/device:CPU:0*
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
: t
Read_46/DisableCopyOnReadDisableCopyOnReadread_46_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_46/ReadVariableOpReadVariableOpread_46_disablecopyonread_count^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes
: Е
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*Ѓ
value§B°0B6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB/optimizer/_u_product/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЌ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*s
valuejBh0B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B М

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *>
dtypes4
220	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_94Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_95IdentityIdentity_94:output:0^NoOp*
T0*
_output_shapes
: Џ
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_95Identity_95:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
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
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp24
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
_user_specified_namefile_prefix:.*
(
_user_specified_namedense_9/kernel:,(
&
_user_specified_namedense_9/bias:D@
>
_user_specified_name&$simple_rnn_36/simple_rnn_cell/kernel:NJ
H
_user_specified_name0.simple_rnn_36/simple_rnn_cell/recurrent_kernel:B>
<
_user_specified_name$"simple_rnn_36/simple_rnn_cell/bias:D@
>
_user_specified_name&$simple_rnn_37/simple_rnn_cell/kernel:NJ
H
_user_specified_name0.simple_rnn_37/simple_rnn_cell/recurrent_kernel:B>
<
_user_specified_name$"simple_rnn_37/simple_rnn_cell/bias:D	@
>
_user_specified_name&$simple_rnn_38/simple_rnn_cell/kernel:N
J
H
_user_specified_name0.simple_rnn_38/simple_rnn_cell/recurrent_kernel:B>
<
_user_specified_name$"simple_rnn_38/simple_rnn_cell/bias:D@
>
_user_specified_name&$simple_rnn_39/simple_rnn_cell/kernel:NJ
H
_user_specified_name0.simple_rnn_39/simple_rnn_cell/recurrent_kernel:B>
<
_user_specified_name$"simple_rnn_39/simple_rnn_cell/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:.*
(
_user_specified_nameNadam/Variable:LH
F
_user_specified_name.,Nadam/m/simple_rnn_36/simple_rnn_cell/kernel:LH
F
_user_specified_name.,Nadam/v/simple_rnn_36/simple_rnn_cell/kernel:VR
P
_user_specified_name86Nadam/m/simple_rnn_36/simple_rnn_cell/recurrent_kernel:VR
P
_user_specified_name86Nadam/v/simple_rnn_36/simple_rnn_cell/recurrent_kernel:JF
D
_user_specified_name,*Nadam/m/simple_rnn_36/simple_rnn_cell/bias:JF
D
_user_specified_name,*Nadam/v/simple_rnn_36/simple_rnn_cell/bias:LH
F
_user_specified_name.,Nadam/m/simple_rnn_37/simple_rnn_cell/kernel:LH
F
_user_specified_name.,Nadam/v/simple_rnn_37/simple_rnn_cell/kernel:VR
P
_user_specified_name86Nadam/m/simple_rnn_37/simple_rnn_cell/recurrent_kernel:VR
P
_user_specified_name86Nadam/v/simple_rnn_37/simple_rnn_cell/recurrent_kernel:JF
D
_user_specified_name,*Nadam/m/simple_rnn_37/simple_rnn_cell/bias:JF
D
_user_specified_name,*Nadam/v/simple_rnn_37/simple_rnn_cell/bias:LH
F
_user_specified_name.,Nadam/m/simple_rnn_38/simple_rnn_cell/kernel:LH
F
_user_specified_name.,Nadam/v/simple_rnn_38/simple_rnn_cell/kernel:V R
P
_user_specified_name86Nadam/m/simple_rnn_38/simple_rnn_cell/recurrent_kernel:V!R
P
_user_specified_name86Nadam/v/simple_rnn_38/simple_rnn_cell/recurrent_kernel:J"F
D
_user_specified_name,*Nadam/m/simple_rnn_38/simple_rnn_cell/bias:J#F
D
_user_specified_name,*Nadam/v/simple_rnn_38/simple_rnn_cell/bias:L$H
F
_user_specified_name.,Nadam/m/simple_rnn_39/simple_rnn_cell/kernel:L%H
F
_user_specified_name.,Nadam/v/simple_rnn_39/simple_rnn_cell/kernel:V&R
P
_user_specified_name86Nadam/m/simple_rnn_39/simple_rnn_cell/recurrent_kernel:V'R
P
_user_specified_name86Nadam/v/simple_rnn_39/simple_rnn_cell/recurrent_kernel:J(F
D
_user_specified_name,*Nadam/m/simple_rnn_39/simple_rnn_cell/bias:J)F
D
_user_specified_name,*Nadam/v/simple_rnn_39/simple_rnn_cell/bias:6*2
0
_user_specified_nameNadam/m/dense_9/kernel:6+2
0
_user_specified_nameNadam/v/dense_9/kernel:4,0
.
_user_specified_nameNadam/m/dense_9/bias:4-0
.
_user_specified_nameNadam/v/dense_9/bias:%.!

_user_specified_nametotal:%/!

_user_specified_namecount:=09

_output_shapes
: 

_user_specified_nameConst
ь-
ґ
while_body_984290
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:C
5while_simple_rnn_cell_biasadd_readvariableop_resource:H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐ,while/simple_rnn_cell/BiasAdd/ReadVariableOpҐ+while/simple_rnn_cell/MatMul/ReadVariableOpҐ-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ґ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0њ
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Є
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¶
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€«
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€µ

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
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2\
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
:€€€€€€€€€:GC
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
™5
Џ
H__inference_sequential_9_layer_call_and_return_conditional_losses_982897
simple_rnn_36_input&
simple_rnn_36_982475:"
simple_rnn_36_982477:&
simple_rnn_36_982479:&
simple_rnn_37_982603:"
simple_rnn_37_982605:&
simple_rnn_37_982607:&
simple_rnn_38_982731:"
simple_rnn_38_982733:&
simple_rnn_38_982735:&
simple_rnn_39_982861:"
simple_rnn_39_982863:&
simple_rnn_39_982865: 
dense_9_982891:
dense_9_982893:
identityИҐdense_9/StatefulPartitionedCallҐ"dropout_36/StatefulPartitionedCallҐ"dropout_37/StatefulPartitionedCallҐ"dropout_38/StatefulPartitionedCallҐ"dropout_39/StatefulPartitionedCallҐ%simple_rnn_36/StatefulPartitionedCallҐ%simple_rnn_37/StatefulPartitionedCallҐ%simple_rnn_38/StatefulPartitionedCallҐ%simple_rnn_39/StatefulPartitionedCall∞
%simple_rnn_36/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_36_inputsimple_rnn_36_982475simple_rnn_36_982477simple_rnn_36_982479*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_simple_rnn_36_layer_call_and_return_conditional_losses_982474ы
"dropout_36/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_36_layer_call_and_return_conditional_losses_982493»
%simple_rnn_37/StatefulPartitionedCallStatefulPartitionedCall+dropout_36/StatefulPartitionedCall:output:0simple_rnn_37_982603simple_rnn_37_982605simple_rnn_37_982607*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_simple_rnn_37_layer_call_and_return_conditional_losses_982602†
"dropout_37/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_37/StatefulPartitionedCall:output:0#^dropout_36/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_982621»
%simple_rnn_38/StatefulPartitionedCallStatefulPartitionedCall+dropout_37/StatefulPartitionedCall:output:0simple_rnn_38_982731simple_rnn_38_982733simple_rnn_38_982735*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_simple_rnn_38_layer_call_and_return_conditional_losses_982730†
"dropout_38/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_38/StatefulPartitionedCall:output:0#^dropout_37/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_38_layer_call_and_return_conditional_losses_982749ƒ
%simple_rnn_39/StatefulPartitionedCallStatefulPartitionedCall+dropout_38/StatefulPartitionedCall:output:0simple_rnn_39_982861simple_rnn_39_982863simple_rnn_39_982865*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_simple_rnn_39_layer_call_and_return_conditional_losses_982860Ь
"dropout_39/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_39/StatefulPartitionedCall:output:0#^dropout_38/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_39_layer_call_and_return_conditional_losses_982879Ф
dense_9/StatefulPartitionedCallStatefulPartitionedCall+dropout_39/StatefulPartitionedCall:output:0dense_9_982891dense_9_982893*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_982890w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ш
NoOpNoOp ^dense_9/StatefulPartitionedCall#^dropout_36/StatefulPartitionedCall#^dropout_37/StatefulPartitionedCall#^dropout_38/StatefulPartitionedCall#^dropout_39/StatefulPartitionedCall&^simple_rnn_36/StatefulPartitionedCall&^simple_rnn_37/StatefulPartitionedCall&^simple_rnn_38/StatefulPartitionedCall&^simple_rnn_39/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:€€€€€€€€€
: : : : : : : : : : : : : : 2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2H
"dropout_36/StatefulPartitionedCall"dropout_36/StatefulPartitionedCall2H
"dropout_37/StatefulPartitionedCall"dropout_37/StatefulPartitionedCall2H
"dropout_38/StatefulPartitionedCall"dropout_38/StatefulPartitionedCall2H
"dropout_39/StatefulPartitionedCall"dropout_39/StatefulPartitionedCall2N
%simple_rnn_36/StatefulPartitionedCall%simple_rnn_36/StatefulPartitionedCall2N
%simple_rnn_37/StatefulPartitionedCall%simple_rnn_37/StatefulPartitionedCall2N
%simple_rnn_38/StatefulPartitionedCall%simple_rnn_38/StatefulPartitionedCall2N
%simple_rnn_39/StatefulPartitionedCall%simple_rnn_39/StatefulPartitionedCall:` \
+
_output_shapes
:€€€€€€€€€

-
_user_specified_namesimple_rnn_36_input:&"
 
_user_specified_name982475:&"
 
_user_specified_name982477:&"
 
_user_specified_name982479:&"
 
_user_specified_name982603:&"
 
_user_specified_name982605:&"
 
_user_specified_name982607:&"
 
_user_specified_name982731:&"
 
_user_specified_name982733:&	"
 
_user_specified_name982735:&
"
 
_user_specified_name982861:&"
 
_user_specified_name982863:&"
 
_user_specified_name982865:&"
 
_user_specified_name982891:&"
 
_user_specified_name982893
і=
∞
I__inference_simple_rnn_38_layer_call_and_return_conditional_losses_985075

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
identityИҐ&simple_rnn_cell/BiasAdd/ReadVariableOpҐ%simple_rnn_cell/MatMul/ReadVariableOpҐ'simple_rnn_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskФ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ы
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ш
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Х
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : µ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_985009*
condR
while_cond_985008*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€
•
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€

 
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
Й	
Ї
.__inference_simple_rnn_38_layer_call_fn_984718
inputs_0
unknown:
	unknown_0:
	unknown_1:
identityИҐStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_simple_rnn_38_layer_call_and_return_conditional_losses_981903|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:&"
 
_user_specified_name984710:&"
 
_user_specified_name984712:&"
 
_user_specified_name984714
з
™
while_cond_982663
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_982663___redundant_placeholder04
0while_while_cond_982663___redundant_placeholder14
0while_while_cond_982663___redundant_placeholder24
0while_while_cond_982663___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Џ
и
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985988

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€G
TanhTanhadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
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
і=
∞
I__inference_simple_rnn_36_layer_call_and_return_conditional_losses_982474

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
identityИҐ&simple_rnn_cell/BiasAdd/ReadVariableOpҐ%simple_rnn_cell/MatMul/ReadVariableOpҐ'simple_rnn_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskФ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ы
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ш
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Х
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : µ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_982408*
condR
while_cond_982407*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€
•
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€

 
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
п"
√
while_body_981383
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_simple_rnn_cell_981405_0:,
while_simple_rnn_cell_981407_0:0
while_simple_rnn_cell_981409_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_simple_rnn_cell_981405:*
while_simple_rnn_cell_981407:.
while_simple_rnn_cell_981409:ИҐ-while/simple_rnn_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ы
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_981405_0while_simple_rnn_cell_981407_0while_simple_rnn_cell_981409_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_981370я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: У
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€X

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_981405while_simple_rnn_cell_981405_0">
while_simple_rnn_cell_981407while_simple_rnn_cell_981407_0">
while_simple_rnn_cell_981409while_simple_rnn_cell_981409_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2^
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
:€€€€€€€€€:GC
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
 
_user_specified_name981405:&"
 
_user_specified_name981407:&	"
 
_user_specified_name981409
і=
∞
I__inference_simple_rnn_38_layer_call_and_return_conditional_losses_983249

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
identityИҐ&simple_rnn_cell/BiasAdd/ReadVariableOpҐ%simple_rnn_cell/MatMul/ReadVariableOpҐ'simple_rnn_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskФ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ы
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ш
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Х
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : µ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_983183*
condR
while_cond_983182*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€
•
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€

 
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
Є
O
#__inference__update_step_xla_983656
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:: *
	_noinline(:H D

_output_shapes

:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
п
Ї
.__inference_simple_rnn_39_layer_call_fn_985221
inputs_0
unknown:
	unknown_0:
	unknown_1:
identityИҐStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_simple_rnn_39_layer_call_and_return_conditional_losses_982193o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:&"
 
_user_specified_name985213:&"
 
_user_specified_name985215:&"
 
_user_specified_name985217
з
™
while_cond_982535
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_982535___redundant_placeholder04
0while_while_cond_982535___redundant_placeholder14
0while_while_cond_982535___redundant_placeholder24
0while_while_cond_982535___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ь-
ґ
while_body_982941
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:C
5while_simple_rnn_cell_biasadd_readvariableop_resource:H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐ,while/simple_rnn_cell/BiasAdd/ReadVariableOpҐ+while/simple_rnn_cell/MatMul/ReadVariableOpҐ-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ґ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0њ
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Є
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¶
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€«
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€µ

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
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2\
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
:€€€€€€€€€:GC
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
∆4
Ф
I__inference_simple_rnn_36_layer_call_and_return_conditional_losses_981446

inputs(
simple_rnn_cell_981371:$
simple_rnn_cell_981373:(
simple_rnn_cell_981375:
identityИҐ'simple_rnn_cell/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskа
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_981371simple_rnn_cell_981373simple_rnn_cell_981375*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_981370n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : к
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_981371simple_rnn_cell_981373simple_rnn_cell_981375*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_981383*
condR
while_cond_981382*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€T
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:&"
 
_user_specified_name981371:&"
 
_user_specified_name981373:&"
 
_user_specified_name981375
М
Ў
0__inference_simple_rnn_cell_layer_call_fn_985768

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
identity

identity_1ИҐStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_981370o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_0:&"
 
_user_specified_name985758:&"
 
_user_specified_name985760:&"
 
_user_specified_name985762
з
™
while_cond_981958
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_981958___redundant_placeholder04
0while_while_cond_981958___redundant_placeholder14
0while_while_cond_981958___redundant_placeholder24
0while_while_cond_981958___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
т=
≤
I__inference_simple_rnn_37_layer_call_and_return_conditional_losses_984356
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
identityИҐ&simple_rnn_cell/BiasAdd/ReadVariableOpҐ%simple_rnn_cell/MatMul/ReadVariableOpҐ'simple_rnn_cell/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskФ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ы
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ш
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Х
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : µ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_984290*
condR
while_cond_984289*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€•
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
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
і=
∞
I__inference_simple_rnn_37_layer_call_and_return_conditional_losses_984572

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
identityИҐ&simple_rnn_cell/BiasAdd/ReadVariableOpҐ%simple_rnn_cell/MatMul/ReadVariableOpҐ'simple_rnn_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskФ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ы
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ш
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Х
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : µ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_984506*
condR
while_cond_984505*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€
•
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€

 
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
Џ
и
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985785

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€G
TanhTanhadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
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
Л$
√
while_body_982250
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_simple_rnn_cell_982272_0:,
while_simple_rnn_cell_982274_0:0
while_simple_rnn_cell_982276_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_simple_rnn_cell_982272:*
while_simple_rnn_cell_982274:.
while_simple_rnn_cell_982276:ИҐ-while/simple_rnn_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ы
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_982272_0while_simple_rnn_cell_982274_0while_simple_rnn_cell_982276_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_982236r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : З
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:06while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: У
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€X

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_982272while_simple_rnn_cell_982272_0">
while_simple_rnn_cell_982274while_simple_rnn_cell_982274_0">
while_simple_rnn_cell_982276while_simple_rnn_cell_982276_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2^
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
:€€€€€€€€€:GC
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
 
_user_specified_name982272:&"
 
_user_specified_name982274:&	"
 
_user_specified_name982276
Л/
∆
H__inference_sequential_9_layer_call_and_return_conditional_losses_983392
simple_rnn_36_input&
simple_rnn_36_983008:"
simple_rnn_36_983010:&
simple_rnn_36_983012:&
simple_rnn_37_983129:"
simple_rnn_37_983131:&
simple_rnn_37_983133:&
simple_rnn_38_983250:"
simple_rnn_38_983252:&
simple_rnn_38_983254:&
simple_rnn_39_983373:"
simple_rnn_39_983375:&
simple_rnn_39_983377: 
dense_9_983386:
dense_9_983388:
identityИҐdense_9/StatefulPartitionedCallҐ%simple_rnn_36/StatefulPartitionedCallҐ%simple_rnn_37/StatefulPartitionedCallҐ%simple_rnn_38/StatefulPartitionedCallҐ%simple_rnn_39/StatefulPartitionedCall∞
%simple_rnn_36/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_36_inputsimple_rnn_36_983008simple_rnn_36_983010simple_rnn_36_983012*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_simple_rnn_36_layer_call_and_return_conditional_losses_983007л
dropout_36/PartitionedCallPartitionedCall.simple_rnn_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_36_layer_call_and_return_conditional_losses_983019ј
%simple_rnn_37/StatefulPartitionedCallStatefulPartitionedCall#dropout_36/PartitionedCall:output:0simple_rnn_37_983129simple_rnn_37_983131simple_rnn_37_983133*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_simple_rnn_37_layer_call_and_return_conditional_losses_983128л
dropout_37/PartitionedCallPartitionedCall.simple_rnn_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_983140ј
%simple_rnn_38/StatefulPartitionedCallStatefulPartitionedCall#dropout_37/PartitionedCall:output:0simple_rnn_38_983250simple_rnn_38_983252simple_rnn_38_983254*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_simple_rnn_38_layer_call_and_return_conditional_losses_983249л
dropout_38/PartitionedCallPartitionedCall.simple_rnn_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_38_layer_call_and_return_conditional_losses_983261Љ
%simple_rnn_39/StatefulPartitionedCallStatefulPartitionedCall#dropout_38/PartitionedCall:output:0simple_rnn_39_983373simple_rnn_39_983375simple_rnn_39_983377*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_simple_rnn_39_layer_call_and_return_conditional_losses_983372з
dropout_39/PartitionedCallPartitionedCall.simple_rnn_39/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_39_layer_call_and_return_conditional_losses_983384М
dense_9/StatefulPartitionedCallStatefulPartitionedCall#dropout_39/PartitionedCall:output:0dense_9_983386dense_9_983388*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_982890w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€д
NoOpNoOp ^dense_9/StatefulPartitionedCall&^simple_rnn_36/StatefulPartitionedCall&^simple_rnn_37/StatefulPartitionedCall&^simple_rnn_38/StatefulPartitionedCall&^simple_rnn_39/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:€€€€€€€€€
: : : : : : : : : : : : : : 2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2N
%simple_rnn_36/StatefulPartitionedCall%simple_rnn_36/StatefulPartitionedCall2N
%simple_rnn_37/StatefulPartitionedCall%simple_rnn_37/StatefulPartitionedCall2N
%simple_rnn_38/StatefulPartitionedCall%simple_rnn_38/StatefulPartitionedCall2N
%simple_rnn_39/StatefulPartitionedCall%simple_rnn_39/StatefulPartitionedCall:` \
+
_output_shapes
:€€€€€€€€€

-
_user_specified_namesimple_rnn_36_input:&"
 
_user_specified_name983008:&"
 
_user_specified_name983010:&"
 
_user_specified_name983012:&"
 
_user_specified_name983129:&"
 
_user_specified_name983131:&"
 
_user_specified_name983133:&"
 
_user_specified_name983250:&"
 
_user_specified_name983252:&	"
 
_user_specified_name983254:&
"
 
_user_specified_name983373:&"
 
_user_specified_name983375:&"
 
_user_specified_name983377:&"
 
_user_specified_name983386:&"
 
_user_specified_name983388
ґ

e
F__inference_dropout_36_layer_call_and_return_conditional_losses_982493

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€
Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕР
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€
*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>™
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€
T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ч
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€
e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:€€€€€€€€€
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
±5
Ф
I__inference_simple_rnn_39_layer_call_and_return_conditional_losses_982314

inputs(
simple_rnn_cell_982237:$
simple_rnn_cell_982239:(
simple_rnn_cell_982241:
identityИҐ'simple_rnn_cell/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskа
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_982237simple_rnn_cell_982239simple_rnn_cell_982241*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_982236n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : к
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_982237simple_rnn_cell_982239simple_rnn_cell_982241*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_982250*
condR
while_cond_982249*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€T
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:&"
 
_user_specified_name982237:&"
 
_user_specified_name982239:&"
 
_user_specified_name982241
з
™
while_cond_984002
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_984002___redundant_placeholder04
0while_while_cond_984002___redundant_placeholder14
0while_while_cond_984002___redundant_placeholder24
0while_while_cond_984002___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
М
Ў
0__inference_simple_rnn_cell_layer_call_fn_985878

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
identity

identity_1ИҐStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_981827o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_0:&"
 
_user_specified_name985868:&"
 
_user_specified_name985870:&"
 
_user_specified_name985872
я
Є
.__inference_simple_rnn_38_layer_call_fn_984740

inputs
unknown:
	unknown_0:
	unknown_1:
identityИҐStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_simple_rnn_38_layer_call_and_return_conditional_losses_982730s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs:&"
 
_user_specified_name984732:&"
 
_user_specified_name984734:&"
 
_user_specified_name984736
з
™
while_cond_985406
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_985406___redundant_placeholder04
0while_while_cond_985406___redundant_placeholder14
0while_while_cond_985406___redundant_placeholder24
0while_while_cond_985406___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ш/
ґ
while_body_985627
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:C
5while_simple_rnn_cell_biasadd_readvariableop_resource:H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐ,while/simple_rnn_cell/BiasAdd/ReadVariableOpҐ+while/simple_rnn_cell/MatMul/ReadVariableOpҐ-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ґ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0њ
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Є
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¶
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€µ

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
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2\
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
:€€€€€€€€€:GC
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
п"
√
while_body_981671
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_simple_rnn_cell_981693_0:,
while_simple_rnn_cell_981695_0:0
while_simple_rnn_cell_981697_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_simple_rnn_cell_981693:*
while_simple_rnn_cell_981695:.
while_simple_rnn_cell_981697:ИҐ-while/simple_rnn_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ы
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_981693_0while_simple_rnn_cell_981695_0while_simple_rnn_cell_981697_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_981658я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: У
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€X

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_981693while_simple_rnn_cell_981693_0">
while_simple_rnn_cell_981695while_simple_rnn_cell_981695_0">
while_simple_rnn_cell_981697while_simple_rnn_cell_981697_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2^
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
:€€€€€€€€€:GC
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
 
_user_specified_name981693:&"
 
_user_specified_name981695:&	"
 
_user_specified_name981697
і=
∞
I__inference_simple_rnn_37_layer_call_and_return_conditional_losses_982602

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
identityИҐ&simple_rnn_cell/BiasAdd/ReadVariableOpҐ%simple_rnn_cell/MatMul/ReadVariableOpҐ'simple_rnn_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskФ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ы
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ш
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Х
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : µ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_982536*
condR
while_cond_982535*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€
•
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€

 
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
з
™
while_cond_983786
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_983786___redundant_placeholder04
0while_while_cond_983786___redundant_placeholder14
0while_while_cond_983786___redundant_placeholder24
0while_while_cond_983786___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
т=
≤
I__inference_simple_rnn_36_layer_call_and_return_conditional_losses_983961
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
identityИҐ&simple_rnn_cell/BiasAdd/ReadVariableOpҐ%simple_rnn_cell/MatMul/ReadVariableOpҐ'simple_rnn_cell/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskФ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ы
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ш
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Х
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : µ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_983895*
condR
while_cond_983894*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€•
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
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
й
d
F__inference_dropout_37_layer_call_and_return_conditional_losses_984707

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€
_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€
"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
і=
∞
I__inference_simple_rnn_38_layer_call_and_return_conditional_losses_982730

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
identityИҐ&simple_rnn_cell/BiasAdd/ReadVariableOpҐ%simple_rnn_cell/MatMul/ReadVariableOpҐ'simple_rnn_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskФ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ы
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ш
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Х
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : µ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_982664*
condR
while_cond_982663*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€
•
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€

 
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
ь-
ґ
while_body_984506
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:C
5while_simple_rnn_cell_biasadd_readvariableop_resource:H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐ,while/simple_rnn_cell/BiasAdd/ReadVariableOpҐ+while/simple_rnn_cell/MatMul/ReadVariableOpҐ-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ґ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0њ
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Є
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¶
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€«
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€µ

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
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2\
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
:€€€€€€€€€:GC
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
Й	
Ї
.__inference_simple_rnn_36_layer_call_fn_983712
inputs_0
unknown:
	unknown_0:
	unknown_1:
identityИҐStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_simple_rnn_36_layer_call_and_return_conditional_losses_981327|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:&"
 
_user_specified_name983704:&"
 
_user_specified_name983706:&"
 
_user_specified_name983708
У
Ђ
,sequential_9_simple_rnn_38_while_cond_981027R
Nsequential_9_simple_rnn_38_while_sequential_9_simple_rnn_38_while_loop_counterX
Tsequential_9_simple_rnn_38_while_sequential_9_simple_rnn_38_while_maximum_iterations0
,sequential_9_simple_rnn_38_while_placeholder2
.sequential_9_simple_rnn_38_while_placeholder_12
.sequential_9_simple_rnn_38_while_placeholder_2T
Psequential_9_simple_rnn_38_while_less_sequential_9_simple_rnn_38_strided_slice_1j
fsequential_9_simple_rnn_38_while_sequential_9_simple_rnn_38_while_cond_981027___redundant_placeholder0j
fsequential_9_simple_rnn_38_while_sequential_9_simple_rnn_38_while_cond_981027___redundant_placeholder1j
fsequential_9_simple_rnn_38_while_sequential_9_simple_rnn_38_while_cond_981027___redundant_placeholder2j
fsequential_9_simple_rnn_38_while_sequential_9_simple_rnn_38_while_cond_981027___redundant_placeholder3-
)sequential_9_simple_rnn_38_while_identity
ќ
%sequential_9/simple_rnn_38/while/LessLess,sequential_9_simple_rnn_38_while_placeholderPsequential_9_simple_rnn_38_while_less_sequential_9_simple_rnn_38_strided_slice_1*
T0*
_output_shapes
: Б
)sequential_9/simple_rnn_38/while/IdentityIdentity)sequential_9/simple_rnn_38/while/Less:z:0*
T0
*
_output_shapes
: "_
)sequential_9_simple_rnn_38_while_identity2sequential_9/simple_rnn_38/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :€€€€€€€€€: :::::e a

_output_shapes
: 
G
_user_specified_name/-sequential_9/simple_rnn_38/while/loop_counter:kg

_output_shapes
: 
M
_user_specified_name53sequential_9/simple_rnn_38/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:b^

_output_shapes
: 
D
_user_specified_name,*sequential_9/simple_rnn_38/strided_slice_1:

_output_shapes
:
Л$
√
while_body_982129
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_simple_rnn_cell_982151_0:,
while_simple_rnn_cell_982153_0:0
while_simple_rnn_cell_982155_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_simple_rnn_cell_982151:*
while_simple_rnn_cell_982153:.
while_simple_rnn_cell_982155:ИҐ-while/simple_rnn_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ы
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_982151_0while_simple_rnn_cell_982153_0while_simple_rnn_cell_982155_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_982115r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : З
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:06while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: У
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€X

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_982151while_simple_rnn_cell_982151_0">
while_simple_rnn_cell_982153while_simple_rnn_cell_982153_0">
while_simple_rnn_cell_982155while_simple_rnn_cell_982155_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2^
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
:€€€€€€€€€:GC
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
 
_user_specified_name982151:&"
 
_user_specified_name982153:&	"
 
_user_specified_name982155
ь-
ґ
while_body_984793
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:C
5while_simple_rnn_cell_biasadd_readvariableop_resource:H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐ,while/simple_rnn_cell/BiasAdd/ReadVariableOpҐ+while/simple_rnn_cell/MatMul/ReadVariableOpҐ-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ґ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0њ
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Є
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¶
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€«
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€µ

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
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2\
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
:€€€€€€€€€:GC
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
ь-
ґ
while_body_983895
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:C
5while_simple_rnn_cell_biasadd_readvariableop_resource:H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐ,while/simple_rnn_cell/BiasAdd/ReadVariableOpҐ+while/simple_rnn_cell/MatMul/ReadVariableOpҐ-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ґ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0њ
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Є
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¶
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€«
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€µ

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
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2\
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
:€€€€€€€€€:GC
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
Є
O
#__inference__update_step_xla_983671
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:: *
	_noinline(:H D

_output_shapes

:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
й
d
F__inference_dropout_37_layer_call_and_return_conditional_losses_983140

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€
_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€
"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
∆4
Ф
I__inference_simple_rnn_36_layer_call_and_return_conditional_losses_981327

inputs(
simple_rnn_cell_981252:$
simple_rnn_cell_981254:(
simple_rnn_cell_981256:
identityИҐ'simple_rnn_cell/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskа
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_981252simple_rnn_cell_981254simple_rnn_cell_981256*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_981251n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : к
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_981252simple_rnn_cell_981254simple_rnn_cell_981256*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_981264*
condR
while_cond_981263*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€T
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:&"
 
_user_specified_name981252:&"
 
_user_specified_name981254:&"
 
_user_specified_name981256
ё
н
$__inference_signature_wrapper_983631
simple_rnn_36_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_36_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:€€€€€€€€€*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_981208o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:€€€€€€€€€
: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:€€€€€€€€€

-
_user_specified_namesimple_rnn_36_input:&"
 
_user_specified_name983601:&"
 
_user_specified_name983603:&"
 
_user_specified_name983605:&"
 
_user_specified_name983607:&"
 
_user_specified_name983609:&"
 
_user_specified_name983611:&"
 
_user_specified_name983613:&"
 
_user_specified_name983615:&	"
 
_user_specified_name983617:&
"
 
_user_specified_name983619:&"
 
_user_specified_name983621:&"
 
_user_specified_name983623:&"
 
_user_specified_name983625:&"
 
_user_specified_name983627
¬I
д
,sequential_9_simple_rnn_39_while_body_981134R
Nsequential_9_simple_rnn_39_while_sequential_9_simple_rnn_39_while_loop_counterX
Tsequential_9_simple_rnn_39_while_sequential_9_simple_rnn_39_while_maximum_iterations0
,sequential_9_simple_rnn_39_while_placeholder2
.sequential_9_simple_rnn_39_while_placeholder_12
.sequential_9_simple_rnn_39_while_placeholder_2Q
Msequential_9_simple_rnn_39_while_sequential_9_simple_rnn_39_strided_slice_1_0О
Йsequential_9_simple_rnn_39_while_tensorarrayv2read_tensorlistgetitem_sequential_9_simple_rnn_39_tensorarrayunstack_tensorlistfromtensor_0c
Qsequential_9_simple_rnn_39_while_simple_rnn_cell_matmul_readvariableop_resource_0:`
Rsequential_9_simple_rnn_39_while_simple_rnn_cell_biasadd_readvariableop_resource_0:e
Ssequential_9_simple_rnn_39_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:-
)sequential_9_simple_rnn_39_while_identity/
+sequential_9_simple_rnn_39_while_identity_1/
+sequential_9_simple_rnn_39_while_identity_2/
+sequential_9_simple_rnn_39_while_identity_3/
+sequential_9_simple_rnn_39_while_identity_4O
Ksequential_9_simple_rnn_39_while_sequential_9_simple_rnn_39_strided_slice_1М
Зsequential_9_simple_rnn_39_while_tensorarrayv2read_tensorlistgetitem_sequential_9_simple_rnn_39_tensorarrayunstack_tensorlistfromtensora
Osequential_9_simple_rnn_39_while_simple_rnn_cell_matmul_readvariableop_resource:^
Psequential_9_simple_rnn_39_while_simple_rnn_cell_biasadd_readvariableop_resource:c
Qsequential_9_simple_rnn_39_while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐGsequential_9/simple_rnn_39/while/simple_rnn_cell/BiasAdd/ReadVariableOpҐFsequential_9/simple_rnn_39/while/simple_rnn_cell/MatMul/ReadVariableOpҐHsequential_9/simple_rnn_39/while/simple_rnn_cell/MatMul_1/ReadVariableOp£
Rsequential_9/simple_rnn_39/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ѓ
Dsequential_9/simple_rnn_39/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЙsequential_9_simple_rnn_39_while_tensorarrayv2read_tensorlistgetitem_sequential_9_simple_rnn_39_tensorarrayunstack_tensorlistfromtensor_0,sequential_9_simple_rnn_39_while_placeholder[sequential_9/simple_rnn_39/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ў
Fsequential_9/simple_rnn_39/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpQsequential_9_simple_rnn_39_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Р
7sequential_9/simple_rnn_39/while/simple_rnn_cell/MatMulMatMulKsequential_9/simple_rnn_39/while/TensorArrayV2Read/TensorListGetItem:item:0Nsequential_9/simple_rnn_39/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€÷
Gsequential_9/simple_rnn_39/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpRsequential_9_simple_rnn_39_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Й
8sequential_9/simple_rnn_39/while/simple_rnn_cell/BiasAddBiasAddAsequential_9/simple_rnn_39/while/simple_rnn_cell/MatMul:product:0Osequential_9/simple_rnn_39/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€№
Hsequential_9/simple_rnn_39/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpSsequential_9_simple_rnn_39_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0ч
9sequential_9/simple_rnn_39/while/simple_rnn_cell/MatMul_1MatMul.sequential_9_simple_rnn_39_while_placeholder_2Psequential_9/simple_rnn_39/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ч
4sequential_9/simple_rnn_39/while/simple_rnn_cell/addAddV2Asequential_9/simple_rnn_39/while/simple_rnn_cell/BiasAdd:output:0Csequential_9/simple_rnn_39/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€©
5sequential_9/simple_rnn_39/while/simple_rnn_cell/TanhTanh8sequential_9/simple_rnn_39/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€Н
Ksequential_9/simple_rnn_39/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : џ
Esequential_9/simple_rnn_39/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem.sequential_9_simple_rnn_39_while_placeholder_1Tsequential_9/simple_rnn_39/while/TensorArrayV2Write/TensorListSetItem/index:output:09sequential_9/simple_rnn_39/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“h
&sequential_9/simple_rnn_39/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :≠
$sequential_9/simple_rnn_39/while/addAddV2,sequential_9_simple_rnn_39_while_placeholder/sequential_9/simple_rnn_39/while/add/y:output:0*
T0*
_output_shapes
: j
(sequential_9/simple_rnn_39/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :”
&sequential_9/simple_rnn_39/while/add_1AddV2Nsequential_9_simple_rnn_39_while_sequential_9_simple_rnn_39_while_loop_counter1sequential_9/simple_rnn_39/while/add_1/y:output:0*
T0*
_output_shapes
: ™
)sequential_9/simple_rnn_39/while/IdentityIdentity*sequential_9/simple_rnn_39/while/add_1:z:0&^sequential_9/simple_rnn_39/while/NoOp*
T0*
_output_shapes
: ÷
+sequential_9/simple_rnn_39/while/Identity_1IdentityTsequential_9_simple_rnn_39_while_sequential_9_simple_rnn_39_while_maximum_iterations&^sequential_9/simple_rnn_39/while/NoOp*
T0*
_output_shapes
: ™
+sequential_9/simple_rnn_39/while/Identity_2Identity(sequential_9/simple_rnn_39/while/add:z:0&^sequential_9/simple_rnn_39/while/NoOp*
T0*
_output_shapes
: „
+sequential_9/simple_rnn_39/while/Identity_3IdentityUsequential_9/simple_rnn_39/while/TensorArrayV2Write/TensorListSetItem:output_handle:0&^sequential_9/simple_rnn_39/while/NoOp*
T0*
_output_shapes
: ћ
+sequential_9/simple_rnn_39/while/Identity_4Identity9sequential_9/simple_rnn_39/while/simple_rnn_cell/Tanh:y:0&^sequential_9/simple_rnn_39/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€°
%sequential_9/simple_rnn_39/while/NoOpNoOpH^sequential_9/simple_rnn_39/while/simple_rnn_cell/BiasAdd/ReadVariableOpG^sequential_9/simple_rnn_39/while/simple_rnn_cell/MatMul/ReadVariableOpI^sequential_9/simple_rnn_39/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "_
)sequential_9_simple_rnn_39_while_identity2sequential_9/simple_rnn_39/while/Identity:output:0"c
+sequential_9_simple_rnn_39_while_identity_14sequential_9/simple_rnn_39/while/Identity_1:output:0"c
+sequential_9_simple_rnn_39_while_identity_24sequential_9/simple_rnn_39/while/Identity_2:output:0"c
+sequential_9_simple_rnn_39_while_identity_34sequential_9/simple_rnn_39/while/Identity_3:output:0"c
+sequential_9_simple_rnn_39_while_identity_44sequential_9/simple_rnn_39/while/Identity_4:output:0"Ь
Ksequential_9_simple_rnn_39_while_sequential_9_simple_rnn_39_strided_slice_1Msequential_9_simple_rnn_39_while_sequential_9_simple_rnn_39_strided_slice_1_0"¶
Psequential_9_simple_rnn_39_while_simple_rnn_cell_biasadd_readvariableop_resourceRsequential_9_simple_rnn_39_while_simple_rnn_cell_biasadd_readvariableop_resource_0"®
Qsequential_9_simple_rnn_39_while_simple_rnn_cell_matmul_1_readvariableop_resourceSsequential_9_simple_rnn_39_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"§
Osequential_9_simple_rnn_39_while_simple_rnn_cell_matmul_readvariableop_resourceQsequential_9_simple_rnn_39_while_simple_rnn_cell_matmul_readvariableop_resource_0"Ц
Зsequential_9_simple_rnn_39_while_tensorarrayv2read_tensorlistgetitem_sequential_9_simple_rnn_39_tensorarrayunstack_tensorlistfromtensorЙsequential_9_simple_rnn_39_while_tensorarrayv2read_tensorlistgetitem_sequential_9_simple_rnn_39_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2Т
Gsequential_9/simple_rnn_39/while/simple_rnn_cell/BiasAdd/ReadVariableOpGsequential_9/simple_rnn_39/while/simple_rnn_cell/BiasAdd/ReadVariableOp2Р
Fsequential_9/simple_rnn_39/while/simple_rnn_cell/MatMul/ReadVariableOpFsequential_9/simple_rnn_39/while/simple_rnn_cell/MatMul/ReadVariableOp2Ф
Hsequential_9/simple_rnn_39/while/simple_rnn_cell/MatMul_1/ReadVariableOpHsequential_9/simple_rnn_39/while/simple_rnn_cell/MatMul_1/ReadVariableOp:e a

_output_shapes
: 
G
_user_specified_name/-sequential_9/simple_rnn_39/while/loop_counter:kg

_output_shapes
: 
M
_user_specified_name53sequential_9/simple_rnn_39/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:b^

_output_shapes
: 
D
_user_specified_name,*sequential_9/simple_rnn_39/strided_slice_1:zv

_output_shapes
: 
\
_user_specified_nameDBsequential_9/simple_rnn_39/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
Є
O
#__inference__update_step_xla_983686
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:: *
	_noinline(:H D

_output_shapes

:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
т=
≤
I__inference_simple_rnn_38_layer_call_and_return_conditional_losses_984967
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
identityИҐ&simple_rnn_cell/BiasAdd/ReadVariableOpҐ%simple_rnn_cell/MatMul/ReadVariableOpҐ'simple_rnn_cell/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskФ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ы
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ш
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Х
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : µ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_984901*
condR
while_cond_984900*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€•
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
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
п
Х
(__inference_dense_9_layer_call_fn_985730

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_982890o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:&"
 
_user_specified_name985724:&"
 
_user_specified_name985726
М
Ў
0__inference_simple_rnn_cell_layer_call_fn_985892

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
identity

identity_1ИҐStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_981946o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_0:&"
 
_user_specified_name985882:&"
 
_user_specified_name985884:&"
 
_user_specified_name985886
Ш/
ґ
while_body_983305
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:C
5while_simple_rnn_cell_biasadd_readvariableop_resource:H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐ,while/simple_rnn_cell/BiasAdd/ReadVariableOpҐ+while/simple_rnn_cell/MatMul/ReadVariableOpҐ-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ґ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0њ
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Є
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¶
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€µ

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
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2\
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
:€€€€€€€€€:GC
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
ь-
ґ
while_body_985009
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:C
5while_simple_rnn_cell_biasadd_readvariableop_resource:H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐ,while/simple_rnn_cell/BiasAdd/ReadVariableOpҐ+while/simple_rnn_cell/MatMul/ReadVariableOpҐ-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ґ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0њ
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Є
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¶
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€«
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€µ

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
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2\
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
:€€€€€€€€€:GC
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
КH
д
,sequential_9_simple_rnn_36_while_body_980818R
Nsequential_9_simple_rnn_36_while_sequential_9_simple_rnn_36_while_loop_counterX
Tsequential_9_simple_rnn_36_while_sequential_9_simple_rnn_36_while_maximum_iterations0
,sequential_9_simple_rnn_36_while_placeholder2
.sequential_9_simple_rnn_36_while_placeholder_12
.sequential_9_simple_rnn_36_while_placeholder_2Q
Msequential_9_simple_rnn_36_while_sequential_9_simple_rnn_36_strided_slice_1_0О
Йsequential_9_simple_rnn_36_while_tensorarrayv2read_tensorlistgetitem_sequential_9_simple_rnn_36_tensorarrayunstack_tensorlistfromtensor_0c
Qsequential_9_simple_rnn_36_while_simple_rnn_cell_matmul_readvariableop_resource_0:`
Rsequential_9_simple_rnn_36_while_simple_rnn_cell_biasadd_readvariableop_resource_0:e
Ssequential_9_simple_rnn_36_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:-
)sequential_9_simple_rnn_36_while_identity/
+sequential_9_simple_rnn_36_while_identity_1/
+sequential_9_simple_rnn_36_while_identity_2/
+sequential_9_simple_rnn_36_while_identity_3/
+sequential_9_simple_rnn_36_while_identity_4O
Ksequential_9_simple_rnn_36_while_sequential_9_simple_rnn_36_strided_slice_1М
Зsequential_9_simple_rnn_36_while_tensorarrayv2read_tensorlistgetitem_sequential_9_simple_rnn_36_tensorarrayunstack_tensorlistfromtensora
Osequential_9_simple_rnn_36_while_simple_rnn_cell_matmul_readvariableop_resource:^
Psequential_9_simple_rnn_36_while_simple_rnn_cell_biasadd_readvariableop_resource:c
Qsequential_9_simple_rnn_36_while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐGsequential_9/simple_rnn_36/while/simple_rnn_cell/BiasAdd/ReadVariableOpҐFsequential_9/simple_rnn_36/while/simple_rnn_cell/MatMul/ReadVariableOpҐHsequential_9/simple_rnn_36/while/simple_rnn_cell/MatMul_1/ReadVariableOp£
Rsequential_9/simple_rnn_36/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ѓ
Dsequential_9/simple_rnn_36/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЙsequential_9_simple_rnn_36_while_tensorarrayv2read_tensorlistgetitem_sequential_9_simple_rnn_36_tensorarrayunstack_tensorlistfromtensor_0,sequential_9_simple_rnn_36_while_placeholder[sequential_9/simple_rnn_36/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ў
Fsequential_9/simple_rnn_36/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpQsequential_9_simple_rnn_36_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Р
7sequential_9/simple_rnn_36/while/simple_rnn_cell/MatMulMatMulKsequential_9/simple_rnn_36/while/TensorArrayV2Read/TensorListGetItem:item:0Nsequential_9/simple_rnn_36/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€÷
Gsequential_9/simple_rnn_36/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpRsequential_9_simple_rnn_36_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Й
8sequential_9/simple_rnn_36/while/simple_rnn_cell/BiasAddBiasAddAsequential_9/simple_rnn_36/while/simple_rnn_cell/MatMul:product:0Osequential_9/simple_rnn_36/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€№
Hsequential_9/simple_rnn_36/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpSsequential_9_simple_rnn_36_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0ч
9sequential_9/simple_rnn_36/while/simple_rnn_cell/MatMul_1MatMul.sequential_9_simple_rnn_36_while_placeholder_2Psequential_9/simple_rnn_36/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ч
4sequential_9/simple_rnn_36/while/simple_rnn_cell/addAddV2Asequential_9/simple_rnn_36/while/simple_rnn_cell/BiasAdd:output:0Csequential_9/simple_rnn_36/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€©
5sequential_9/simple_rnn_36/while/simple_rnn_cell/TanhTanh8sequential_9/simple_rnn_36/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€≥
Esequential_9/simple_rnn_36/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem.sequential_9_simple_rnn_36_while_placeholder_1,sequential_9_simple_rnn_36_while_placeholder9sequential_9/simple_rnn_36/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“h
&sequential_9/simple_rnn_36/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :≠
$sequential_9/simple_rnn_36/while/addAddV2,sequential_9_simple_rnn_36_while_placeholder/sequential_9/simple_rnn_36/while/add/y:output:0*
T0*
_output_shapes
: j
(sequential_9/simple_rnn_36/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :”
&sequential_9/simple_rnn_36/while/add_1AddV2Nsequential_9_simple_rnn_36_while_sequential_9_simple_rnn_36_while_loop_counter1sequential_9/simple_rnn_36/while/add_1/y:output:0*
T0*
_output_shapes
: ™
)sequential_9/simple_rnn_36/while/IdentityIdentity*sequential_9/simple_rnn_36/while/add_1:z:0&^sequential_9/simple_rnn_36/while/NoOp*
T0*
_output_shapes
: ÷
+sequential_9/simple_rnn_36/while/Identity_1IdentityTsequential_9_simple_rnn_36_while_sequential_9_simple_rnn_36_while_maximum_iterations&^sequential_9/simple_rnn_36/while/NoOp*
T0*
_output_shapes
: ™
+sequential_9/simple_rnn_36/while/Identity_2Identity(sequential_9/simple_rnn_36/while/add:z:0&^sequential_9/simple_rnn_36/while/NoOp*
T0*
_output_shapes
: „
+sequential_9/simple_rnn_36/while/Identity_3IdentityUsequential_9/simple_rnn_36/while/TensorArrayV2Write/TensorListSetItem:output_handle:0&^sequential_9/simple_rnn_36/while/NoOp*
T0*
_output_shapes
: ћ
+sequential_9/simple_rnn_36/while/Identity_4Identity9sequential_9/simple_rnn_36/while/simple_rnn_cell/Tanh:y:0&^sequential_9/simple_rnn_36/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€°
%sequential_9/simple_rnn_36/while/NoOpNoOpH^sequential_9/simple_rnn_36/while/simple_rnn_cell/BiasAdd/ReadVariableOpG^sequential_9/simple_rnn_36/while/simple_rnn_cell/MatMul/ReadVariableOpI^sequential_9/simple_rnn_36/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "_
)sequential_9_simple_rnn_36_while_identity2sequential_9/simple_rnn_36/while/Identity:output:0"c
+sequential_9_simple_rnn_36_while_identity_14sequential_9/simple_rnn_36/while/Identity_1:output:0"c
+sequential_9_simple_rnn_36_while_identity_24sequential_9/simple_rnn_36/while/Identity_2:output:0"c
+sequential_9_simple_rnn_36_while_identity_34sequential_9/simple_rnn_36/while/Identity_3:output:0"c
+sequential_9_simple_rnn_36_while_identity_44sequential_9/simple_rnn_36/while/Identity_4:output:0"Ь
Ksequential_9_simple_rnn_36_while_sequential_9_simple_rnn_36_strided_slice_1Msequential_9_simple_rnn_36_while_sequential_9_simple_rnn_36_strided_slice_1_0"¶
Psequential_9_simple_rnn_36_while_simple_rnn_cell_biasadd_readvariableop_resourceRsequential_9_simple_rnn_36_while_simple_rnn_cell_biasadd_readvariableop_resource_0"®
Qsequential_9_simple_rnn_36_while_simple_rnn_cell_matmul_1_readvariableop_resourceSsequential_9_simple_rnn_36_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"§
Osequential_9_simple_rnn_36_while_simple_rnn_cell_matmul_readvariableop_resourceQsequential_9_simple_rnn_36_while_simple_rnn_cell_matmul_readvariableop_resource_0"Ц
Зsequential_9_simple_rnn_36_while_tensorarrayv2read_tensorlistgetitem_sequential_9_simple_rnn_36_tensorarrayunstack_tensorlistfromtensorЙsequential_9_simple_rnn_36_while_tensorarrayv2read_tensorlistgetitem_sequential_9_simple_rnn_36_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2Т
Gsequential_9/simple_rnn_36/while/simple_rnn_cell/BiasAdd/ReadVariableOpGsequential_9/simple_rnn_36/while/simple_rnn_cell/BiasAdd/ReadVariableOp2Р
Fsequential_9/simple_rnn_36/while/simple_rnn_cell/MatMul/ReadVariableOpFsequential_9/simple_rnn_36/while/simple_rnn_cell/MatMul/ReadVariableOp2Ф
Hsequential_9/simple_rnn_36/while/simple_rnn_cell/MatMul_1/ReadVariableOpHsequential_9/simple_rnn_36/while/simple_rnn_cell/MatMul_1/ReadVariableOp:e a

_output_shapes
: 
G
_user_specified_name/-sequential_9/simple_rnn_36/while/loop_counter:kg

_output_shapes
: 
M
_user_specified_name53sequential_9/simple_rnn_36/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:b^

_output_shapes
: 
D
_user_specified_name,*sequential_9/simple_rnn_36/strided_slice_1:zv

_output_shapes
: 
\
_user_specified_nameDBsequential_9/simple_rnn_36/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
О
ц
-__inference_sequential_9_layer_call_fn_983425
simple_rnn_36_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:
identityИҐStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_36_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:€€€€€€€€€*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_9_layer_call_and_return_conditional_losses_982897o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:€€€€€€€€€
: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:€€€€€€€€€

-
_user_specified_namesimple_rnn_36_input:&"
 
_user_specified_name983395:&"
 
_user_specified_name983397:&"
 
_user_specified_name983399:&"
 
_user_specified_name983401:&"
 
_user_specified_name983403:&"
 
_user_specified_name983405:&"
 
_user_specified_name983407:&"
 
_user_specified_name983409:&	"
 
_user_specified_name983411:&
"
 
_user_specified_name983413:&"
 
_user_specified_name983415:&"
 
_user_specified_name983417:&"
 
_user_specified_name983419:&"
 
_user_specified_name983421
∆4
Ф
I__inference_simple_rnn_38_layer_call_and_return_conditional_losses_981903

inputs(
simple_rnn_cell_981828:$
simple_rnn_cell_981830:(
simple_rnn_cell_981832:
identityИҐ'simple_rnn_cell/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskа
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_981828simple_rnn_cell_981830simple_rnn_cell_981832*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_981827n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : к
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_981828simple_rnn_cell_981830simple_rnn_cell_981832*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_981840*
condR
while_cond_981839*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€T
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:&"
 
_user_specified_name981828:&"
 
_user_specified_name981830:&"
 
_user_specified_name981832
М
Ў
0__inference_simple_rnn_cell_layer_call_fn_985830

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
identity

identity_1ИҐStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_981658o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_0:&"
 
_user_specified_name985820:&"
 
_user_specified_name985822:&"
 
_user_specified_name985824
Й	
Ї
.__inference_simple_rnn_36_layer_call_fn_983723
inputs_0
unknown:
	unknown_0:
	unknown_1:
identityИҐStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_simple_rnn_36_layer_call_and_return_conditional_losses_981446|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:&"
 
_user_specified_name983715:&"
 
_user_specified_name983717:&"
 
_user_specified_name983719
п"
√
while_body_981264
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_simple_rnn_cell_981286_0:,
while_simple_rnn_cell_981288_0:0
while_simple_rnn_cell_981290_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_simple_rnn_cell_981286:*
while_simple_rnn_cell_981288:.
while_simple_rnn_cell_981290:ИҐ-while/simple_rnn_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ы
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_981286_0while_simple_rnn_cell_981288_0while_simple_rnn_cell_981290_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_981251я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: У
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€X

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_981286while_simple_rnn_cell_981286_0">
while_simple_rnn_cell_981288while_simple_rnn_cell_981288_0">
while_simple_rnn_cell_981290while_simple_rnn_cell_981290_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2^
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
:€€€€€€€€€:GC
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
 
_user_specified_name981286:&"
 
_user_specified_name981288:&	"
 
_user_specified_name981290
Џ
и
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985864

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€G
TanhTanhadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
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
Ї>
∞
I__inference_simple_rnn_39_layer_call_and_return_conditional_losses_982860

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
identityИҐ&simple_rnn_cell/BiasAdd/ReadVariableOpҐ%simple_rnn_cell/MatMul/ReadVariableOpҐ'simple_rnn_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskФ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ы
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ш
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Х
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : µ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_982793*
condR
while_cond_982792*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€•
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€

 
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
й
d
F__inference_dropout_38_layer_call_and_return_conditional_losses_985210

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€
_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€
"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
і
G
+__inference_dropout_36_layer_call_fn_984187

inputs
identityЄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_36_layer_call_and_return_conditional_losses_983019d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
У
Ђ
,sequential_9_simple_rnn_37_while_cond_980922R
Nsequential_9_simple_rnn_37_while_sequential_9_simple_rnn_37_while_loop_counterX
Tsequential_9_simple_rnn_37_while_sequential_9_simple_rnn_37_while_maximum_iterations0
,sequential_9_simple_rnn_37_while_placeholder2
.sequential_9_simple_rnn_37_while_placeholder_12
.sequential_9_simple_rnn_37_while_placeholder_2T
Psequential_9_simple_rnn_37_while_less_sequential_9_simple_rnn_37_strided_slice_1j
fsequential_9_simple_rnn_37_while_sequential_9_simple_rnn_37_while_cond_980922___redundant_placeholder0j
fsequential_9_simple_rnn_37_while_sequential_9_simple_rnn_37_while_cond_980922___redundant_placeholder1j
fsequential_9_simple_rnn_37_while_sequential_9_simple_rnn_37_while_cond_980922___redundant_placeholder2j
fsequential_9_simple_rnn_37_while_sequential_9_simple_rnn_37_while_cond_980922___redundant_placeholder3-
)sequential_9_simple_rnn_37_while_identity
ќ
%sequential_9/simple_rnn_37/while/LessLess,sequential_9_simple_rnn_37_while_placeholderPsequential_9_simple_rnn_37_while_less_sequential_9_simple_rnn_37_strided_slice_1*
T0*
_output_shapes
: Б
)sequential_9/simple_rnn_37/while/IdentityIdentity)sequential_9/simple_rnn_37/while/Less:z:0*
T0
*
_output_shapes
: "_
)sequential_9_simple_rnn_37_while_identity2sequential_9/simple_rnn_37/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :€€€€€€€€€: :::::e a

_output_shapes
: 
G
_user_specified_name/-sequential_9/simple_rnn_37/while/loop_counter:kg

_output_shapes
: 
M
_user_specified_name53sequential_9/simple_rnn_37/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:b^

_output_shapes
: 
D
_user_specified_name,*sequential_9/simple_rnn_37/strided_slice_1:

_output_shapes
:
з
™
while_cond_985116
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_985116___redundant_placeholder04
0while_while_cond_985116___redundant_placeholder14
0while_while_cond_985116___redundant_placeholder24
0while_while_cond_985116___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ђ
K
#__inference__update_step_xla_983701
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
Ї>
∞
I__inference_simple_rnn_39_layer_call_and_return_conditional_losses_983372

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
identityИҐ&simple_rnn_cell/BiasAdd/ReadVariableOpҐ%simple_rnn_cell/MatMul/ReadVariableOpҐ'simple_rnn_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskФ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ы
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ш
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Х
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : µ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_983305*
condR
while_cond_983304*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€•
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€

 
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
‘
ж
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_981251

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€G
TanhTanhadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
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
Ш/
ґ
while_body_985407
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:C
5while_simple_rnn_cell_biasadd_readvariableop_resource:H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐ,while/simple_rnn_cell/BiasAdd/ReadVariableOpҐ+while/simple_rnn_cell/MatMul/ReadVariableOpҐ-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ґ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0њ
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Є
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¶
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€µ

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
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2\
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
:€€€€€€€€€:GC
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
ґ

e
F__inference_dropout_36_layer_call_and_return_conditional_losses_984199

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€
Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕР
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€
*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>™
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€
T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ч
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€
e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:€€€€€€€€€
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
з
™
while_cond_984110
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_984110___redundant_placeholder04
0while_while_cond_984110___redundant_placeholder14
0while_while_cond_984110___redundant_placeholder24
0while_while_cond_984110___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
з
™
while_cond_982249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_982249___redundant_placeholder04
0while_while_cond_982249___redundant_placeholder14
0while_while_cond_982249___redundant_placeholder24
0while_while_cond_982249___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
М
Ў
0__inference_simple_rnn_cell_layer_call_fn_985754

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
identity

identity_1ИҐStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_981251o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_0:&"
 
_user_specified_name985744:&"
 
_user_specified_name985746:&"
 
_user_specified_name985748
з
™
while_cond_985516
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_985516___redundant_placeholder04
0while_while_cond_985516___redundant_placeholder14
0while_while_cond_985516___redundant_placeholder24
0while_while_cond_985516___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
∆4
Ф
I__inference_simple_rnn_38_layer_call_and_return_conditional_losses_982022

inputs(
simple_rnn_cell_981947:$
simple_rnn_cell_981949:(
simple_rnn_cell_981951:
identityИҐ'simple_rnn_cell/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskа
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_981947simple_rnn_cell_981949simple_rnn_cell_981951*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_981946n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : к
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_981947simple_rnn_cell_981949simple_rnn_cell_981951*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_981959*
condR
while_cond_981958*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€T
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:&"
 
_user_specified_name981947:&"
 
_user_specified_name981949:&"
 
_user_specified_name981951
Є
O
#__inference__update_step_xla_983696
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:: *
	_noinline(:H D

_output_shapes

:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
М
Ў
0__inference_simple_rnn_cell_layer_call_fn_985816

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
identity

identity_1ИҐStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_981539o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_0:&"
 
_user_specified_name985806:&"
 
_user_specified_name985808:&"
 
_user_specified_name985810
Ш/
ґ
while_body_985517
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:C
5while_simple_rnn_cell_biasadd_readvariableop_resource:H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐ,while/simple_rnn_cell/BiasAdd/ReadVariableOpҐ+while/simple_rnn_cell/MatMul/ReadVariableOpҐ-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ґ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0њ
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Є
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¶
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€µ

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
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2\
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
:€€€€€€€€€:GC
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
з
™
while_cond_982128
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_982128___redundant_placeholder04
0while_while_cond_982128___redundant_placeholder14
0while_while_cond_982128___redundant_placeholder24
0while_while_cond_982128___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
‘
ж
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_982236

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€G
TanhTanhadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
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
‘
ж
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_981946

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€G
TanhTanhadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
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
ђ
K
#__inference__update_step_xla_983676
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ц	
ф
C__inference_dense_9_layer_call_and_return_conditional_losses_985740

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ё>
≤
I__inference_simple_rnn_39_layer_call_and_return_conditional_losses_985474
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
identityИҐ&simple_rnn_cell/BiasAdd/ReadVariableOpҐ%simple_rnn_cell/MatMul/ReadVariableOpҐ'simple_rnn_cell/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskФ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ы
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ш
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Х
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : µ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_985407*
condR
while_cond_985406*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€•
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
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
М
Ў
0__inference_simple_rnn_cell_layer_call_fn_985954

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
identity

identity_1ИҐStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_982236o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_0:&"
 
_user_specified_name985944:&"
 
_user_specified_name985946:&"
 
_user_specified_name985948
∆4
Ф
I__inference_simple_rnn_37_layer_call_and_return_conditional_losses_981615

inputs(
simple_rnn_cell_981540:$
simple_rnn_cell_981542:(
simple_rnn_cell_981544:
identityИҐ'simple_rnn_cell/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskа
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_981540simple_rnn_cell_981542simple_rnn_cell_981544*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_981539n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : к
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_981540simple_rnn_cell_981542simple_rnn_cell_981544*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_981552*
condR
while_cond_981551*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€T
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:&"
 
_user_specified_name981540:&"
 
_user_specified_name981542:&"
 
_user_specified_name981544
з
™
while_cond_981839
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_981839___redundant_placeholder04
0while_while_cond_981839___redundant_placeholder14
0while_while_cond_981839___redundant_placeholder24
0while_while_cond_981839___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
і=
∞
I__inference_simple_rnn_36_layer_call_and_return_conditional_losses_984177

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
identityИҐ&simple_rnn_cell/BiasAdd/ReadVariableOpҐ%simple_rnn_cell/MatMul/ReadVariableOpҐ'simple_rnn_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskФ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ы
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ш
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Х
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : µ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_984111*
condR
while_cond_984110*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€
•
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€

 
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
Џ
и
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985971

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€G
TanhTanhadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
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
й
d
F__inference_dropout_36_layer_call_and_return_conditional_losses_983019

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€
_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€
"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
“
d
+__inference_dropout_39_layer_call_fn_985699

inputs
identityИҐStatefulPartitionedCallƒ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_39_layer_call_and_return_conditional_losses_982879o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
і=
∞
I__inference_simple_rnn_37_layer_call_and_return_conditional_losses_984680

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
identityИҐ&simple_rnn_cell/BiasAdd/ReadVariableOpҐ%simple_rnn_cell/MatMul/ReadVariableOpҐ'simple_rnn_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskФ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ы
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ш
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Х
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : µ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_984614*
condR
while_cond_984613*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€
•
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€

 
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
‘
ж
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_981658

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€G
TanhTanhadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
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
ґ

e
F__inference_dropout_38_layer_call_and_return_conditional_losses_982749

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€
Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕР
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€
*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>™
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€
T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ч
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€
e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:€€€€€€€€€
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
Ъ

e
F__inference_dropout_39_layer_call_and_return_conditional_losses_982879

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕМ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
з
™
while_cond_983894
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_983894___redundant_placeholder04
0while_while_cond_983894___redundant_placeholder14
0while_while_cond_983894___redundant_placeholder24
0while_while_cond_983894___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
О
ц
-__inference_sequential_9_layer_call_fn_983458
simple_rnn_36_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:
identityИҐStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_36_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:€€€€€€€€€*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_9_layer_call_and_return_conditional_losses_983392o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:€€€€€€€€€
: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:€€€€€€€€€

-
_user_specified_namesimple_rnn_36_input:&"
 
_user_specified_name983428:&"
 
_user_specified_name983430:&"
 
_user_specified_name983432:&"
 
_user_specified_name983434:&"
 
_user_specified_name983436:&"
 
_user_specified_name983438:&"
 
_user_specified_name983440:&"
 
_user_specified_name983442:&	"
 
_user_specified_name983444:&
"
 
_user_specified_name983446:&"
 
_user_specified_name983448:&"
 
_user_specified_name983450:&"
 
_user_specified_name983452:&"
 
_user_specified_name983454
ел
ы#
"__inference__traced_restore_986442
file_prefix1
assignvariableop_dense_9_kernel:-
assignvariableop_1_dense_9_bias:I
7assignvariableop_2_simple_rnn_36_simple_rnn_cell_kernel:S
Aassignvariableop_3_simple_rnn_36_simple_rnn_cell_recurrent_kernel:C
5assignvariableop_4_simple_rnn_36_simple_rnn_cell_bias:I
7assignvariableop_5_simple_rnn_37_simple_rnn_cell_kernel:S
Aassignvariableop_6_simple_rnn_37_simple_rnn_cell_recurrent_kernel:C
5assignvariableop_7_simple_rnn_37_simple_rnn_cell_bias:I
7assignvariableop_8_simple_rnn_38_simple_rnn_cell_kernel:S
Aassignvariableop_9_simple_rnn_38_simple_rnn_cell_recurrent_kernel:D
6assignvariableop_10_simple_rnn_38_simple_rnn_cell_bias:J
8assignvariableop_11_simple_rnn_39_simple_rnn_cell_kernel:T
Bassignvariableop_12_simple_rnn_39_simple_rnn_cell_recurrent_kernel:D
6assignvariableop_13_simple_rnn_39_simple_rnn_cell_bias:'
assignvariableop_14_iteration:	 +
!assignvariableop_15_learning_rate: ,
"assignvariableop_16_nadam_variable: R
@assignvariableop_17_nadam_m_simple_rnn_36_simple_rnn_cell_kernel:R
@assignvariableop_18_nadam_v_simple_rnn_36_simple_rnn_cell_kernel:\
Jassignvariableop_19_nadam_m_simple_rnn_36_simple_rnn_cell_recurrent_kernel:\
Jassignvariableop_20_nadam_v_simple_rnn_36_simple_rnn_cell_recurrent_kernel:L
>assignvariableop_21_nadam_m_simple_rnn_36_simple_rnn_cell_bias:L
>assignvariableop_22_nadam_v_simple_rnn_36_simple_rnn_cell_bias:R
@assignvariableop_23_nadam_m_simple_rnn_37_simple_rnn_cell_kernel:R
@assignvariableop_24_nadam_v_simple_rnn_37_simple_rnn_cell_kernel:\
Jassignvariableop_25_nadam_m_simple_rnn_37_simple_rnn_cell_recurrent_kernel:\
Jassignvariableop_26_nadam_v_simple_rnn_37_simple_rnn_cell_recurrent_kernel:L
>assignvariableop_27_nadam_m_simple_rnn_37_simple_rnn_cell_bias:L
>assignvariableop_28_nadam_v_simple_rnn_37_simple_rnn_cell_bias:R
@assignvariableop_29_nadam_m_simple_rnn_38_simple_rnn_cell_kernel:R
@assignvariableop_30_nadam_v_simple_rnn_38_simple_rnn_cell_kernel:\
Jassignvariableop_31_nadam_m_simple_rnn_38_simple_rnn_cell_recurrent_kernel:\
Jassignvariableop_32_nadam_v_simple_rnn_38_simple_rnn_cell_recurrent_kernel:L
>assignvariableop_33_nadam_m_simple_rnn_38_simple_rnn_cell_bias:L
>assignvariableop_34_nadam_v_simple_rnn_38_simple_rnn_cell_bias:R
@assignvariableop_35_nadam_m_simple_rnn_39_simple_rnn_cell_kernel:R
@assignvariableop_36_nadam_v_simple_rnn_39_simple_rnn_cell_kernel:\
Jassignvariableop_37_nadam_m_simple_rnn_39_simple_rnn_cell_recurrent_kernel:\
Jassignvariableop_38_nadam_v_simple_rnn_39_simple_rnn_cell_recurrent_kernel:L
>assignvariableop_39_nadam_m_simple_rnn_39_simple_rnn_cell_bias:L
>assignvariableop_40_nadam_v_simple_rnn_39_simple_rnn_cell_bias:<
*assignvariableop_41_nadam_m_dense_9_kernel:<
*assignvariableop_42_nadam_v_dense_9_kernel:6
(assignvariableop_43_nadam_m_dense_9_bias:6
(assignvariableop_44_nadam_v_dense_9_bias:#
assignvariableop_45_total: #
assignvariableop_46_count: 
identity_48ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9И
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*Ѓ
value§B°0B6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB/optimizer/_u_product/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH–
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*s
valuejBh0B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B С
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*÷
_output_shapes√
ј::::::::::::::::::::::::::::::::::::::::::::::::*>
dtypes4
220	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOpAssignVariableOpassignvariableop_dense_9_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:ґ
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_9_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_2AssignVariableOp7assignvariableop_2_simple_rnn_36_simple_rnn_cell_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_3AssignVariableOpAassignvariableop_3_simple_rnn_36_simple_rnn_cell_recurrent_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_4AssignVariableOp5assignvariableop_4_simple_rnn_36_simple_rnn_cell_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_5AssignVariableOp7assignvariableop_5_simple_rnn_37_simple_rnn_cell_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_6AssignVariableOpAassignvariableop_6_simple_rnn_37_simple_rnn_cell_recurrent_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_7AssignVariableOp5assignvariableop_7_simple_rnn_37_simple_rnn_cell_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_8AssignVariableOp7assignvariableop_8_simple_rnn_38_simple_rnn_cell_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_9AssignVariableOpAassignvariableop_9_simple_rnn_38_simple_rnn_cell_recurrent_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_10AssignVariableOp6assignvariableop_10_simple_rnn_38_simple_rnn_cell_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:—
AssignVariableOp_11AssignVariableOp8assignvariableop_11_simple_rnn_39_simple_rnn_cell_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_12AssignVariableOpBassignvariableop_12_simple_rnn_39_simple_rnn_cell_recurrent_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_13AssignVariableOp6assignvariableop_13_simple_rnn_39_simple_rnn_cell_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:ґ
AssignVariableOp_14AssignVariableOpassignvariableop_14_iterationIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_15AssignVariableOp!assignvariableop_15_learning_rateIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_16AssignVariableOp"assignvariableop_16_nadam_variableIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_17AssignVariableOp@assignvariableop_17_nadam_m_simple_rnn_36_simple_rnn_cell_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_18AssignVariableOp@assignvariableop_18_nadam_v_simple_rnn_36_simple_rnn_cell_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_19AssignVariableOpJassignvariableop_19_nadam_m_simple_rnn_36_simple_rnn_cell_recurrent_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_20AssignVariableOpJassignvariableop_20_nadam_v_simple_rnn_36_simple_rnn_cell_recurrent_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:„
AssignVariableOp_21AssignVariableOp>assignvariableop_21_nadam_m_simple_rnn_36_simple_rnn_cell_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:„
AssignVariableOp_22AssignVariableOp>assignvariableop_22_nadam_v_simple_rnn_36_simple_rnn_cell_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_23AssignVariableOp@assignvariableop_23_nadam_m_simple_rnn_37_simple_rnn_cell_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_24AssignVariableOp@assignvariableop_24_nadam_v_simple_rnn_37_simple_rnn_cell_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_25AssignVariableOpJassignvariableop_25_nadam_m_simple_rnn_37_simple_rnn_cell_recurrent_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_26AssignVariableOpJassignvariableop_26_nadam_v_simple_rnn_37_simple_rnn_cell_recurrent_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:„
AssignVariableOp_27AssignVariableOp>assignvariableop_27_nadam_m_simple_rnn_37_simple_rnn_cell_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:„
AssignVariableOp_28AssignVariableOp>assignvariableop_28_nadam_v_simple_rnn_37_simple_rnn_cell_biasIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_29AssignVariableOp@assignvariableop_29_nadam_m_simple_rnn_38_simple_rnn_cell_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_30AssignVariableOp@assignvariableop_30_nadam_v_simple_rnn_38_simple_rnn_cell_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_31AssignVariableOpJassignvariableop_31_nadam_m_simple_rnn_38_simple_rnn_cell_recurrent_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_32AssignVariableOpJassignvariableop_32_nadam_v_simple_rnn_38_simple_rnn_cell_recurrent_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:„
AssignVariableOp_33AssignVariableOp>assignvariableop_33_nadam_m_simple_rnn_38_simple_rnn_cell_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:„
AssignVariableOp_34AssignVariableOp>assignvariableop_34_nadam_v_simple_rnn_38_simple_rnn_cell_biasIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_35AssignVariableOp@assignvariableop_35_nadam_m_simple_rnn_39_simple_rnn_cell_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_36AssignVariableOp@assignvariableop_36_nadam_v_simple_rnn_39_simple_rnn_cell_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_37AssignVariableOpJassignvariableop_37_nadam_m_simple_rnn_39_simple_rnn_cell_recurrent_kernelIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_38AssignVariableOpJassignvariableop_38_nadam_v_simple_rnn_39_simple_rnn_cell_recurrent_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:„
AssignVariableOp_39AssignVariableOp>assignvariableop_39_nadam_m_simple_rnn_39_simple_rnn_cell_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:„
AssignVariableOp_40AssignVariableOp>assignvariableop_40_nadam_v_simple_rnn_39_simple_rnn_cell_biasIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_41AssignVariableOp*assignvariableop_41_nadam_m_dense_9_kernelIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_42AssignVariableOp*assignvariableop_42_nadam_v_dense_9_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_43AssignVariableOp(assignvariableop_43_nadam_m_dense_9_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_44AssignVariableOp(assignvariableop_44_nadam_v_dense_9_biasIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_45AssignVariableOpassignvariableop_45_totalIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_46AssignVariableOpassignvariableop_46_countIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ў
Identity_47Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_48IdentityIdentity_47:output:0^NoOp_1*
T0*
_output_shapes
: Ґ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_48Identity_48:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:.*
(
_user_specified_namedense_9/kernel:,(
&
_user_specified_namedense_9/bias:D@
>
_user_specified_name&$simple_rnn_36/simple_rnn_cell/kernel:NJ
H
_user_specified_name0.simple_rnn_36/simple_rnn_cell/recurrent_kernel:B>
<
_user_specified_name$"simple_rnn_36/simple_rnn_cell/bias:D@
>
_user_specified_name&$simple_rnn_37/simple_rnn_cell/kernel:NJ
H
_user_specified_name0.simple_rnn_37/simple_rnn_cell/recurrent_kernel:B>
<
_user_specified_name$"simple_rnn_37/simple_rnn_cell/bias:D	@
>
_user_specified_name&$simple_rnn_38/simple_rnn_cell/kernel:N
J
H
_user_specified_name0.simple_rnn_38/simple_rnn_cell/recurrent_kernel:B>
<
_user_specified_name$"simple_rnn_38/simple_rnn_cell/bias:D@
>
_user_specified_name&$simple_rnn_39/simple_rnn_cell/kernel:NJ
H
_user_specified_name0.simple_rnn_39/simple_rnn_cell/recurrent_kernel:B>
<
_user_specified_name$"simple_rnn_39/simple_rnn_cell/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:.*
(
_user_specified_nameNadam/Variable:LH
F
_user_specified_name.,Nadam/m/simple_rnn_36/simple_rnn_cell/kernel:LH
F
_user_specified_name.,Nadam/v/simple_rnn_36/simple_rnn_cell/kernel:VR
P
_user_specified_name86Nadam/m/simple_rnn_36/simple_rnn_cell/recurrent_kernel:VR
P
_user_specified_name86Nadam/v/simple_rnn_36/simple_rnn_cell/recurrent_kernel:JF
D
_user_specified_name,*Nadam/m/simple_rnn_36/simple_rnn_cell/bias:JF
D
_user_specified_name,*Nadam/v/simple_rnn_36/simple_rnn_cell/bias:LH
F
_user_specified_name.,Nadam/m/simple_rnn_37/simple_rnn_cell/kernel:LH
F
_user_specified_name.,Nadam/v/simple_rnn_37/simple_rnn_cell/kernel:VR
P
_user_specified_name86Nadam/m/simple_rnn_37/simple_rnn_cell/recurrent_kernel:VR
P
_user_specified_name86Nadam/v/simple_rnn_37/simple_rnn_cell/recurrent_kernel:JF
D
_user_specified_name,*Nadam/m/simple_rnn_37/simple_rnn_cell/bias:JF
D
_user_specified_name,*Nadam/v/simple_rnn_37/simple_rnn_cell/bias:LH
F
_user_specified_name.,Nadam/m/simple_rnn_38/simple_rnn_cell/kernel:LH
F
_user_specified_name.,Nadam/v/simple_rnn_38/simple_rnn_cell/kernel:V R
P
_user_specified_name86Nadam/m/simple_rnn_38/simple_rnn_cell/recurrent_kernel:V!R
P
_user_specified_name86Nadam/v/simple_rnn_38/simple_rnn_cell/recurrent_kernel:J"F
D
_user_specified_name,*Nadam/m/simple_rnn_38/simple_rnn_cell/bias:J#F
D
_user_specified_name,*Nadam/v/simple_rnn_38/simple_rnn_cell/bias:L$H
F
_user_specified_name.,Nadam/m/simple_rnn_39/simple_rnn_cell/kernel:L%H
F
_user_specified_name.,Nadam/v/simple_rnn_39/simple_rnn_cell/kernel:V&R
P
_user_specified_name86Nadam/m/simple_rnn_39/simple_rnn_cell/recurrent_kernel:V'R
P
_user_specified_name86Nadam/v/simple_rnn_39/simple_rnn_cell/recurrent_kernel:J(F
D
_user_specified_name,*Nadam/m/simple_rnn_39/simple_rnn_cell/bias:J)F
D
_user_specified_name,*Nadam/v/simple_rnn_39/simple_rnn_cell/bias:6*2
0
_user_specified_nameNadam/m/dense_9/kernel:6+2
0
_user_specified_nameNadam/v/dense_9/kernel:4,0
.
_user_specified_nameNadam/m/dense_9/bias:4-0
.
_user_specified_nameNadam/v/dense_9/bias:%.!

_user_specified_nametotal:%/!

_user_specified_namecount
‘
ж
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_981827

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€G
TanhTanhadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
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
т=
≤
I__inference_simple_rnn_38_layer_call_and_return_conditional_losses_984859
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
identityИҐ&simple_rnn_cell/BiasAdd/ReadVariableOpҐ%simple_rnn_cell/MatMul/ReadVariableOpҐ'simple_rnn_cell/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskФ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ы
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ш
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Х
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : µ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_984793*
condR
while_cond_984792*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€•
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
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
т=
≤
I__inference_simple_rnn_36_layer_call_and_return_conditional_losses_983853
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
identityИҐ&simple_rnn_cell/BiasAdd/ReadVariableOpҐ%simple_rnn_cell/MatMul/ReadVariableOpҐ'simple_rnn_cell/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskФ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ы
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ш
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Х
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : µ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_983787*
condR
while_cond_983786*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€•
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
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
М
Ў
0__inference_simple_rnn_cell_layer_call_fn_985940

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
identity

identity_1ИҐStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_982115o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_0:&"
 
_user_specified_name985930:&"
 
_user_specified_name985932:&"
 
_user_specified_name985934
Є
O
#__inference__update_step_xla_983636
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:: *
	_noinline(:H D

_output_shapes

:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
я
Є
.__inference_simple_rnn_38_layer_call_fn_984751

inputs
unknown:
	unknown_0:
	unknown_1:
identityИҐStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_simple_rnn_38_layer_call_and_return_conditional_losses_983249s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs:&"
 
_user_specified_name984743:&"
 
_user_specified_name984745:&"
 
_user_specified_name984747
ь-
ґ
while_body_982664
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:C
5while_simple_rnn_cell_biasadd_readvariableop_resource:H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐ,while/simple_rnn_cell/BiasAdd/ReadVariableOpҐ+while/simple_rnn_cell/MatMul/ReadVariableOpҐ-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ґ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0њ
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Є
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¶
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€«
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€µ

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
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2\
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
:€€€€€€€€€:GC
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
ь-
ґ
while_body_983062
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:C
5while_simple_rnn_cell_biasadd_readvariableop_resource:H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐ,while/simple_rnn_cell/BiasAdd/ReadVariableOpҐ+while/simple_rnn_cell/MatMul/ReadVariableOpҐ-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ґ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0њ
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Є
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¶
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€«
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€µ

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
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2\
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
:€€€€€€€€€:GC
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
‘
ж
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_982115

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€G
TanhTanhadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
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
Џ
и
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985926

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€G
TanhTanhadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
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
ђ
K
#__inference__update_step_xla_983646
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Џ
и
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985802

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€G
TanhTanhadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
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
Й	
Ї
.__inference_simple_rnn_37_layer_call_fn_984226
inputs_0
unknown:
	unknown_0:
	unknown_1:
identityИҐStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_simple_rnn_37_layer_call_and_return_conditional_losses_981734|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:&"
 
_user_specified_name984218:&"
 
_user_specified_name984220:&"
 
_user_specified_name984222
ь-
ґ
while_body_984398
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:C
5while_simple_rnn_cell_biasadd_readvariableop_resource:H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐ,while/simple_rnn_cell/BiasAdd/ReadVariableOpҐ+while/simple_rnn_cell/MatMul/ReadVariableOpҐ-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ґ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0њ
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Є
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¶
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€«
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€µ

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
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2\
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
:€€€€€€€€€:GC
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
§
G
+__inference_dropout_39_layer_call_fn_985704

inputs
identityі
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_39_layer_call_and_return_conditional_losses_983384`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ь-
ґ
while_body_982536
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:C
5while_simple_rnn_cell_biasadd_readvariableop_resource:H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐ,while/simple_rnn_cell/BiasAdd/ReadVariableOpҐ+while/simple_rnn_cell/MatMul/ReadVariableOpҐ-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ґ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0њ
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Є
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¶
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€«
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€µ

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
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2\
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
:€€€€€€€€€:GC
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
Ш/
ґ
while_body_982793
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:C
5while_simple_rnn_cell_biasadd_readvariableop_resource:H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐ,while/simple_rnn_cell/BiasAdd/ReadVariableOpҐ+while/simple_rnn_cell/MatMul/ReadVariableOpҐ-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ґ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0њ
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Є
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¶
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€µ

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
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2\
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
:€€€€€€€€€:GC
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
в
d
+__inference_dropout_36_layer_call_fn_984182

inputs
identityИҐStatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_36_layer_call_and_return_conditional_losses_982493s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
Ъ

e
F__inference_dropout_39_layer_call_and_return_conditional_losses_985716

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕМ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
„
Є
.__inference_simple_rnn_39_layer_call_fn_985243

inputs
unknown:
	unknown_0:
	unknown_1:
identityИҐStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_simple_rnn_39_layer_call_and_return_conditional_losses_982860o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs:&"
 
_user_specified_name985235:&"
 
_user_specified_name985237:&"
 
_user_specified_name985239
ґ

e
F__inference_dropout_38_layer_call_and_return_conditional_losses_985205

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€
Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕР
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€
*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>™
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€
T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ч
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€
e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:€€€€€€€€€
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
і=
∞
I__inference_simple_rnn_36_layer_call_and_return_conditional_losses_984069

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
identityИҐ&simple_rnn_cell/BiasAdd/ReadVariableOpҐ%simple_rnn_cell/MatMul/ReadVariableOpҐ'simple_rnn_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskФ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ы
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ш
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Х
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : µ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_984003*
condR
while_cond_984002*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€
•
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€

 
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
Џ
и
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985847

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€G
TanhTanhadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
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
з
™
while_cond_981670
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_981670___redundant_placeholder04
0while_while_cond_981670___redundant_placeholder14
0while_while_cond_981670___redundant_placeholder24
0while_while_cond_981670___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
й
d
F__inference_dropout_38_layer_call_and_return_conditional_losses_983261

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€
_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€
"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
з
™
while_cond_984900
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_984900___redundant_placeholder04
0while_while_cond_984900___redundant_placeholder14
0while_while_cond_984900___redundant_placeholder24
0while_while_cond_984900___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
і
G
+__inference_dropout_37_layer_call_fn_984690

inputs
identityЄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_983140d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
т=
≤
I__inference_simple_rnn_37_layer_call_and_return_conditional_losses_984464
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
identityИҐ&simple_rnn_cell/BiasAdd/ReadVariableOpҐ%simple_rnn_cell/MatMul/ReadVariableOpҐ'simple_rnn_cell/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskФ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ы
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ш
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Х
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : µ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_984398*
condR
while_cond_984397*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€•
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
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
ђ
K
#__inference__update_step_xla_983691
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
з
™
while_cond_981551
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_981551___redundant_placeholder04
0while_while_cond_981551___redundant_placeholder14
0while_while_cond_981551___redundant_placeholder24
0while_while_cond_981551___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
й
d
F__inference_dropout_36_layer_call_and_return_conditional_losses_984204

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€
_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€
"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
я
Є
.__inference_simple_rnn_37_layer_call_fn_984248

inputs
unknown:
	unknown_0:
	unknown_1:
identityИҐStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_simple_rnn_37_layer_call_and_return_conditional_losses_983128s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs:&"
 
_user_specified_name984240:&"
 
_user_specified_name984242:&"
 
_user_specified_name984244
ь-
ґ
while_body_983183
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:C
5while_simple_rnn_cell_biasadd_readvariableop_resource:H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐ,while/simple_rnn_cell/BiasAdd/ReadVariableOpҐ+while/simple_rnn_cell/MatMul/ReadVariableOpҐ-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ґ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0њ
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Є
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¶
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€«
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€µ

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
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2\
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
:€€€€€€€€€:GC
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
ь-
ґ
while_body_984614
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:C
5while_simple_rnn_cell_biasadd_readvariableop_resource:H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐ,while/simple_rnn_cell/BiasAdd/ReadVariableOpҐ+while/simple_rnn_cell/MatMul/ReadVariableOpҐ-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ґ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0њ
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Є
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¶
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€«
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€µ

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
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2\
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
:€€€€€€€€€:GC
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
Џ
и
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985909

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€G
TanhTanhadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
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
з
™
while_cond_984289
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_984289___redundant_placeholder04
0while_while_cond_984289___redundant_placeholder14
0while_while_cond_984289___redundant_placeholder24
0while_while_cond_984289___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
з
™
while_cond_982940
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_982940___redundant_placeholder04
0while_while_cond_982940___redundant_placeholder14
0while_while_cond_982940___redundant_placeholder24
0while_while_cond_982940___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
в
d
+__inference_dropout_38_layer_call_fn_985188

inputs
identityИҐStatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_38_layer_call_and_return_conditional_losses_982749s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
ь-
ґ
while_body_984901
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:C
5while_simple_rnn_cell_biasadd_readvariableop_resource:H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐ,while/simple_rnn_cell/BiasAdd/ReadVariableOpҐ+while/simple_rnn_cell/MatMul/ReadVariableOpҐ-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ґ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0њ
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Є
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¶
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€«
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€µ

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
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2\
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
:€€€€€€€€€:GC
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
ь-
ґ
while_body_982408
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:C
5while_simple_rnn_cell_biasadd_readvariableop_resource:H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐ,while/simple_rnn_cell/BiasAdd/ReadVariableOpҐ+while/simple_rnn_cell/MatMul/ReadVariableOpҐ-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ґ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0њ
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Є
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¶
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€«
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€µ

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
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2\
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
:€€€€€€€€€:GC
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
п"
√
while_body_981552
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_simple_rnn_cell_981574_0:,
while_simple_rnn_cell_981576_0:0
while_simple_rnn_cell_981578_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_simple_rnn_cell_981574:*
while_simple_rnn_cell_981576:.
while_simple_rnn_cell_981578:ИҐ-while/simple_rnn_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ы
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_981574_0while_simple_rnn_cell_981576_0while_simple_rnn_cell_981578_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_981539я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: У
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€X

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_981574while_simple_rnn_cell_981574_0">
while_simple_rnn_cell_981576while_simple_rnn_cell_981576_0">
while_simple_rnn_cell_981578while_simple_rnn_cell_981578_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2^
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
:€€€€€€€€€:GC
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
 
_user_specified_name981574:&"
 
_user_specified_name981576:&	"
 
_user_specified_name981578
і
G
+__inference_dropout_38_layer_call_fn_985193

inputs
identityЄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_38_layer_call_and_return_conditional_losses_983261d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
з
™
while_cond_984397
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_984397___redundant_placeholder04
0while_while_cond_984397___redundant_placeholder14
0while_while_cond_984397___redundant_placeholder24
0while_while_cond_984397___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ь-
ґ
while_body_984111
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:C
5while_simple_rnn_cell_biasadd_readvariableop_resource:H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐ,while/simple_rnn_cell/BiasAdd/ReadVariableOpҐ+while/simple_rnn_cell/MatMul/ReadVariableOpҐ-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ґ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0њ
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Є
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¶
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€«
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€µ

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
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2\
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
:€€€€€€€€€:GC
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
ь-
ґ
while_body_984003
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:C
5while_simple_rnn_cell_biasadd_readvariableop_resource:H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐ,while/simple_rnn_cell/BiasAdd/ReadVariableOpҐ+while/simple_rnn_cell/MatMul/ReadVariableOpҐ-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ґ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0њ
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Є
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¶
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€«
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€µ

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
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2\
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
:€€€€€€€€€:GC
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
п"
√
while_body_981840
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_simple_rnn_cell_981862_0:,
while_simple_rnn_cell_981864_0:0
while_simple_rnn_cell_981866_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_simple_rnn_cell_981862:*
while_simple_rnn_cell_981864:.
while_simple_rnn_cell_981866:ИҐ-while/simple_rnn_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ы
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_981862_0while_simple_rnn_cell_981864_0while_simple_rnn_cell_981866_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_981827я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: У
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€X

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_981862while_simple_rnn_cell_981862_0">
while_simple_rnn_cell_981864while_simple_rnn_cell_981864_0">
while_simple_rnn_cell_981866while_simple_rnn_cell_981866_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2^
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
:€€€€€€€€€:GC
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
 
_user_specified_name981862:&"
 
_user_specified_name981864:&	"
 
_user_specified_name981866
ь-
ґ
while_body_983787
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:C
5while_simple_rnn_cell_biasadd_readvariableop_resource:H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐ,while/simple_rnn_cell/BiasAdd/ReadVariableOpҐ+while/simple_rnn_cell/MatMul/ReadVariableOpҐ-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ґ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0њ
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Є
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¶
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€«
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€µ

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
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2\
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
:€€€€€€€€€:GC
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
з
™
while_cond_982407
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_982407___redundant_placeholder04
0while_while_cond_982407___redundant_placeholder14
0while_while_cond_982407___redundant_placeholder24
0while_while_cond_982407___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
„
Є
.__inference_simple_rnn_39_layer_call_fn_985254

inputs
unknown:
	unknown_0:
	unknown_1:
identityИҐStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_simple_rnn_39_layer_call_and_return_conditional_losses_983372o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs:&"
 
_user_specified_name985246:&"
 
_user_specified_name985248:&"
 
_user_specified_name985250
з
™
while_cond_981382
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_981382___redundant_placeholder04
0while_while_cond_981382___redundant_placeholder14
0while_while_cond_981382___redundant_placeholder24
0while_while_cond_981382___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
КH
д
,sequential_9_simple_rnn_38_while_body_981028R
Nsequential_9_simple_rnn_38_while_sequential_9_simple_rnn_38_while_loop_counterX
Tsequential_9_simple_rnn_38_while_sequential_9_simple_rnn_38_while_maximum_iterations0
,sequential_9_simple_rnn_38_while_placeholder2
.sequential_9_simple_rnn_38_while_placeholder_12
.sequential_9_simple_rnn_38_while_placeholder_2Q
Msequential_9_simple_rnn_38_while_sequential_9_simple_rnn_38_strided_slice_1_0О
Йsequential_9_simple_rnn_38_while_tensorarrayv2read_tensorlistgetitem_sequential_9_simple_rnn_38_tensorarrayunstack_tensorlistfromtensor_0c
Qsequential_9_simple_rnn_38_while_simple_rnn_cell_matmul_readvariableop_resource_0:`
Rsequential_9_simple_rnn_38_while_simple_rnn_cell_biasadd_readvariableop_resource_0:e
Ssequential_9_simple_rnn_38_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:-
)sequential_9_simple_rnn_38_while_identity/
+sequential_9_simple_rnn_38_while_identity_1/
+sequential_9_simple_rnn_38_while_identity_2/
+sequential_9_simple_rnn_38_while_identity_3/
+sequential_9_simple_rnn_38_while_identity_4O
Ksequential_9_simple_rnn_38_while_sequential_9_simple_rnn_38_strided_slice_1М
Зsequential_9_simple_rnn_38_while_tensorarrayv2read_tensorlistgetitem_sequential_9_simple_rnn_38_tensorarrayunstack_tensorlistfromtensora
Osequential_9_simple_rnn_38_while_simple_rnn_cell_matmul_readvariableop_resource:^
Psequential_9_simple_rnn_38_while_simple_rnn_cell_biasadd_readvariableop_resource:c
Qsequential_9_simple_rnn_38_while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐGsequential_9/simple_rnn_38/while/simple_rnn_cell/BiasAdd/ReadVariableOpҐFsequential_9/simple_rnn_38/while/simple_rnn_cell/MatMul/ReadVariableOpҐHsequential_9/simple_rnn_38/while/simple_rnn_cell/MatMul_1/ReadVariableOp£
Rsequential_9/simple_rnn_38/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ѓ
Dsequential_9/simple_rnn_38/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЙsequential_9_simple_rnn_38_while_tensorarrayv2read_tensorlistgetitem_sequential_9_simple_rnn_38_tensorarrayunstack_tensorlistfromtensor_0,sequential_9_simple_rnn_38_while_placeholder[sequential_9/simple_rnn_38/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ў
Fsequential_9/simple_rnn_38/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpQsequential_9_simple_rnn_38_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Р
7sequential_9/simple_rnn_38/while/simple_rnn_cell/MatMulMatMulKsequential_9/simple_rnn_38/while/TensorArrayV2Read/TensorListGetItem:item:0Nsequential_9/simple_rnn_38/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€÷
Gsequential_9/simple_rnn_38/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpRsequential_9_simple_rnn_38_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Й
8sequential_9/simple_rnn_38/while/simple_rnn_cell/BiasAddBiasAddAsequential_9/simple_rnn_38/while/simple_rnn_cell/MatMul:product:0Osequential_9/simple_rnn_38/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€№
Hsequential_9/simple_rnn_38/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpSsequential_9_simple_rnn_38_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0ч
9sequential_9/simple_rnn_38/while/simple_rnn_cell/MatMul_1MatMul.sequential_9_simple_rnn_38_while_placeholder_2Psequential_9/simple_rnn_38/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ч
4sequential_9/simple_rnn_38/while/simple_rnn_cell/addAddV2Asequential_9/simple_rnn_38/while/simple_rnn_cell/BiasAdd:output:0Csequential_9/simple_rnn_38/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€©
5sequential_9/simple_rnn_38/while/simple_rnn_cell/TanhTanh8sequential_9/simple_rnn_38/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€≥
Esequential_9/simple_rnn_38/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem.sequential_9_simple_rnn_38_while_placeholder_1,sequential_9_simple_rnn_38_while_placeholder9sequential_9/simple_rnn_38/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“h
&sequential_9/simple_rnn_38/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :≠
$sequential_9/simple_rnn_38/while/addAddV2,sequential_9_simple_rnn_38_while_placeholder/sequential_9/simple_rnn_38/while/add/y:output:0*
T0*
_output_shapes
: j
(sequential_9/simple_rnn_38/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :”
&sequential_9/simple_rnn_38/while/add_1AddV2Nsequential_9_simple_rnn_38_while_sequential_9_simple_rnn_38_while_loop_counter1sequential_9/simple_rnn_38/while/add_1/y:output:0*
T0*
_output_shapes
: ™
)sequential_9/simple_rnn_38/while/IdentityIdentity*sequential_9/simple_rnn_38/while/add_1:z:0&^sequential_9/simple_rnn_38/while/NoOp*
T0*
_output_shapes
: ÷
+sequential_9/simple_rnn_38/while/Identity_1IdentityTsequential_9_simple_rnn_38_while_sequential_9_simple_rnn_38_while_maximum_iterations&^sequential_9/simple_rnn_38/while/NoOp*
T0*
_output_shapes
: ™
+sequential_9/simple_rnn_38/while/Identity_2Identity(sequential_9/simple_rnn_38/while/add:z:0&^sequential_9/simple_rnn_38/while/NoOp*
T0*
_output_shapes
: „
+sequential_9/simple_rnn_38/while/Identity_3IdentityUsequential_9/simple_rnn_38/while/TensorArrayV2Write/TensorListSetItem:output_handle:0&^sequential_9/simple_rnn_38/while/NoOp*
T0*
_output_shapes
: ћ
+sequential_9/simple_rnn_38/while/Identity_4Identity9sequential_9/simple_rnn_38/while/simple_rnn_cell/Tanh:y:0&^sequential_9/simple_rnn_38/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€°
%sequential_9/simple_rnn_38/while/NoOpNoOpH^sequential_9/simple_rnn_38/while/simple_rnn_cell/BiasAdd/ReadVariableOpG^sequential_9/simple_rnn_38/while/simple_rnn_cell/MatMul/ReadVariableOpI^sequential_9/simple_rnn_38/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "_
)sequential_9_simple_rnn_38_while_identity2sequential_9/simple_rnn_38/while/Identity:output:0"c
+sequential_9_simple_rnn_38_while_identity_14sequential_9/simple_rnn_38/while/Identity_1:output:0"c
+sequential_9_simple_rnn_38_while_identity_24sequential_9/simple_rnn_38/while/Identity_2:output:0"c
+sequential_9_simple_rnn_38_while_identity_34sequential_9/simple_rnn_38/while/Identity_3:output:0"c
+sequential_9_simple_rnn_38_while_identity_44sequential_9/simple_rnn_38/while/Identity_4:output:0"Ь
Ksequential_9_simple_rnn_38_while_sequential_9_simple_rnn_38_strided_slice_1Msequential_9_simple_rnn_38_while_sequential_9_simple_rnn_38_strided_slice_1_0"¶
Psequential_9_simple_rnn_38_while_simple_rnn_cell_biasadd_readvariableop_resourceRsequential_9_simple_rnn_38_while_simple_rnn_cell_biasadd_readvariableop_resource_0"®
Qsequential_9_simple_rnn_38_while_simple_rnn_cell_matmul_1_readvariableop_resourceSsequential_9_simple_rnn_38_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"§
Osequential_9_simple_rnn_38_while_simple_rnn_cell_matmul_readvariableop_resourceQsequential_9_simple_rnn_38_while_simple_rnn_cell_matmul_readvariableop_resource_0"Ц
Зsequential_9_simple_rnn_38_while_tensorarrayv2read_tensorlistgetitem_sequential_9_simple_rnn_38_tensorarrayunstack_tensorlistfromtensorЙsequential_9_simple_rnn_38_while_tensorarrayv2read_tensorlistgetitem_sequential_9_simple_rnn_38_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2Т
Gsequential_9/simple_rnn_38/while/simple_rnn_cell/BiasAdd/ReadVariableOpGsequential_9/simple_rnn_38/while/simple_rnn_cell/BiasAdd/ReadVariableOp2Р
Fsequential_9/simple_rnn_38/while/simple_rnn_cell/MatMul/ReadVariableOpFsequential_9/simple_rnn_38/while/simple_rnn_cell/MatMul/ReadVariableOp2Ф
Hsequential_9/simple_rnn_38/while/simple_rnn_cell/MatMul_1/ReadVariableOpHsequential_9/simple_rnn_38/while/simple_rnn_cell/MatMul_1/ReadVariableOp:e a

_output_shapes
: 
G
_user_specified_name/-sequential_9/simple_rnn_38/while/loop_counter:kg

_output_shapes
: 
M
_user_specified_name53sequential_9/simple_rnn_38/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:b^

_output_shapes
: 
D
_user_specified_name,*sequential_9/simple_rnn_38/strided_slice_1:zv

_output_shapes
: 
\
_user_specified_nameDBsequential_9/simple_rnn_38/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
КH
д
,sequential_9_simple_rnn_37_while_body_980923R
Nsequential_9_simple_rnn_37_while_sequential_9_simple_rnn_37_while_loop_counterX
Tsequential_9_simple_rnn_37_while_sequential_9_simple_rnn_37_while_maximum_iterations0
,sequential_9_simple_rnn_37_while_placeholder2
.sequential_9_simple_rnn_37_while_placeholder_12
.sequential_9_simple_rnn_37_while_placeholder_2Q
Msequential_9_simple_rnn_37_while_sequential_9_simple_rnn_37_strided_slice_1_0О
Йsequential_9_simple_rnn_37_while_tensorarrayv2read_tensorlistgetitem_sequential_9_simple_rnn_37_tensorarrayunstack_tensorlistfromtensor_0c
Qsequential_9_simple_rnn_37_while_simple_rnn_cell_matmul_readvariableop_resource_0:`
Rsequential_9_simple_rnn_37_while_simple_rnn_cell_biasadd_readvariableop_resource_0:e
Ssequential_9_simple_rnn_37_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:-
)sequential_9_simple_rnn_37_while_identity/
+sequential_9_simple_rnn_37_while_identity_1/
+sequential_9_simple_rnn_37_while_identity_2/
+sequential_9_simple_rnn_37_while_identity_3/
+sequential_9_simple_rnn_37_while_identity_4O
Ksequential_9_simple_rnn_37_while_sequential_9_simple_rnn_37_strided_slice_1М
Зsequential_9_simple_rnn_37_while_tensorarrayv2read_tensorlistgetitem_sequential_9_simple_rnn_37_tensorarrayunstack_tensorlistfromtensora
Osequential_9_simple_rnn_37_while_simple_rnn_cell_matmul_readvariableop_resource:^
Psequential_9_simple_rnn_37_while_simple_rnn_cell_biasadd_readvariableop_resource:c
Qsequential_9_simple_rnn_37_while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐGsequential_9/simple_rnn_37/while/simple_rnn_cell/BiasAdd/ReadVariableOpҐFsequential_9/simple_rnn_37/while/simple_rnn_cell/MatMul/ReadVariableOpҐHsequential_9/simple_rnn_37/while/simple_rnn_cell/MatMul_1/ReadVariableOp£
Rsequential_9/simple_rnn_37/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ѓ
Dsequential_9/simple_rnn_37/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЙsequential_9_simple_rnn_37_while_tensorarrayv2read_tensorlistgetitem_sequential_9_simple_rnn_37_tensorarrayunstack_tensorlistfromtensor_0,sequential_9_simple_rnn_37_while_placeholder[sequential_9/simple_rnn_37/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ў
Fsequential_9/simple_rnn_37/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpQsequential_9_simple_rnn_37_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Р
7sequential_9/simple_rnn_37/while/simple_rnn_cell/MatMulMatMulKsequential_9/simple_rnn_37/while/TensorArrayV2Read/TensorListGetItem:item:0Nsequential_9/simple_rnn_37/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€÷
Gsequential_9/simple_rnn_37/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpRsequential_9_simple_rnn_37_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Й
8sequential_9/simple_rnn_37/while/simple_rnn_cell/BiasAddBiasAddAsequential_9/simple_rnn_37/while/simple_rnn_cell/MatMul:product:0Osequential_9/simple_rnn_37/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€№
Hsequential_9/simple_rnn_37/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpSsequential_9_simple_rnn_37_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0ч
9sequential_9/simple_rnn_37/while/simple_rnn_cell/MatMul_1MatMul.sequential_9_simple_rnn_37_while_placeholder_2Psequential_9/simple_rnn_37/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ч
4sequential_9/simple_rnn_37/while/simple_rnn_cell/addAddV2Asequential_9/simple_rnn_37/while/simple_rnn_cell/BiasAdd:output:0Csequential_9/simple_rnn_37/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€©
5sequential_9/simple_rnn_37/while/simple_rnn_cell/TanhTanh8sequential_9/simple_rnn_37/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€≥
Esequential_9/simple_rnn_37/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem.sequential_9_simple_rnn_37_while_placeholder_1,sequential_9_simple_rnn_37_while_placeholder9sequential_9/simple_rnn_37/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“h
&sequential_9/simple_rnn_37/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :≠
$sequential_9/simple_rnn_37/while/addAddV2,sequential_9_simple_rnn_37_while_placeholder/sequential_9/simple_rnn_37/while/add/y:output:0*
T0*
_output_shapes
: j
(sequential_9/simple_rnn_37/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :”
&sequential_9/simple_rnn_37/while/add_1AddV2Nsequential_9_simple_rnn_37_while_sequential_9_simple_rnn_37_while_loop_counter1sequential_9/simple_rnn_37/while/add_1/y:output:0*
T0*
_output_shapes
: ™
)sequential_9/simple_rnn_37/while/IdentityIdentity*sequential_9/simple_rnn_37/while/add_1:z:0&^sequential_9/simple_rnn_37/while/NoOp*
T0*
_output_shapes
: ÷
+sequential_9/simple_rnn_37/while/Identity_1IdentityTsequential_9_simple_rnn_37_while_sequential_9_simple_rnn_37_while_maximum_iterations&^sequential_9/simple_rnn_37/while/NoOp*
T0*
_output_shapes
: ™
+sequential_9/simple_rnn_37/while/Identity_2Identity(sequential_9/simple_rnn_37/while/add:z:0&^sequential_9/simple_rnn_37/while/NoOp*
T0*
_output_shapes
: „
+sequential_9/simple_rnn_37/while/Identity_3IdentityUsequential_9/simple_rnn_37/while/TensorArrayV2Write/TensorListSetItem:output_handle:0&^sequential_9/simple_rnn_37/while/NoOp*
T0*
_output_shapes
: ћ
+sequential_9/simple_rnn_37/while/Identity_4Identity9sequential_9/simple_rnn_37/while/simple_rnn_cell/Tanh:y:0&^sequential_9/simple_rnn_37/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€°
%sequential_9/simple_rnn_37/while/NoOpNoOpH^sequential_9/simple_rnn_37/while/simple_rnn_cell/BiasAdd/ReadVariableOpG^sequential_9/simple_rnn_37/while/simple_rnn_cell/MatMul/ReadVariableOpI^sequential_9/simple_rnn_37/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "_
)sequential_9_simple_rnn_37_while_identity2sequential_9/simple_rnn_37/while/Identity:output:0"c
+sequential_9_simple_rnn_37_while_identity_14sequential_9/simple_rnn_37/while/Identity_1:output:0"c
+sequential_9_simple_rnn_37_while_identity_24sequential_9/simple_rnn_37/while/Identity_2:output:0"c
+sequential_9_simple_rnn_37_while_identity_34sequential_9/simple_rnn_37/while/Identity_3:output:0"c
+sequential_9_simple_rnn_37_while_identity_44sequential_9/simple_rnn_37/while/Identity_4:output:0"Ь
Ksequential_9_simple_rnn_37_while_sequential_9_simple_rnn_37_strided_slice_1Msequential_9_simple_rnn_37_while_sequential_9_simple_rnn_37_strided_slice_1_0"¶
Psequential_9_simple_rnn_37_while_simple_rnn_cell_biasadd_readvariableop_resourceRsequential_9_simple_rnn_37_while_simple_rnn_cell_biasadd_readvariableop_resource_0"®
Qsequential_9_simple_rnn_37_while_simple_rnn_cell_matmul_1_readvariableop_resourceSsequential_9_simple_rnn_37_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"§
Osequential_9_simple_rnn_37_while_simple_rnn_cell_matmul_readvariableop_resourceQsequential_9_simple_rnn_37_while_simple_rnn_cell_matmul_readvariableop_resource_0"Ц
Зsequential_9_simple_rnn_37_while_tensorarrayv2read_tensorlistgetitem_sequential_9_simple_rnn_37_tensorarrayunstack_tensorlistfromtensorЙsequential_9_simple_rnn_37_while_tensorarrayv2read_tensorlistgetitem_sequential_9_simple_rnn_37_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2Т
Gsequential_9/simple_rnn_37/while/simple_rnn_cell/BiasAdd/ReadVariableOpGsequential_9/simple_rnn_37/while/simple_rnn_cell/BiasAdd/ReadVariableOp2Р
Fsequential_9/simple_rnn_37/while/simple_rnn_cell/MatMul/ReadVariableOpFsequential_9/simple_rnn_37/while/simple_rnn_cell/MatMul/ReadVariableOp2Ф
Hsequential_9/simple_rnn_37/while/simple_rnn_cell/MatMul_1/ReadVariableOpHsequential_9/simple_rnn_37/while/simple_rnn_cell/MatMul_1/ReadVariableOp:e a

_output_shapes
: 
G
_user_specified_name/-sequential_9/simple_rnn_37/while/loop_counter:kg

_output_shapes
: 
M
_user_specified_name53sequential_9/simple_rnn_37/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:b^

_output_shapes
: 
D
_user_specified_name,*sequential_9/simple_rnn_37/strided_slice_1:zv

_output_shapes
: 
\
_user_specified_nameDBsequential_9/simple_rnn_37/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
ў
d
F__inference_dropout_39_layer_call_and_return_conditional_losses_985721

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ш/
ґ
while_body_985297
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:C
5while_simple_rnn_cell_biasadd_readvariableop_resource:H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐ,while/simple_rnn_cell/BiasAdd/ReadVariableOpҐ+while/simple_rnn_cell/MatMul/ReadVariableOpҐ-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ґ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0њ
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Є
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¶
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€µ

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
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2\
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
:€€€€€€€€€:GC
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
‘
ж
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_981370

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€G
TanhTanhadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
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
з
™
while_cond_984505
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_984505___redundant_placeholder04
0while_while_cond_984505___redundant_placeholder14
0while_while_cond_984505___redundant_placeholder24
0while_while_cond_984505___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
У
Ђ
,sequential_9_simple_rnn_39_while_cond_981133R
Nsequential_9_simple_rnn_39_while_sequential_9_simple_rnn_39_while_loop_counterX
Tsequential_9_simple_rnn_39_while_sequential_9_simple_rnn_39_while_maximum_iterations0
,sequential_9_simple_rnn_39_while_placeholder2
.sequential_9_simple_rnn_39_while_placeholder_12
.sequential_9_simple_rnn_39_while_placeholder_2T
Psequential_9_simple_rnn_39_while_less_sequential_9_simple_rnn_39_strided_slice_1j
fsequential_9_simple_rnn_39_while_sequential_9_simple_rnn_39_while_cond_981133___redundant_placeholder0j
fsequential_9_simple_rnn_39_while_sequential_9_simple_rnn_39_while_cond_981133___redundant_placeholder1j
fsequential_9_simple_rnn_39_while_sequential_9_simple_rnn_39_while_cond_981133___redundant_placeholder2j
fsequential_9_simple_rnn_39_while_sequential_9_simple_rnn_39_while_cond_981133___redundant_placeholder3-
)sequential_9_simple_rnn_39_while_identity
ќ
%sequential_9/simple_rnn_39/while/LessLess,sequential_9_simple_rnn_39_while_placeholderPsequential_9_simple_rnn_39_while_less_sequential_9_simple_rnn_39_strided_slice_1*
T0*
_output_shapes
: Б
)sequential_9/simple_rnn_39/while/IdentityIdentity)sequential_9/simple_rnn_39/while/Less:z:0*
T0
*
_output_shapes
: "_
)sequential_9_simple_rnn_39_while_identity2sequential_9/simple_rnn_39/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :€€€€€€€€€: :::::e a

_output_shapes
: 
G
_user_specified_name/-sequential_9/simple_rnn_39/while/loop_counter:kg

_output_shapes
: 
M
_user_specified_name53sequential_9/simple_rnn_39/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:b^

_output_shapes
: 
D
_user_specified_name,*sequential_9/simple_rnn_39/strided_slice_1:

_output_shapes
:
п
Ї
.__inference_simple_rnn_39_layer_call_fn_985232
inputs_0
unknown:
	unknown_0:
	unknown_1:
identityИҐStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_simple_rnn_39_layer_call_and_return_conditional_losses_982314o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:&"
 
_user_specified_name985224:&"
 
_user_specified_name985226:&"
 
_user_specified_name985228
з
™
while_cond_985008
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_985008___redundant_placeholder04
0while_while_cond_985008___redundant_placeholder14
0while_while_cond_985008___redundant_placeholder24
0while_while_cond_985008___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
і=
∞
I__inference_simple_rnn_36_layer_call_and_return_conditional_losses_983007

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
identityИҐ&simple_rnn_cell/BiasAdd/ReadVariableOpҐ%simple_rnn_cell/MatMul/ReadVariableOpҐ'simple_rnn_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskФ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ы
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ш
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Х
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : µ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_982941*
condR
while_cond_982940*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€
•
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€

 
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
Є
O
#__inference__update_step_xla_983681
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:: *
	_noinline(:H D

_output_shapes

:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
з
™
while_cond_982792
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_982792___redundant_placeholder04
0while_while_cond_982792___redundant_placeholder14
0while_while_cond_982792___redundant_placeholder24
0while_while_cond_982792___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
і=
∞
I__inference_simple_rnn_37_layer_call_and_return_conditional_losses_983128

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
identityИҐ&simple_rnn_cell/BiasAdd/ReadVariableOpҐ%simple_rnn_cell/MatMul/ReadVariableOpҐ'simple_rnn_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskФ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ы
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ш
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Х
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : µ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_983062*
condR
while_cond_983061*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€
•
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€

 
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
ь-
ґ
while_body_985117
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_simple_rnn_cell_matmul_readvariableop_resource_0:E
7while_simple_rnn_cell_biasadd_readvariableop_resource_0:J
8while_simple_rnn_cell_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_simple_rnn_cell_matmul_readvariableop_resource:C
5while_simple_rnn_cell_biasadd_readvariableop_resource:H
6while_simple_rnn_cell_matmul_1_readvariableop_resource:ИҐ,while/simple_rnn_cell/BiasAdd/ReadVariableOpҐ+while/simple_rnn_cell/MatMul/ReadVariableOpҐ-while/simple_rnn_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ґ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0њ
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€†
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Є
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0¶
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€¶
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€s
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€«
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: {
while/Identity_4Identitywhile/simple_rnn_cell/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€µ

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
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2\
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
:€€€€€€€€€:GC
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
з
™
while_cond_983182
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_983182___redundant_placeholder04
0while_while_cond_983182___redundant_placeholder14
0while_while_cond_983182___redundant_placeholder24
0while_while_cond_983182___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
в
d
+__inference_dropout_37_layer_call_fn_984685

inputs
identityИҐStatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_982621s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
™г
«
!__inference__wrapped_model_981208
simple_rnn_36_input[
Isequential_9_simple_rnn_36_simple_rnn_cell_matmul_readvariableop_resource:X
Jsequential_9_simple_rnn_36_simple_rnn_cell_biasadd_readvariableop_resource:]
Ksequential_9_simple_rnn_36_simple_rnn_cell_matmul_1_readvariableop_resource:[
Isequential_9_simple_rnn_37_simple_rnn_cell_matmul_readvariableop_resource:X
Jsequential_9_simple_rnn_37_simple_rnn_cell_biasadd_readvariableop_resource:]
Ksequential_9_simple_rnn_37_simple_rnn_cell_matmul_1_readvariableop_resource:[
Isequential_9_simple_rnn_38_simple_rnn_cell_matmul_readvariableop_resource:X
Jsequential_9_simple_rnn_38_simple_rnn_cell_biasadd_readvariableop_resource:]
Ksequential_9_simple_rnn_38_simple_rnn_cell_matmul_1_readvariableop_resource:[
Isequential_9_simple_rnn_39_simple_rnn_cell_matmul_readvariableop_resource:X
Jsequential_9_simple_rnn_39_simple_rnn_cell_biasadd_readvariableop_resource:]
Ksequential_9_simple_rnn_39_simple_rnn_cell_matmul_1_readvariableop_resource:E
3sequential_9_dense_9_matmul_readvariableop_resource:B
4sequential_9_dense_9_biasadd_readvariableop_resource:
identityИҐ+sequential_9/dense_9/BiasAdd/ReadVariableOpҐ*sequential_9/dense_9/MatMul/ReadVariableOpҐAsequential_9/simple_rnn_36/simple_rnn_cell/BiasAdd/ReadVariableOpҐ@sequential_9/simple_rnn_36/simple_rnn_cell/MatMul/ReadVariableOpҐBsequential_9/simple_rnn_36/simple_rnn_cell/MatMul_1/ReadVariableOpҐ sequential_9/simple_rnn_36/whileҐAsequential_9/simple_rnn_37/simple_rnn_cell/BiasAdd/ReadVariableOpҐ@sequential_9/simple_rnn_37/simple_rnn_cell/MatMul/ReadVariableOpҐBsequential_9/simple_rnn_37/simple_rnn_cell/MatMul_1/ReadVariableOpҐ sequential_9/simple_rnn_37/whileҐAsequential_9/simple_rnn_38/simple_rnn_cell/BiasAdd/ReadVariableOpҐ@sequential_9/simple_rnn_38/simple_rnn_cell/MatMul/ReadVariableOpҐBsequential_9/simple_rnn_38/simple_rnn_cell/MatMul_1/ReadVariableOpҐ sequential_9/simple_rnn_38/whileҐAsequential_9/simple_rnn_39/simple_rnn_cell/BiasAdd/ReadVariableOpҐ@sequential_9/simple_rnn_39/simple_rnn_cell/MatMul/ReadVariableOpҐBsequential_9/simple_rnn_39/simple_rnn_cell/MatMul_1/ReadVariableOpҐ sequential_9/simple_rnn_39/whileq
 sequential_9/simple_rnn_36/ShapeShapesimple_rnn_36_input*
T0*
_output_shapes
::нѕx
.sequential_9/simple_rnn_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0sequential_9/simple_rnn_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0sequential_9/simple_rnn_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
(sequential_9/simple_rnn_36/strided_sliceStridedSlice)sequential_9/simple_rnn_36/Shape:output:07sequential_9/simple_rnn_36/strided_slice/stack:output:09sequential_9/simple_rnn_36/strided_slice/stack_1:output:09sequential_9/simple_rnn_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)sequential_9/simple_rnn_36/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ƒ
'sequential_9/simple_rnn_36/zeros/packedPack1sequential_9/simple_rnn_36/strided_slice:output:02sequential_9/simple_rnn_36/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:k
&sequential_9/simple_rnn_36/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    љ
 sequential_9/simple_rnn_36/zerosFill0sequential_9/simple_rnn_36/zeros/packed:output:0/sequential_9/simple_rnn_36/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€~
)sequential_9/simple_rnn_36/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ∞
$sequential_9/simple_rnn_36/transpose	Transposesimple_rnn_36_input2sequential_9/simple_rnn_36/transpose/perm:output:0*
T0*+
_output_shapes
:
€€€€€€€€€И
"sequential_9/simple_rnn_36/Shape_1Shape(sequential_9/simple_rnn_36/transpose:y:0*
T0*
_output_shapes
::нѕz
0sequential_9/simple_rnn_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2sequential_9/simple_rnn_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2sequential_9/simple_rnn_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
*sequential_9/simple_rnn_36/strided_slice_1StridedSlice+sequential_9/simple_rnn_36/Shape_1:output:09sequential_9/simple_rnn_36/strided_slice_1/stack:output:0;sequential_9/simple_rnn_36/strided_slice_1/stack_1:output:0;sequential_9/simple_rnn_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskБ
6sequential_9/simple_rnn_36/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Е
(sequential_9/simple_rnn_36/TensorArrayV2TensorListReserve?sequential_9/simple_rnn_36/TensorArrayV2/element_shape:output:03sequential_9/simple_rnn_36/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“°
Psequential_9/simple_rnn_36/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ±
Bsequential_9/simple_rnn_36/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(sequential_9/simple_rnn_36/transpose:y:0Ysequential_9/simple_rnn_36/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“z
0sequential_9/simple_rnn_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2sequential_9/simple_rnn_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2sequential_9/simple_rnn_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
*sequential_9/simple_rnn_36/strided_slice_2StridedSlice(sequential_9/simple_rnn_36/transpose:y:09sequential_9/simple_rnn_36/strided_slice_2/stack:output:0;sequential_9/simple_rnn_36/strided_slice_2/stack_1:output:0;sequential_9/simple_rnn_36/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask 
@sequential_9/simple_rnn_36/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpIsequential_9_simple_rnn_36_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0м
1sequential_9/simple_rnn_36/simple_rnn_cell/MatMulMatMul3sequential_9/simple_rnn_36/strided_slice_2:output:0Hsequential_9/simple_rnn_36/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€»
Asequential_9/simple_rnn_36/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpJsequential_9_simple_rnn_36_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ч
2sequential_9/simple_rnn_36/simple_rnn_cell/BiasAddBiasAdd;sequential_9/simple_rnn_36/simple_rnn_cell/MatMul:product:0Isequential_9/simple_rnn_36/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ќ
Bsequential_9/simple_rnn_36/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpKsequential_9_simple_rnn_36_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ж
3sequential_9/simple_rnn_36/simple_rnn_cell/MatMul_1MatMul)sequential_9/simple_rnn_36/zeros:output:0Jsequential_9/simple_rnn_36/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€е
.sequential_9/simple_rnn_36/simple_rnn_cell/addAddV2;sequential_9/simple_rnn_36/simple_rnn_cell/BiasAdd:output:0=sequential_9/simple_rnn_36/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€Э
/sequential_9/simple_rnn_36/simple_rnn_cell/TanhTanh2sequential_9/simple_rnn_36/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€Й
8sequential_9/simple_rnn_36/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Й
*sequential_9/simple_rnn_36/TensorArrayV2_1TensorListReserveAsequential_9/simple_rnn_36/TensorArrayV2_1/element_shape:output:03sequential_9/simple_rnn_36/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“a
sequential_9/simple_rnn_36/timeConst*
_output_shapes
: *
dtype0*
value	B : ~
3sequential_9/simple_rnn_36/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€o
-sequential_9/simple_rnn_36/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ф
 sequential_9/simple_rnn_36/whileWhile6sequential_9/simple_rnn_36/while/loop_counter:output:0<sequential_9/simple_rnn_36/while/maximum_iterations:output:0(sequential_9/simple_rnn_36/time:output:03sequential_9/simple_rnn_36/TensorArrayV2_1:handle:0)sequential_9/simple_rnn_36/zeros:output:03sequential_9/simple_rnn_36/strided_slice_1:output:0Rsequential_9/simple_rnn_36/TensorArrayUnstack/TensorListFromTensor:output_handle:0Isequential_9_simple_rnn_36_simple_rnn_cell_matmul_readvariableop_resourceJsequential_9_simple_rnn_36_simple_rnn_cell_biasadd_readvariableop_resourceKsequential_9_simple_rnn_36_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*8
body0R.
,sequential_9_simple_rnn_36_while_body_980818*8
cond0R.
,sequential_9_simple_rnn_36_while_cond_980817*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Ь
Ksequential_9/simple_rnn_36/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   У
=sequential_9/simple_rnn_36/TensorArrayV2Stack/TensorListStackTensorListStack)sequential_9/simple_rnn_36/while:output:3Tsequential_9/simple_rnn_36/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
€€€€€€€€€*
element_dtype0Г
0sequential_9/simple_rnn_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€|
2sequential_9/simple_rnn_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: |
2sequential_9/simple_rnn_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:О
*sequential_9/simple_rnn_36/strided_slice_3StridedSliceFsequential_9/simple_rnn_36/TensorArrayV2Stack/TensorListStack:tensor:09sequential_9/simple_rnn_36/strided_slice_3/stack:output:0;sequential_9/simple_rnn_36/strided_slice_3/stack_1:output:0;sequential_9/simple_rnn_36/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskА
+sequential_9/simple_rnn_36/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          з
&sequential_9/simple_rnn_36/transpose_1	TransposeFsequential_9/simple_rnn_36/TensorArrayV2Stack/TensorListStack:tensor:04sequential_9/simple_rnn_36/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
О
 sequential_9/dropout_36/IdentityIdentity*sequential_9/simple_rnn_36/transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€
З
 sequential_9/simple_rnn_37/ShapeShape)sequential_9/dropout_36/Identity:output:0*
T0*
_output_shapes
::нѕx
.sequential_9/simple_rnn_37/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0sequential_9/simple_rnn_37/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0sequential_9/simple_rnn_37/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
(sequential_9/simple_rnn_37/strided_sliceStridedSlice)sequential_9/simple_rnn_37/Shape:output:07sequential_9/simple_rnn_37/strided_slice/stack:output:09sequential_9/simple_rnn_37/strided_slice/stack_1:output:09sequential_9/simple_rnn_37/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)sequential_9/simple_rnn_37/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ƒ
'sequential_9/simple_rnn_37/zeros/packedPack1sequential_9/simple_rnn_37/strided_slice:output:02sequential_9/simple_rnn_37/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:k
&sequential_9/simple_rnn_37/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    љ
 sequential_9/simple_rnn_37/zerosFill0sequential_9/simple_rnn_37/zeros/packed:output:0/sequential_9/simple_rnn_37/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€~
)sequential_9/simple_rnn_37/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ∆
$sequential_9/simple_rnn_37/transpose	Transpose)sequential_9/dropout_36/Identity:output:02sequential_9/simple_rnn_37/transpose/perm:output:0*
T0*+
_output_shapes
:
€€€€€€€€€И
"sequential_9/simple_rnn_37/Shape_1Shape(sequential_9/simple_rnn_37/transpose:y:0*
T0*
_output_shapes
::нѕz
0sequential_9/simple_rnn_37/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2sequential_9/simple_rnn_37/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2sequential_9/simple_rnn_37/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
*sequential_9/simple_rnn_37/strided_slice_1StridedSlice+sequential_9/simple_rnn_37/Shape_1:output:09sequential_9/simple_rnn_37/strided_slice_1/stack:output:0;sequential_9/simple_rnn_37/strided_slice_1/stack_1:output:0;sequential_9/simple_rnn_37/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskБ
6sequential_9/simple_rnn_37/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Е
(sequential_9/simple_rnn_37/TensorArrayV2TensorListReserve?sequential_9/simple_rnn_37/TensorArrayV2/element_shape:output:03sequential_9/simple_rnn_37/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“°
Psequential_9/simple_rnn_37/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ±
Bsequential_9/simple_rnn_37/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(sequential_9/simple_rnn_37/transpose:y:0Ysequential_9/simple_rnn_37/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“z
0sequential_9/simple_rnn_37/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2sequential_9/simple_rnn_37/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2sequential_9/simple_rnn_37/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
*sequential_9/simple_rnn_37/strided_slice_2StridedSlice(sequential_9/simple_rnn_37/transpose:y:09sequential_9/simple_rnn_37/strided_slice_2/stack:output:0;sequential_9/simple_rnn_37/strided_slice_2/stack_1:output:0;sequential_9/simple_rnn_37/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask 
@sequential_9/simple_rnn_37/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpIsequential_9_simple_rnn_37_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0м
1sequential_9/simple_rnn_37/simple_rnn_cell/MatMulMatMul3sequential_9/simple_rnn_37/strided_slice_2:output:0Hsequential_9/simple_rnn_37/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€»
Asequential_9/simple_rnn_37/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpJsequential_9_simple_rnn_37_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ч
2sequential_9/simple_rnn_37/simple_rnn_cell/BiasAddBiasAdd;sequential_9/simple_rnn_37/simple_rnn_cell/MatMul:product:0Isequential_9/simple_rnn_37/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ќ
Bsequential_9/simple_rnn_37/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpKsequential_9_simple_rnn_37_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ж
3sequential_9/simple_rnn_37/simple_rnn_cell/MatMul_1MatMul)sequential_9/simple_rnn_37/zeros:output:0Jsequential_9/simple_rnn_37/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€е
.sequential_9/simple_rnn_37/simple_rnn_cell/addAddV2;sequential_9/simple_rnn_37/simple_rnn_cell/BiasAdd:output:0=sequential_9/simple_rnn_37/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€Э
/sequential_9/simple_rnn_37/simple_rnn_cell/TanhTanh2sequential_9/simple_rnn_37/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€Й
8sequential_9/simple_rnn_37/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Й
*sequential_9/simple_rnn_37/TensorArrayV2_1TensorListReserveAsequential_9/simple_rnn_37/TensorArrayV2_1/element_shape:output:03sequential_9/simple_rnn_37/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“a
sequential_9/simple_rnn_37/timeConst*
_output_shapes
: *
dtype0*
value	B : ~
3sequential_9/simple_rnn_37/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€o
-sequential_9/simple_rnn_37/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ф
 sequential_9/simple_rnn_37/whileWhile6sequential_9/simple_rnn_37/while/loop_counter:output:0<sequential_9/simple_rnn_37/while/maximum_iterations:output:0(sequential_9/simple_rnn_37/time:output:03sequential_9/simple_rnn_37/TensorArrayV2_1:handle:0)sequential_9/simple_rnn_37/zeros:output:03sequential_9/simple_rnn_37/strided_slice_1:output:0Rsequential_9/simple_rnn_37/TensorArrayUnstack/TensorListFromTensor:output_handle:0Isequential_9_simple_rnn_37_simple_rnn_cell_matmul_readvariableop_resourceJsequential_9_simple_rnn_37_simple_rnn_cell_biasadd_readvariableop_resourceKsequential_9_simple_rnn_37_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*8
body0R.
,sequential_9_simple_rnn_37_while_body_980923*8
cond0R.
,sequential_9_simple_rnn_37_while_cond_980922*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Ь
Ksequential_9/simple_rnn_37/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   У
=sequential_9/simple_rnn_37/TensorArrayV2Stack/TensorListStackTensorListStack)sequential_9/simple_rnn_37/while:output:3Tsequential_9/simple_rnn_37/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
€€€€€€€€€*
element_dtype0Г
0sequential_9/simple_rnn_37/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€|
2sequential_9/simple_rnn_37/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: |
2sequential_9/simple_rnn_37/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:О
*sequential_9/simple_rnn_37/strided_slice_3StridedSliceFsequential_9/simple_rnn_37/TensorArrayV2Stack/TensorListStack:tensor:09sequential_9/simple_rnn_37/strided_slice_3/stack:output:0;sequential_9/simple_rnn_37/strided_slice_3/stack_1:output:0;sequential_9/simple_rnn_37/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskА
+sequential_9/simple_rnn_37/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          з
&sequential_9/simple_rnn_37/transpose_1	TransposeFsequential_9/simple_rnn_37/TensorArrayV2Stack/TensorListStack:tensor:04sequential_9/simple_rnn_37/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
О
 sequential_9/dropout_37/IdentityIdentity*sequential_9/simple_rnn_37/transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€
З
 sequential_9/simple_rnn_38/ShapeShape)sequential_9/dropout_37/Identity:output:0*
T0*
_output_shapes
::нѕx
.sequential_9/simple_rnn_38/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0sequential_9/simple_rnn_38/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0sequential_9/simple_rnn_38/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
(sequential_9/simple_rnn_38/strided_sliceStridedSlice)sequential_9/simple_rnn_38/Shape:output:07sequential_9/simple_rnn_38/strided_slice/stack:output:09sequential_9/simple_rnn_38/strided_slice/stack_1:output:09sequential_9/simple_rnn_38/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)sequential_9/simple_rnn_38/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ƒ
'sequential_9/simple_rnn_38/zeros/packedPack1sequential_9/simple_rnn_38/strided_slice:output:02sequential_9/simple_rnn_38/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:k
&sequential_9/simple_rnn_38/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    љ
 sequential_9/simple_rnn_38/zerosFill0sequential_9/simple_rnn_38/zeros/packed:output:0/sequential_9/simple_rnn_38/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€~
)sequential_9/simple_rnn_38/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ∆
$sequential_9/simple_rnn_38/transpose	Transpose)sequential_9/dropout_37/Identity:output:02sequential_9/simple_rnn_38/transpose/perm:output:0*
T0*+
_output_shapes
:
€€€€€€€€€И
"sequential_9/simple_rnn_38/Shape_1Shape(sequential_9/simple_rnn_38/transpose:y:0*
T0*
_output_shapes
::нѕz
0sequential_9/simple_rnn_38/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2sequential_9/simple_rnn_38/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2sequential_9/simple_rnn_38/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
*sequential_9/simple_rnn_38/strided_slice_1StridedSlice+sequential_9/simple_rnn_38/Shape_1:output:09sequential_9/simple_rnn_38/strided_slice_1/stack:output:0;sequential_9/simple_rnn_38/strided_slice_1/stack_1:output:0;sequential_9/simple_rnn_38/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskБ
6sequential_9/simple_rnn_38/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Е
(sequential_9/simple_rnn_38/TensorArrayV2TensorListReserve?sequential_9/simple_rnn_38/TensorArrayV2/element_shape:output:03sequential_9/simple_rnn_38/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“°
Psequential_9/simple_rnn_38/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ±
Bsequential_9/simple_rnn_38/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(sequential_9/simple_rnn_38/transpose:y:0Ysequential_9/simple_rnn_38/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“z
0sequential_9/simple_rnn_38/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2sequential_9/simple_rnn_38/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2sequential_9/simple_rnn_38/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
*sequential_9/simple_rnn_38/strided_slice_2StridedSlice(sequential_9/simple_rnn_38/transpose:y:09sequential_9/simple_rnn_38/strided_slice_2/stack:output:0;sequential_9/simple_rnn_38/strided_slice_2/stack_1:output:0;sequential_9/simple_rnn_38/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask 
@sequential_9/simple_rnn_38/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpIsequential_9_simple_rnn_38_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0м
1sequential_9/simple_rnn_38/simple_rnn_cell/MatMulMatMul3sequential_9/simple_rnn_38/strided_slice_2:output:0Hsequential_9/simple_rnn_38/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€»
Asequential_9/simple_rnn_38/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpJsequential_9_simple_rnn_38_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ч
2sequential_9/simple_rnn_38/simple_rnn_cell/BiasAddBiasAdd;sequential_9/simple_rnn_38/simple_rnn_cell/MatMul:product:0Isequential_9/simple_rnn_38/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ќ
Bsequential_9/simple_rnn_38/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpKsequential_9_simple_rnn_38_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ж
3sequential_9/simple_rnn_38/simple_rnn_cell/MatMul_1MatMul)sequential_9/simple_rnn_38/zeros:output:0Jsequential_9/simple_rnn_38/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€е
.sequential_9/simple_rnn_38/simple_rnn_cell/addAddV2;sequential_9/simple_rnn_38/simple_rnn_cell/BiasAdd:output:0=sequential_9/simple_rnn_38/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€Э
/sequential_9/simple_rnn_38/simple_rnn_cell/TanhTanh2sequential_9/simple_rnn_38/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€Й
8sequential_9/simple_rnn_38/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Й
*sequential_9/simple_rnn_38/TensorArrayV2_1TensorListReserveAsequential_9/simple_rnn_38/TensorArrayV2_1/element_shape:output:03sequential_9/simple_rnn_38/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“a
sequential_9/simple_rnn_38/timeConst*
_output_shapes
: *
dtype0*
value	B : ~
3sequential_9/simple_rnn_38/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€o
-sequential_9/simple_rnn_38/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ф
 sequential_9/simple_rnn_38/whileWhile6sequential_9/simple_rnn_38/while/loop_counter:output:0<sequential_9/simple_rnn_38/while/maximum_iterations:output:0(sequential_9/simple_rnn_38/time:output:03sequential_9/simple_rnn_38/TensorArrayV2_1:handle:0)sequential_9/simple_rnn_38/zeros:output:03sequential_9/simple_rnn_38/strided_slice_1:output:0Rsequential_9/simple_rnn_38/TensorArrayUnstack/TensorListFromTensor:output_handle:0Isequential_9_simple_rnn_38_simple_rnn_cell_matmul_readvariableop_resourceJsequential_9_simple_rnn_38_simple_rnn_cell_biasadd_readvariableop_resourceKsequential_9_simple_rnn_38_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*8
body0R.
,sequential_9_simple_rnn_38_while_body_981028*8
cond0R.
,sequential_9_simple_rnn_38_while_cond_981027*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Ь
Ksequential_9/simple_rnn_38/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   У
=sequential_9/simple_rnn_38/TensorArrayV2Stack/TensorListStackTensorListStack)sequential_9/simple_rnn_38/while:output:3Tsequential_9/simple_rnn_38/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
€€€€€€€€€*
element_dtype0Г
0sequential_9/simple_rnn_38/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€|
2sequential_9/simple_rnn_38/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: |
2sequential_9/simple_rnn_38/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:О
*sequential_9/simple_rnn_38/strided_slice_3StridedSliceFsequential_9/simple_rnn_38/TensorArrayV2Stack/TensorListStack:tensor:09sequential_9/simple_rnn_38/strided_slice_3/stack:output:0;sequential_9/simple_rnn_38/strided_slice_3/stack_1:output:0;sequential_9/simple_rnn_38/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskА
+sequential_9/simple_rnn_38/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          з
&sequential_9/simple_rnn_38/transpose_1	TransposeFsequential_9/simple_rnn_38/TensorArrayV2Stack/TensorListStack:tensor:04sequential_9/simple_rnn_38/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
О
 sequential_9/dropout_38/IdentityIdentity*sequential_9/simple_rnn_38/transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€
З
 sequential_9/simple_rnn_39/ShapeShape)sequential_9/dropout_38/Identity:output:0*
T0*
_output_shapes
::нѕx
.sequential_9/simple_rnn_39/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0sequential_9/simple_rnn_39/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0sequential_9/simple_rnn_39/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
(sequential_9/simple_rnn_39/strided_sliceStridedSlice)sequential_9/simple_rnn_39/Shape:output:07sequential_9/simple_rnn_39/strided_slice/stack:output:09sequential_9/simple_rnn_39/strided_slice/stack_1:output:09sequential_9/simple_rnn_39/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)sequential_9/simple_rnn_39/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ƒ
'sequential_9/simple_rnn_39/zeros/packedPack1sequential_9/simple_rnn_39/strided_slice:output:02sequential_9/simple_rnn_39/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:k
&sequential_9/simple_rnn_39/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    љ
 sequential_9/simple_rnn_39/zerosFill0sequential_9/simple_rnn_39/zeros/packed:output:0/sequential_9/simple_rnn_39/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€~
)sequential_9/simple_rnn_39/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ∆
$sequential_9/simple_rnn_39/transpose	Transpose)sequential_9/dropout_38/Identity:output:02sequential_9/simple_rnn_39/transpose/perm:output:0*
T0*+
_output_shapes
:
€€€€€€€€€И
"sequential_9/simple_rnn_39/Shape_1Shape(sequential_9/simple_rnn_39/transpose:y:0*
T0*
_output_shapes
::нѕz
0sequential_9/simple_rnn_39/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2sequential_9/simple_rnn_39/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2sequential_9/simple_rnn_39/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
*sequential_9/simple_rnn_39/strided_slice_1StridedSlice+sequential_9/simple_rnn_39/Shape_1:output:09sequential_9/simple_rnn_39/strided_slice_1/stack:output:0;sequential_9/simple_rnn_39/strided_slice_1/stack_1:output:0;sequential_9/simple_rnn_39/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskБ
6sequential_9/simple_rnn_39/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Е
(sequential_9/simple_rnn_39/TensorArrayV2TensorListReserve?sequential_9/simple_rnn_39/TensorArrayV2/element_shape:output:03sequential_9/simple_rnn_39/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“°
Psequential_9/simple_rnn_39/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ±
Bsequential_9/simple_rnn_39/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(sequential_9/simple_rnn_39/transpose:y:0Ysequential_9/simple_rnn_39/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“z
0sequential_9/simple_rnn_39/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2sequential_9/simple_rnn_39/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2sequential_9/simple_rnn_39/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
*sequential_9/simple_rnn_39/strided_slice_2StridedSlice(sequential_9/simple_rnn_39/transpose:y:09sequential_9/simple_rnn_39/strided_slice_2/stack:output:0;sequential_9/simple_rnn_39/strided_slice_2/stack_1:output:0;sequential_9/simple_rnn_39/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_mask 
@sequential_9/simple_rnn_39/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpIsequential_9_simple_rnn_39_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0м
1sequential_9/simple_rnn_39/simple_rnn_cell/MatMulMatMul3sequential_9/simple_rnn_39/strided_slice_2:output:0Hsequential_9/simple_rnn_39/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€»
Asequential_9/simple_rnn_39/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpJsequential_9_simple_rnn_39_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ч
2sequential_9/simple_rnn_39/simple_rnn_cell/BiasAddBiasAdd;sequential_9/simple_rnn_39/simple_rnn_cell/MatMul:product:0Isequential_9/simple_rnn_39/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ќ
Bsequential_9/simple_rnn_39/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpKsequential_9_simple_rnn_39_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ж
3sequential_9/simple_rnn_39/simple_rnn_cell/MatMul_1MatMul)sequential_9/simple_rnn_39/zeros:output:0Jsequential_9/simple_rnn_39/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€е
.sequential_9/simple_rnn_39/simple_rnn_cell/addAddV2;sequential_9/simple_rnn_39/simple_rnn_cell/BiasAdd:output:0=sequential_9/simple_rnn_39/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€Э
/sequential_9/simple_rnn_39/simple_rnn_cell/TanhTanh2sequential_9/simple_rnn_39/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€Й
8sequential_9/simple_rnn_39/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   y
7sequential_9/simple_rnn_39/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ц
*sequential_9/simple_rnn_39/TensorArrayV2_1TensorListReserveAsequential_9/simple_rnn_39/TensorArrayV2_1/element_shape:output:0@sequential_9/simple_rnn_39/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“a
sequential_9/simple_rnn_39/timeConst*
_output_shapes
: *
dtype0*
value	B : ~
3sequential_9/simple_rnn_39/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€o
-sequential_9/simple_rnn_39/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ф
 sequential_9/simple_rnn_39/whileWhile6sequential_9/simple_rnn_39/while/loop_counter:output:0<sequential_9/simple_rnn_39/while/maximum_iterations:output:0(sequential_9/simple_rnn_39/time:output:03sequential_9/simple_rnn_39/TensorArrayV2_1:handle:0)sequential_9/simple_rnn_39/zeros:output:03sequential_9/simple_rnn_39/strided_slice_1:output:0Rsequential_9/simple_rnn_39/TensorArrayUnstack/TensorListFromTensor:output_handle:0Isequential_9_simple_rnn_39_simple_rnn_cell_matmul_readvariableop_resourceJsequential_9_simple_rnn_39_simple_rnn_cell_biasadd_readvariableop_resourceKsequential_9_simple_rnn_39_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*8
body0R.
,sequential_9_simple_rnn_39_while_body_981134*8
cond0R.
,sequential_9_simple_rnn_39_while_cond_981133*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Ь
Ksequential_9/simple_rnn_39/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   І
=sequential_9/simple_rnn_39/TensorArrayV2Stack/TensorListStackTensorListStack)sequential_9/simple_rnn_39/while:output:3Tsequential_9/simple_rnn_39/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0*
num_elementsГ
0sequential_9/simple_rnn_39/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€|
2sequential_9/simple_rnn_39/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: |
2sequential_9/simple_rnn_39/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:О
*sequential_9/simple_rnn_39/strided_slice_3StridedSliceFsequential_9/simple_rnn_39/TensorArrayV2Stack/TensorListStack:tensor:09sequential_9/simple_rnn_39/strided_slice_3/stack:output:0;sequential_9/simple_rnn_39/strided_slice_3/stack_1:output:0;sequential_9/simple_rnn_39/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskА
+sequential_9/simple_rnn_39/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          з
&sequential_9/simple_rnn_39/transpose_1	TransposeFsequential_9/simple_rnn_39/TensorArrayV2Stack/TensorListStack:tensor:04sequential_9/simple_rnn_39/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€У
 sequential_9/dropout_39/IdentityIdentity3sequential_9/simple_rnn_39/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ю
*sequential_9/dense_9/MatMul/ReadVariableOpReadVariableOp3sequential_9_dense_9_matmul_readvariableop_resource*
_output_shapes

:*
dtype0ґ
sequential_9/dense_9/MatMulMatMul)sequential_9/dropout_39/Identity:output:02sequential_9/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
+sequential_9/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_9_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0µ
sequential_9/dense_9/BiasAddBiasAdd%sequential_9/dense_9/MatMul:product:03sequential_9/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€t
IdentityIdentity%sequential_9/dense_9/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€є
NoOpNoOp,^sequential_9/dense_9/BiasAdd/ReadVariableOp+^sequential_9/dense_9/MatMul/ReadVariableOpB^sequential_9/simple_rnn_36/simple_rnn_cell/BiasAdd/ReadVariableOpA^sequential_9/simple_rnn_36/simple_rnn_cell/MatMul/ReadVariableOpC^sequential_9/simple_rnn_36/simple_rnn_cell/MatMul_1/ReadVariableOp!^sequential_9/simple_rnn_36/whileB^sequential_9/simple_rnn_37/simple_rnn_cell/BiasAdd/ReadVariableOpA^sequential_9/simple_rnn_37/simple_rnn_cell/MatMul/ReadVariableOpC^sequential_9/simple_rnn_37/simple_rnn_cell/MatMul_1/ReadVariableOp!^sequential_9/simple_rnn_37/whileB^sequential_9/simple_rnn_38/simple_rnn_cell/BiasAdd/ReadVariableOpA^sequential_9/simple_rnn_38/simple_rnn_cell/MatMul/ReadVariableOpC^sequential_9/simple_rnn_38/simple_rnn_cell/MatMul_1/ReadVariableOp!^sequential_9/simple_rnn_38/whileB^sequential_9/simple_rnn_39/simple_rnn_cell/BiasAdd/ReadVariableOpA^sequential_9/simple_rnn_39/simple_rnn_cell/MatMul/ReadVariableOpC^sequential_9/simple_rnn_39/simple_rnn_cell/MatMul_1/ReadVariableOp!^sequential_9/simple_rnn_39/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:€€€€€€€€€
: : : : : : : : : : : : : : 2Z
+sequential_9/dense_9/BiasAdd/ReadVariableOp+sequential_9/dense_9/BiasAdd/ReadVariableOp2X
*sequential_9/dense_9/MatMul/ReadVariableOp*sequential_9/dense_9/MatMul/ReadVariableOp2Ж
Asequential_9/simple_rnn_36/simple_rnn_cell/BiasAdd/ReadVariableOpAsequential_9/simple_rnn_36/simple_rnn_cell/BiasAdd/ReadVariableOp2Д
@sequential_9/simple_rnn_36/simple_rnn_cell/MatMul/ReadVariableOp@sequential_9/simple_rnn_36/simple_rnn_cell/MatMul/ReadVariableOp2И
Bsequential_9/simple_rnn_36/simple_rnn_cell/MatMul_1/ReadVariableOpBsequential_9/simple_rnn_36/simple_rnn_cell/MatMul_1/ReadVariableOp2D
 sequential_9/simple_rnn_36/while sequential_9/simple_rnn_36/while2Ж
Asequential_9/simple_rnn_37/simple_rnn_cell/BiasAdd/ReadVariableOpAsequential_9/simple_rnn_37/simple_rnn_cell/BiasAdd/ReadVariableOp2Д
@sequential_9/simple_rnn_37/simple_rnn_cell/MatMul/ReadVariableOp@sequential_9/simple_rnn_37/simple_rnn_cell/MatMul/ReadVariableOp2И
Bsequential_9/simple_rnn_37/simple_rnn_cell/MatMul_1/ReadVariableOpBsequential_9/simple_rnn_37/simple_rnn_cell/MatMul_1/ReadVariableOp2D
 sequential_9/simple_rnn_37/while sequential_9/simple_rnn_37/while2Ж
Asequential_9/simple_rnn_38/simple_rnn_cell/BiasAdd/ReadVariableOpAsequential_9/simple_rnn_38/simple_rnn_cell/BiasAdd/ReadVariableOp2Д
@sequential_9/simple_rnn_38/simple_rnn_cell/MatMul/ReadVariableOp@sequential_9/simple_rnn_38/simple_rnn_cell/MatMul/ReadVariableOp2И
Bsequential_9/simple_rnn_38/simple_rnn_cell/MatMul_1/ReadVariableOpBsequential_9/simple_rnn_38/simple_rnn_cell/MatMul_1/ReadVariableOp2D
 sequential_9/simple_rnn_38/while sequential_9/simple_rnn_38/while2Ж
Asequential_9/simple_rnn_39/simple_rnn_cell/BiasAdd/ReadVariableOpAsequential_9/simple_rnn_39/simple_rnn_cell/BiasAdd/ReadVariableOp2Д
@sequential_9/simple_rnn_39/simple_rnn_cell/MatMul/ReadVariableOp@sequential_9/simple_rnn_39/simple_rnn_cell/MatMul/ReadVariableOp2И
Bsequential_9/simple_rnn_39/simple_rnn_cell/MatMul_1/ReadVariableOpBsequential_9/simple_rnn_39/simple_rnn_cell/MatMul_1/ReadVariableOp2D
 sequential_9/simple_rnn_39/while sequential_9/simple_rnn_39/while:` \
+
_output_shapes
:€€€€€€€€€

-
_user_specified_namesimple_rnn_36_input:($
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
я
Є
.__inference_simple_rnn_37_layer_call_fn_984237

inputs
unknown:
	unknown_0:
	unknown_1:
identityИҐStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_simple_rnn_37_layer_call_and_return_conditional_losses_982602s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs:&"
 
_user_specified_name984229:&"
 
_user_specified_name984231:&"
 
_user_specified_name984233
з
™
while_cond_984613
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_984613___redundant_placeholder04
0while_while_cond_984613___redundant_placeholder14
0while_while_cond_984613___redundant_placeholder24
0while_while_cond_984613___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ў
d
F__inference_dropout_39_layer_call_and_return_conditional_losses_983384

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
я
Є
.__inference_simple_rnn_36_layer_call_fn_983734

inputs
unknown:
	unknown_0:
	unknown_1:
identityИҐStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_simple_rnn_36_layer_call_and_return_conditional_losses_982474s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs:&"
 
_user_specified_name983726:&"
 
_user_specified_name983728:&"
 
_user_specified_name983730
ґ

e
F__inference_dropout_37_layer_call_and_return_conditional_losses_984702

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€
Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕР
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€
*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>™
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€
T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ч
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€
e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:€€€€€€€€€
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
п"
√
while_body_981959
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_simple_rnn_cell_981981_0:,
while_simple_rnn_cell_981983_0:0
while_simple_rnn_cell_981985_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_simple_rnn_cell_981981:*
while_simple_rnn_cell_981983:.
while_simple_rnn_cell_981985:ИҐ-while/simple_rnn_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ы
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_981981_0while_simple_rnn_cell_981983_0while_simple_rnn_cell_981985_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_981946я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/simple_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: У
while/Identity_4Identity6while/simple_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€X

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0">
while_simple_rnn_cell_981981while_simple_rnn_cell_981981_0">
while_simple_rnn_cell_981983while_simple_rnn_cell_981983_0">
while_simple_rnn_cell_981985while_simple_rnn_cell_981985_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :€€€€€€€€€: : : : : 2^
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
:€€€€€€€€€:GC
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
 
_user_specified_name981981:&"
 
_user_specified_name981983:&	"
 
_user_specified_name981985
з
™
while_cond_984792
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_984792___redundant_placeholder04
0while_while_cond_984792___redundant_placeholder14
0while_while_cond_984792___redundant_placeholder24
0while_while_cond_984792___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ґ

e
F__inference_dropout_37_layer_call_and_return_conditional_losses_982621

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€
Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕР
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€
*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>™
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€
T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ч
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€
e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:€€€€€€€€€
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
з
™
while_cond_985296
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_985296___redundant_placeholder04
0while_while_cond_985296___redundant_placeholder14
0while_while_cond_985296___redundant_placeholder24
0while_while_cond_985296___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Й	
Ї
.__inference_simple_rnn_37_layer_call_fn_984215
inputs_0
unknown:
	unknown_0:
	unknown_1:
identityИҐStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_simple_rnn_37_layer_call_and_return_conditional_losses_981615|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:&"
 
_user_specified_name984207:&"
 
_user_specified_name984209:&"
 
_user_specified_name984211
ђ
K
#__inference__update_step_xla_983661
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
‘
ж
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_981539

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€G
TanhTanhadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
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
з
™
while_cond_985626
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_985626___redundant_placeholder04
0while_while_cond_985626___redundant_placeholder14
0while_while_cond_985626___redundant_placeholder24
0while_while_cond_985626___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Й	
Ї
.__inference_simple_rnn_38_layer_call_fn_984729
inputs_0
unknown:
	unknown_0:
	unknown_1:
identityИҐStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_simple_rnn_38_layer_call_and_return_conditional_losses_982022|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:&"
 
_user_specified_name984721:&"
 
_user_specified_name984723:&"
 
_user_specified_name984725
Є
O
#__inference__update_step_xla_983641
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:: *
	_noinline(:H D

_output_shapes

:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
з
™
while_cond_983061
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_983061___redundant_placeholder04
0while_while_cond_983061___redundant_placeholder14
0while_while_cond_983061___redundant_placeholder24
0while_while_cond_983061___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
з
™
while_cond_983304
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_983304___redundant_placeholder04
0while_while_cond_983304___redundant_placeholder14
0while_while_cond_983304___redundant_placeholder24
0while_while_cond_983304___redundant_placeholder3
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
-: : : : :€€€€€€€€€: :::::J F
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
:€€€€€€€€€:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ё>
≤
I__inference_simple_rnn_39_layer_call_and_return_conditional_losses_985364
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
identityИҐ&simple_rnn_cell/BiasAdd/ReadVariableOpҐ%simple_rnn_cell/MatMul/ReadVariableOpҐ'simple_rnn_cell/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskФ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ы
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ш
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Х
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : µ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_985297*
condR
while_cond_985296*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€•
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
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
Є
O
#__inference__update_step_xla_983666
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:: *
	_noinline(:H D

_output_shapes

:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ї>
∞
I__inference_simple_rnn_39_layer_call_and_return_conditional_losses_985584

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
identityИҐ&simple_rnn_cell/BiasAdd/ReadVariableOpҐ%simple_rnn_cell/MatMul/ReadVariableOpҐ'simple_rnn_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskФ
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ы
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ш
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Х
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€g
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : µ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_985517*
condR
while_cond_985516*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€•
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€

 
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
∆4
Ф
I__inference_simple_rnn_37_layer_call_and_return_conditional_losses_981734

inputs(
simple_rnn_cell_981659:$
simple_rnn_cell_981661:(
simple_rnn_cell_981663:
identityИҐ'simple_rnn_cell/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :s
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
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskа
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_981659simple_rnn_cell_981661simple_rnn_cell_981663*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_981658n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : к
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_981659simple_rnn_cell_981661simple_rnn_cell_981663*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_981671*
condR
while_cond_981670*8
output_shapes'
%: : : : :€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€T
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:&"
 
_user_specified_name981659:&"
 
_user_specified_name981661:&"
 
_user_specified_name981663
я
Є
.__inference_simple_rnn_36_layer_call_fn_983745

inputs
unknown:
	unknown_0:
	unknown_1:
identityИҐStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_simple_rnn_36_layer_call_and_return_conditional_losses_983007s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs:&"
 
_user_specified_name983737:&"
 
_user_specified_name983739:&"
 
_user_specified_name983741"нL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*∆
serving_default≤
W
simple_rnn_36_input@
%serving_default_simple_rnn_36_input:0€€€€€€€€€
;
dense_90
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:≥О
Ё
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
√
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
Љ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!_random_generator"
_tf_keras_layer
√
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
Љ
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0_random_generator"
_tf_keras_layer
√
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
Љ
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses
?_random_generator"
_tf_keras_layer
√
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
Љ
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses
N_random_generator"
_tf_keras_layer
ї
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

Ukernel
Vbias"
_tf_keras_layer
Ж
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
Ж
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
 
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
Ќ
htrace_0
itrace_12Ц
-__inference_sequential_9_layer_call_fn_983425
-__inference_sequential_9_layer_call_fn_983458µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zhtrace_0zitrace_1
Г
jtrace_0
ktrace_12ћ
H__inference_sequential_9_layer_call_and_return_conditional_losses_982897
H__inference_sequential_9_layer_call_and_return_conditional_losses_983392µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zjtrace_0zktrace_1
ЎB’
!__inference__wrapped_model_981208simple_rnn_36_input"Ш
С≤Н
FullArgSpec
argsЪ

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ђ
l
_variables
m_iterations
n_learning_rate
o_index_dict
p
_momentums
q_velocities
r
_u_product
s_update_step_xla"
experimentalOptimizer
,
tserving_default"
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
є

ustates
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ш
{trace_0
|trace_1
}trace_2
~trace_32Н
.__inference_simple_rnn_36_layer_call_fn_983712
.__inference_simple_rnn_36_layer_call_fn_983723
.__inference_simple_rnn_36_layer_call_fn_983734
.__inference_simple_rnn_36_layer_call_fn_983745 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z{trace_0z|trace_1z}trace_2z~trace_3
к
trace_0
Аtrace_1
Бtrace_2
Вtrace_32щ
I__inference_simple_rnn_36_layer_call_and_return_conditional_losses_983853
I__inference_simple_rnn_36_layer_call_and_return_conditional_losses_983961
I__inference_simple_rnn_36_layer_call_and_return_conditional_losses_984069
I__inference_simple_rnn_36_layer_call_and_return_conditional_losses_984177 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 ztrace_0zАtrace_1zБtrace_2zВtrace_3
п
Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses
Й_random_generator

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
≤
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
Ѕ
Пtrace_0
Рtrace_12Ж
+__inference_dropout_36_layer_call_fn_984182
+__inference_dropout_36_layer_call_fn_984187©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zПtrace_0zРtrace_1
ч
Сtrace_0
Тtrace_12Љ
F__inference_dropout_36_layer_call_and_return_conditional_losses_984199
F__inference_dropout_36_layer_call_and_return_conditional_losses_984204©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zСtrace_0zТtrace_1
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
њ
Уstates
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
А
Щtrace_0
Ъtrace_1
Ыtrace_2
Ьtrace_32Н
.__inference_simple_rnn_37_layer_call_fn_984215
.__inference_simple_rnn_37_layer_call_fn_984226
.__inference_simple_rnn_37_layer_call_fn_984237
.__inference_simple_rnn_37_layer_call_fn_984248 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЩtrace_0zЪtrace_1zЫtrace_2zЬtrace_3
м
Эtrace_0
Юtrace_1
Яtrace_2
†trace_32щ
I__inference_simple_rnn_37_layer_call_and_return_conditional_losses_984356
I__inference_simple_rnn_37_layer_call_and_return_conditional_losses_984464
I__inference_simple_rnn_37_layer_call_and_return_conditional_losses_984572
I__inference_simple_rnn_37_layer_call_and_return_conditional_losses_984680 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЭtrace_0zЮtrace_1zЯtrace_2z†trace_3
п
°	variables
Ґtrainable_variables
£regularization_losses
§	keras_api
•__call__
+¶&call_and_return_all_conditional_losses
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
≤
®non_trainable_variables
©layers
™metrics
 Ђlayer_regularization_losses
ђlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
Ѕ
≠trace_0
Ѓtrace_12Ж
+__inference_dropout_37_layer_call_fn_984685
+__inference_dropout_37_layer_call_fn_984690©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z≠trace_0zЃtrace_1
ч
ѓtrace_0
∞trace_12Љ
F__inference_dropout_37_layer_call_and_return_conditional_losses_984702
F__inference_dropout_37_layer_call_and_return_conditional_losses_984707©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zѓtrace_0z∞trace_1
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
њ
±states
≤non_trainable_variables
≥layers
іmetrics
 µlayer_regularization_losses
ґlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
А
Јtrace_0
Єtrace_1
єtrace_2
Їtrace_32Н
.__inference_simple_rnn_38_layer_call_fn_984718
.__inference_simple_rnn_38_layer_call_fn_984729
.__inference_simple_rnn_38_layer_call_fn_984740
.__inference_simple_rnn_38_layer_call_fn_984751 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЈtrace_0zЄtrace_1zєtrace_2zЇtrace_3
м
їtrace_0
Љtrace_1
љtrace_2
Њtrace_32щ
I__inference_simple_rnn_38_layer_call_and_return_conditional_losses_984859
I__inference_simple_rnn_38_layer_call_and_return_conditional_losses_984967
I__inference_simple_rnn_38_layer_call_and_return_conditional_losses_985075
I__inference_simple_rnn_38_layer_call_and_return_conditional_losses_985183 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zїtrace_0zЉtrace_1zљtrace_2zЊtrace_3
п
њ	variables
јtrainable_variables
Ѕregularization_losses
¬	keras_api
√__call__
+ƒ&call_and_return_all_conditional_losses
≈_random_generator

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
≤
∆non_trainable_variables
«layers
»metrics
 …layer_regularization_losses
 layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
Ѕ
Ћtrace_0
ћtrace_12Ж
+__inference_dropout_38_layer_call_fn_985188
+__inference_dropout_38_layer_call_fn_985193©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЋtrace_0zћtrace_1
ч
Ќtrace_0
ќtrace_12Љ
F__inference_dropout_38_layer_call_and_return_conditional_losses_985205
F__inference_dropout_38_layer_call_and_return_conditional_losses_985210©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЌtrace_0zќtrace_1
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
њ
ѕstates
–non_trainable_variables
—layers
“metrics
 ”layer_regularization_losses
‘layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
А
’trace_0
÷trace_1
„trace_2
Ўtrace_32Н
.__inference_simple_rnn_39_layer_call_fn_985221
.__inference_simple_rnn_39_layer_call_fn_985232
.__inference_simple_rnn_39_layer_call_fn_985243
.__inference_simple_rnn_39_layer_call_fn_985254 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z’trace_0z÷trace_1z„trace_2zЎtrace_3
м
ўtrace_0
Џtrace_1
џtrace_2
№trace_32щ
I__inference_simple_rnn_39_layer_call_and_return_conditional_losses_985364
I__inference_simple_rnn_39_layer_call_and_return_conditional_losses_985474
I__inference_simple_rnn_39_layer_call_and_return_conditional_losses_985584
I__inference_simple_rnn_39_layer_call_and_return_conditional_losses_985694 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zўtrace_0zЏtrace_1zџtrace_2z№trace_3
п
Ё	variables
ёtrainable_variables
яregularization_losses
а	keras_api
б__call__
+в&call_and_return_all_conditional_losses
г_random_generator

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
≤
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
Ѕ
йtrace_0
кtrace_12Ж
+__inference_dropout_39_layer_call_fn_985699
+__inference_dropout_39_layer_call_fn_985704©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zйtrace_0zкtrace_1
ч
лtrace_0
мtrace_12Љ
F__inference_dropout_39_layer_call_and_return_conditional_losses_985716
F__inference_dropout_39_layer_call_and_return_conditional_losses_985721©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zлtrace_0zмtrace_1
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
≤
нnon_trainable_variables
оlayers
пmetrics
 рlayer_regularization_losses
сlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
д
тtrace_02≈
(__inference_dense_9_layer_call_fn_985730Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zтtrace_0
€
уtrace_02а
C__inference_dense_9_layer_call_and_return_conditional_losses_985740Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zуtrace_0
 :2dense_9/kernel
:2dense_9/bias
6:42$simple_rnn_36/simple_rnn_cell/kernel
@:>2.simple_rnn_36/simple_rnn_cell/recurrent_kernel
0:.2"simple_rnn_36/simple_rnn_cell/bias
6:42$simple_rnn_37/simple_rnn_cell/kernel
@:>2.simple_rnn_37/simple_rnn_cell/recurrent_kernel
0:.2"simple_rnn_37/simple_rnn_cell/bias
6:42$simple_rnn_38/simple_rnn_cell/kernel
@:>2.simple_rnn_38/simple_rnn_cell/recurrent_kernel
0:.2"simple_rnn_38/simple_rnn_cell/bias
6:42$simple_rnn_39/simple_rnn_cell/kernel
@:>2.simple_rnn_39/simple_rnn_cell/recurrent_kernel
0:.2"simple_rnn_39/simple_rnn_cell/bias
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
ф0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
шBх
-__inference_sequential_9_layer_call_fn_983425simple_rnn_36_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
-__inference_sequential_9_layer_call_fn_983458simple_rnn_36_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
УBР
H__inference_sequential_9_layer_call_and_return_conditional_losses_982897simple_rnn_36_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
УBР
H__inference_sequential_9_layer_call_and_return_conditional_losses_983392simple_rnn_36_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ъ
m0
х1
ц2
ч3
ш4
щ5
ъ6
ы7
ь8
э9
ю10
€11
А12
Б13
В14
Г15
Д16
Е17
Ж18
З19
И20
Й21
К22
Л23
М24
Н25
О26
П27
Р28"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
Ф
х0
ч1
щ2
ы3
э4
€5
Б6
Г7
Е8
З9
Й10
Л11
Н12
П13"
trackable_list_wrapper
Ф
ц0
ш1
ъ2
ь3
ю4
А5
В6
Д7
Ж8
И9
К10
М11
О12
Р13"
trackable_list_wrapper
: 2Nadam/Variable
Ћ
Сtrace_0
Тtrace_1
Уtrace_2
Фtrace_3
Хtrace_4
Цtrace_5
Чtrace_6
Шtrace_7
Щtrace_8
Ъtrace_9
Ыtrace_10
Ьtrace_11
Эtrace_12
Юtrace_132Є
#__inference__update_step_xla_983636
#__inference__update_step_xla_983641
#__inference__update_step_xla_983646
#__inference__update_step_xla_983651
#__inference__update_step_xla_983656
#__inference__update_step_xla_983661
#__inference__update_step_xla_983666
#__inference__update_step_xla_983671
#__inference__update_step_xla_983676
#__inference__update_step_xla_983681
#__inference__update_step_xla_983686
#__inference__update_step_xla_983691
#__inference__update_step_xla_983696
#__inference__update_step_xla_983701ѓ
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0zСtrace_0zТtrace_1zУtrace_2zФtrace_3zХtrace_4zЦtrace_5zЧtrace_6zШtrace_7zЩtrace_8zЪtrace_9zЫtrace_10zЬtrace_11zЭtrace_12zЮtrace_13
иBе
$__inference_signature_wrapper_983631simple_rnn_36_input"•
Ю≤Ъ
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 (

kwonlyargsЪ
jsimple_rnn_36_input
kwonlydefaults
 
annotations™ *
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
€Bь
.__inference_simple_rnn_36_layer_call_fn_983712inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
.__inference_simple_rnn_36_layer_call_fn_983723inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
эBъ
.__inference_simple_rnn_36_layer_call_fn_983734inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
эBъ
.__inference_simple_rnn_36_layer_call_fn_983745inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЪBЧ
I__inference_simple_rnn_36_layer_call_and_return_conditional_losses_983853inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЪBЧ
I__inference_simple_rnn_36_layer_call_and_return_conditional_losses_983961inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ШBХ
I__inference_simple_rnn_36_layer_call_and_return_conditional_losses_984069inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ШBХ
I__inference_simple_rnn_36_layer_call_and_return_conditional_losses_984177inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
Є
Яnon_trainable_variables
†layers
°metrics
 Ґlayer_regularization_losses
£layer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses"
_generic_user_object
’
§trace_0
•trace_12Ъ
0__inference_simple_rnn_cell_layer_call_fn_985754
0__inference_simple_rnn_cell_layer_call_fn_985768≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z§trace_0z•trace_1
Л
¶trace_0
Іtrace_12–
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985785
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985802≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z¶trace_0zІtrace_1
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
бBё
+__inference_dropout_36_layer_call_fn_984182inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
бBё
+__inference_dropout_36_layer_call_fn_984187inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
F__inference_dropout_36_layer_call_and_return_conditional_losses_984199inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
F__inference_dropout_36_layer_call_and_return_conditional_losses_984204inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
€Bь
.__inference_simple_rnn_37_layer_call_fn_984215inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
.__inference_simple_rnn_37_layer_call_fn_984226inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
эBъ
.__inference_simple_rnn_37_layer_call_fn_984237inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
эBъ
.__inference_simple_rnn_37_layer_call_fn_984248inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЪBЧ
I__inference_simple_rnn_37_layer_call_and_return_conditional_losses_984356inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЪBЧ
I__inference_simple_rnn_37_layer_call_and_return_conditional_losses_984464inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ШBХ
I__inference_simple_rnn_37_layer_call_and_return_conditional_losses_984572inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ШBХ
I__inference_simple_rnn_37_layer_call_and_return_conditional_losses_984680inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
Є
®non_trainable_variables
©layers
™metrics
 Ђlayer_regularization_losses
ђlayer_metrics
°	variables
Ґtrainable_variables
£regularization_losses
•__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses"
_generic_user_object
’
≠trace_0
Ѓtrace_12Ъ
0__inference_simple_rnn_cell_layer_call_fn_985816
0__inference_simple_rnn_cell_layer_call_fn_985830≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z≠trace_0zЃtrace_1
Л
ѓtrace_0
∞trace_12–
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985847
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985864≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zѓtrace_0z∞trace_1
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
бBё
+__inference_dropout_37_layer_call_fn_984685inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
бBё
+__inference_dropout_37_layer_call_fn_984690inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
F__inference_dropout_37_layer_call_and_return_conditional_losses_984702inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
F__inference_dropout_37_layer_call_and_return_conditional_losses_984707inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
€Bь
.__inference_simple_rnn_38_layer_call_fn_984718inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
.__inference_simple_rnn_38_layer_call_fn_984729inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
эBъ
.__inference_simple_rnn_38_layer_call_fn_984740inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
эBъ
.__inference_simple_rnn_38_layer_call_fn_984751inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЪBЧ
I__inference_simple_rnn_38_layer_call_and_return_conditional_losses_984859inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЪBЧ
I__inference_simple_rnn_38_layer_call_and_return_conditional_losses_984967inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ШBХ
I__inference_simple_rnn_38_layer_call_and_return_conditional_losses_985075inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ШBХ
I__inference_simple_rnn_38_layer_call_and_return_conditional_losses_985183inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
Є
±non_trainable_variables
≤layers
≥metrics
 іlayer_regularization_losses
µlayer_metrics
њ	variables
јtrainable_variables
Ѕregularization_losses
√__call__
+ƒ&call_and_return_all_conditional_losses
'ƒ"call_and_return_conditional_losses"
_generic_user_object
’
ґtrace_0
Јtrace_12Ъ
0__inference_simple_rnn_cell_layer_call_fn_985878
0__inference_simple_rnn_cell_layer_call_fn_985892≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zґtrace_0zЈtrace_1
Л
Єtrace_0
єtrace_12–
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985909
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985926≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЄtrace_0zєtrace_1
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
бBё
+__inference_dropout_38_layer_call_fn_985188inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
бBё
+__inference_dropout_38_layer_call_fn_985193inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
F__inference_dropout_38_layer_call_and_return_conditional_losses_985205inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
F__inference_dropout_38_layer_call_and_return_conditional_losses_985210inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
€Bь
.__inference_simple_rnn_39_layer_call_fn_985221inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
.__inference_simple_rnn_39_layer_call_fn_985232inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
эBъ
.__inference_simple_rnn_39_layer_call_fn_985243inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
эBъ
.__inference_simple_rnn_39_layer_call_fn_985254inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЪBЧ
I__inference_simple_rnn_39_layer_call_and_return_conditional_losses_985364inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЪBЧ
I__inference_simple_rnn_39_layer_call_and_return_conditional_losses_985474inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ШBХ
I__inference_simple_rnn_39_layer_call_and_return_conditional_losses_985584inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ШBХ
I__inference_simple_rnn_39_layer_call_and_return_conditional_losses_985694inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
Є
Їnon_trainable_variables
їlayers
Љmetrics
 љlayer_regularization_losses
Њlayer_metrics
Ё	variables
ёtrainable_variables
яregularization_losses
б__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses"
_generic_user_object
’
њtrace_0
јtrace_12Ъ
0__inference_simple_rnn_cell_layer_call_fn_985940
0__inference_simple_rnn_cell_layer_call_fn_985954≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zњtrace_0zјtrace_1
Л
Ѕtrace_0
¬trace_12–
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985971
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985988≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЅtrace_0z¬trace_1
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
бBё
+__inference_dropout_39_layer_call_fn_985699inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
бBё
+__inference_dropout_39_layer_call_fn_985704inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
F__inference_dropout_39_layer_call_and_return_conditional_losses_985716inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
F__inference_dropout_39_layer_call_and_return_conditional_losses_985721inputs"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
“Bѕ
(__inference_dense_9_layer_call_fn_985730inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_dense_9_layer_call_and_return_conditional_losses_985740inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
R
√	variables
ƒ	keras_api

≈total

∆count"
_tf_keras_metric
<::2,Nadam/m/simple_rnn_36/simple_rnn_cell/kernel
<::2,Nadam/v/simple_rnn_36/simple_rnn_cell/kernel
F:D26Nadam/m/simple_rnn_36/simple_rnn_cell/recurrent_kernel
F:D26Nadam/v/simple_rnn_36/simple_rnn_cell/recurrent_kernel
6:42*Nadam/m/simple_rnn_36/simple_rnn_cell/bias
6:42*Nadam/v/simple_rnn_36/simple_rnn_cell/bias
<::2,Nadam/m/simple_rnn_37/simple_rnn_cell/kernel
<::2,Nadam/v/simple_rnn_37/simple_rnn_cell/kernel
F:D26Nadam/m/simple_rnn_37/simple_rnn_cell/recurrent_kernel
F:D26Nadam/v/simple_rnn_37/simple_rnn_cell/recurrent_kernel
6:42*Nadam/m/simple_rnn_37/simple_rnn_cell/bias
6:42*Nadam/v/simple_rnn_37/simple_rnn_cell/bias
<::2,Nadam/m/simple_rnn_38/simple_rnn_cell/kernel
<::2,Nadam/v/simple_rnn_38/simple_rnn_cell/kernel
F:D26Nadam/m/simple_rnn_38/simple_rnn_cell/recurrent_kernel
F:D26Nadam/v/simple_rnn_38/simple_rnn_cell/recurrent_kernel
6:42*Nadam/m/simple_rnn_38/simple_rnn_cell/bias
6:42*Nadam/v/simple_rnn_38/simple_rnn_cell/bias
<::2,Nadam/m/simple_rnn_39/simple_rnn_cell/kernel
<::2,Nadam/v/simple_rnn_39/simple_rnn_cell/kernel
F:D26Nadam/m/simple_rnn_39/simple_rnn_cell/recurrent_kernel
F:D26Nadam/v/simple_rnn_39/simple_rnn_cell/recurrent_kernel
6:42*Nadam/m/simple_rnn_39/simple_rnn_cell/bias
6:42*Nadam/v/simple_rnn_39/simple_rnn_cell/bias
&:$2Nadam/m/dense_9/kernel
&:$2Nadam/v/dense_9/kernel
 :2Nadam/m/dense_9/bias
 :2Nadam/v/dense_9/bias
оBл
#__inference__update_step_xla_983636gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
#__inference__update_step_xla_983641gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
#__inference__update_step_xla_983646gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
#__inference__update_step_xla_983651gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
#__inference__update_step_xla_983656gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
#__inference__update_step_xla_983661gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
#__inference__update_step_xla_983666gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
#__inference__update_step_xla_983671gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
#__inference__update_step_xla_983676gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
#__inference__update_step_xla_983681gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
#__inference__update_step_xla_983686gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
#__inference__update_step_xla_983691gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
#__inference__update_step_xla_983696gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
#__inference__update_step_xla_983701gradientvariable"≠
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ъBч
0__inference_simple_rnn_cell_layer_call_fn_985754inputsstates_0"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
0__inference_simple_rnn_cell_layer_call_fn_985768inputsstates_0"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ХBТ
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985785inputsstates_0"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ХBТ
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985802inputsstates_0"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ъBч
0__inference_simple_rnn_cell_layer_call_fn_985816inputsstates_0"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
0__inference_simple_rnn_cell_layer_call_fn_985830inputsstates_0"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ХBТ
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985847inputsstates_0"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ХBТ
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985864inputsstates_0"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ъBч
0__inference_simple_rnn_cell_layer_call_fn_985878inputsstates_0"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
0__inference_simple_rnn_cell_layer_call_fn_985892inputsstates_0"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ХBТ
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985909inputsstates_0"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ХBТ
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985926inputsstates_0"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ъBч
0__inference_simple_rnn_cell_layer_call_fn_985940inputsstates_0"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
0__inference_simple_rnn_cell_layer_call_fn_985954inputsstates_0"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ХBТ
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985971inputsstates_0"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ХBТ
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985988inputsstates_0"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
0
≈0
∆1"
trackable_list_wrapper
.
√	variables"
_generic_user_object
:  (2total
:  (2countХ
#__inference__update_step_xla_983636nhҐe
^Ґ[
К
gradient
4Т1	Ґ
ъ
А
p
` VariableSpec 
`†Љу™іх?
™ "
 Х
#__inference__update_step_xla_983641nhҐe
^Ґ[
К
gradient
4Т1	Ґ
ъ
А
p
` VariableSpec 
`А√Яє«х?
™ "
 Н
#__inference__update_step_xla_983646f`Ґ]
VҐS
К
gradient
0Т-	Ґ
ъ
А
p
` VariableSpec 
`†Ет™іх?
™ "
 Х
#__inference__update_step_xla_983651nhҐe
^Ґ[
К
gradient
4Т1	Ґ
ъ
А
p
` VariableSpec 
`†£Тµіх?
™ "
 Х
#__inference__update_step_xla_983656nhҐe
^Ґ[
К
gradient
4Т1	Ґ
ъ
А
p
` VariableSpec 
`†І§йєх?
™ "
 Н
#__inference__update_step_xla_983661f`Ґ]
VҐS
К
gradient
0Т-	Ґ
ъ
А
p
` VariableSpec 
`†СТµіх?
™ "
 Х
#__inference__update_step_xla_983666nhҐe
^Ґ[
К
gradient
4Т1	Ґ
ъ
А
p
` VariableSpec 
`†ШЌµіх?
™ "
 Х
#__inference__update_step_xla_983671nhҐe
^Ґ[
К
gradient
4Т1	Ґ
ъ
А
p
` VariableSpec 
`авЖйєх?
™ "
 Н
#__inference__update_step_xla_983676f`Ґ]
VҐS
К
gradient
0Т-	Ґ
ъ
А
p
` VariableSpec 
`а∞ћµіх?
™ "
 Х
#__inference__update_step_xla_983681nhҐe
^Ґ[
К
gradient
4Т1	Ґ
ъ
А
p
` VariableSpec 
`†ВтЪЊц?
™ "
 Х
#__inference__update_step_xla_983686nhҐe
^Ґ[
К
gradient
4Т1	Ґ
ъ
А
p
` VariableSpec 
`јЇћкєх?
™ "
 Н
#__inference__update_step_xla_983691f`Ґ]
VҐS
К
gradient
0Т-	Ґ
ъ
А
p
` VariableSpec 
`†≥уЪЊц?
™ "
 Х
#__inference__update_step_xla_983696nhҐe
^Ґ[
К
gradient
4Т1	Ґ
ъ
А
p
` VariableSpec 
`ј«бі«х?
™ "
 Н
#__inference__update_step_xla_983701f`Ґ]
VҐS
К
gradient
0Т-	Ґ
ъ
А
p
` VariableSpec 
`†Фбі«х?
™ "
 Ђ
!__inference__wrapped_model_981208ЕWYXZ\[]_^`baUV@Ґ=
6Ґ3
1К.
simple_rnn_36_input€€€€€€€€€

™ "1™.
,
dense_9!К
dense_9€€€€€€€€€™
C__inference_dense_9_layer_call_and_return_conditional_losses_985740cUV/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Д
(__inference_dense_9_layer_call_fn_985730XUV/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "!К
unknown€€€€€€€€€µ
F__inference_dropout_36_layer_call_and_return_conditional_losses_984199k7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€

p
™ "0Ґ-
&К#
tensor_0€€€€€€€€€

Ъ µ
F__inference_dropout_36_layer_call_and_return_conditional_losses_984204k7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€

p 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€

Ъ П
+__inference_dropout_36_layer_call_fn_984182`7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€

p
™ "%К"
unknown€€€€€€€€€
П
+__inference_dropout_36_layer_call_fn_984187`7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€

p 
™ "%К"
unknown€€€€€€€€€
µ
F__inference_dropout_37_layer_call_and_return_conditional_losses_984702k7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€

p
™ "0Ґ-
&К#
tensor_0€€€€€€€€€

Ъ µ
F__inference_dropout_37_layer_call_and_return_conditional_losses_984707k7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€

p 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€

Ъ П
+__inference_dropout_37_layer_call_fn_984685`7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€

p
™ "%К"
unknown€€€€€€€€€
П
+__inference_dropout_37_layer_call_fn_984690`7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€

p 
™ "%К"
unknown€€€€€€€€€
µ
F__inference_dropout_38_layer_call_and_return_conditional_losses_985205k7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€

p
™ "0Ґ-
&К#
tensor_0€€€€€€€€€

Ъ µ
F__inference_dropout_38_layer_call_and_return_conditional_losses_985210k7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€

p 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€

Ъ П
+__inference_dropout_38_layer_call_fn_985188`7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€

p
™ "%К"
unknown€€€€€€€€€
П
+__inference_dropout_38_layer_call_fn_985193`7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€

p 
™ "%К"
unknown€€€€€€€€€
≠
F__inference_dropout_39_layer_call_and_return_conditional_losses_985716c3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ≠
F__inference_dropout_39_layer_call_and_return_conditional_losses_985721c3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ З
+__inference_dropout_39_layer_call_fn_985699X3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ "!К
unknown€€€€€€€€€З
+__inference_dropout_39_layer_call_fn_985704X3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ "!К
unknown€€€€€€€€€’
H__inference_sequential_9_layer_call_and_return_conditional_losses_982897ИWYXZ\[]_^`baUVHҐE
>Ґ;
1К.
simple_rnn_36_input€€€€€€€€€

p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ’
H__inference_sequential_9_layer_call_and_return_conditional_losses_983392ИWYXZ\[]_^`baUVHҐE
>Ґ;
1К.
simple_rnn_36_input€€€€€€€€€

p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Ѓ
-__inference_sequential_9_layer_call_fn_983425}WYXZ\[]_^`baUVHҐE
>Ґ;
1К.
simple_rnn_36_input€€€€€€€€€

p

 
™ "!К
unknown€€€€€€€€€Ѓ
-__inference_sequential_9_layer_call_fn_983458}WYXZ\[]_^`baUVHҐE
>Ґ;
1К.
simple_rnn_36_input€€€€€€€€€

p 

 
™ "!К
unknown€€€€€€€€€≈
$__inference_signature_wrapper_983631ЬWYXZ\[]_^`baUVWҐT
Ґ 
M™J
H
simple_rnn_36_input1К.
simple_rnn_36_input€€€€€€€€€
"1™.
,
dense_9!К
dense_9€€€€€€€€€я
I__inference_simple_rnn_36_layer_call_and_return_conditional_losses_983853СWYXOҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ я
I__inference_simple_rnn_36_layer_call_and_return_conditional_losses_983961СWYXOҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p 

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ ≈
I__inference_simple_rnn_36_layer_call_and_return_conditional_losses_984069xWYX?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€


 
p

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€

Ъ ≈
I__inference_simple_rnn_36_layer_call_and_return_conditional_losses_984177xWYX?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€


 
p 

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€

Ъ є
.__inference_simple_rnn_36_layer_call_fn_983712ЖWYXOҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€є
.__inference_simple_rnn_36_layer_call_fn_983723ЖWYXOҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p 

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€Я
.__inference_simple_rnn_36_layer_call_fn_983734mWYX?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€


 
p

 
™ "%К"
unknown€€€€€€€€€
Я
.__inference_simple_rnn_36_layer_call_fn_983745mWYX?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€


 
p 

 
™ "%К"
unknown€€€€€€€€€
я
I__inference_simple_rnn_37_layer_call_and_return_conditional_losses_984356СZ\[OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ я
I__inference_simple_rnn_37_layer_call_and_return_conditional_losses_984464СZ\[OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p 

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ ≈
I__inference_simple_rnn_37_layer_call_and_return_conditional_losses_984572xZ\[?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€


 
p

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€

Ъ ≈
I__inference_simple_rnn_37_layer_call_and_return_conditional_losses_984680xZ\[?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€


 
p 

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€

Ъ є
.__inference_simple_rnn_37_layer_call_fn_984215ЖZ\[OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€є
.__inference_simple_rnn_37_layer_call_fn_984226ЖZ\[OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p 

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€Я
.__inference_simple_rnn_37_layer_call_fn_984237mZ\[?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€


 
p

 
™ "%К"
unknown€€€€€€€€€
Я
.__inference_simple_rnn_37_layer_call_fn_984248mZ\[?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€


 
p 

 
™ "%К"
unknown€€€€€€€€€
я
I__inference_simple_rnn_38_layer_call_and_return_conditional_losses_984859С]_^OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ я
I__inference_simple_rnn_38_layer_call_and_return_conditional_losses_984967С]_^OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p 

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ ≈
I__inference_simple_rnn_38_layer_call_and_return_conditional_losses_985075x]_^?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€


 
p

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€

Ъ ≈
I__inference_simple_rnn_38_layer_call_and_return_conditional_losses_985183x]_^?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€


 
p 

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€

Ъ є
.__inference_simple_rnn_38_layer_call_fn_984718Ж]_^OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€є
.__inference_simple_rnn_38_layer_call_fn_984729Ж]_^OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p 

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€Я
.__inference_simple_rnn_38_layer_call_fn_984740m]_^?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€


 
p

 
™ "%К"
unknown€€€€€€€€€
Я
.__inference_simple_rnn_38_layer_call_fn_984751m]_^?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€


 
p 

 
™ "%К"
unknown€€€€€€€€€
“
I__inference_simple_rnn_39_layer_call_and_return_conditional_losses_985364Д`baOҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ “
I__inference_simple_rnn_39_layer_call_and_return_conditional_losses_985474Д`baOҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Ѕ
I__inference_simple_rnn_39_layer_call_and_return_conditional_losses_985584t`ba?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€


 
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Ѕ
I__inference_simple_rnn_39_layer_call_and_return_conditional_losses_985694t`ba?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€


 
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Ђ
.__inference_simple_rnn_39_layer_call_fn_985221y`baOҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p

 
™ "!К
unknown€€€€€€€€€Ђ
.__inference_simple_rnn_39_layer_call_fn_985232y`baOҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p 

 
™ "!К
unknown€€€€€€€€€Ы
.__inference_simple_rnn_39_layer_call_fn_985243i`ba?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€


 
p

 
™ "!К
unknown€€€€€€€€€Ы
.__inference_simple_rnn_39_layer_call_fn_985254i`ba?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€


 
p 

 
™ "!К
unknown€€€€€€€€€Х
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985785≈WYX\ҐY
RҐO
 К
inputs€€€€€€€€€
'Ґ$
"К
states_0€€€€€€€€€
p
™ "`Ґ]
VҐS
$К!

tensor_0_0€€€€€€€€€
+Ъ(
&К#
tensor_0_1_0€€€€€€€€€
Ъ Х
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985802≈WYX\ҐY
RҐO
 К
inputs€€€€€€€€€
'Ґ$
"К
states_0€€€€€€€€€
p 
™ "`Ґ]
VҐS
$К!

tensor_0_0€€€€€€€€€
+Ъ(
&К#
tensor_0_1_0€€€€€€€€€
Ъ Х
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985847≈Z\[\ҐY
RҐO
 К
inputs€€€€€€€€€
'Ґ$
"К
states_0€€€€€€€€€
p
™ "`Ґ]
VҐS
$К!

tensor_0_0€€€€€€€€€
+Ъ(
&К#
tensor_0_1_0€€€€€€€€€
Ъ Х
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985864≈Z\[\ҐY
RҐO
 К
inputs€€€€€€€€€
'Ґ$
"К
states_0€€€€€€€€€
p 
™ "`Ґ]
VҐS
$К!

tensor_0_0€€€€€€€€€
+Ъ(
&К#
tensor_0_1_0€€€€€€€€€
Ъ Х
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985909≈]_^\ҐY
RҐO
 К
inputs€€€€€€€€€
'Ґ$
"К
states_0€€€€€€€€€
p
™ "`Ґ]
VҐS
$К!

tensor_0_0€€€€€€€€€
+Ъ(
&К#
tensor_0_1_0€€€€€€€€€
Ъ Х
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985926≈]_^\ҐY
RҐO
 К
inputs€€€€€€€€€
'Ґ$
"К
states_0€€€€€€€€€
p 
™ "`Ґ]
VҐS
$К!

tensor_0_0€€€€€€€€€
+Ъ(
&К#
tensor_0_1_0€€€€€€€€€
Ъ Х
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985971≈`ba\ҐY
RҐO
 К
inputs€€€€€€€€€
'Ґ$
"К
states_0€€€€€€€€€
p
™ "`Ґ]
VҐS
$К!

tensor_0_0€€€€€€€€€
+Ъ(
&К#
tensor_0_1_0€€€€€€€€€
Ъ Х
K__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_985988≈`ba\ҐY
RҐO
 К
inputs€€€€€€€€€
'Ґ$
"К
states_0€€€€€€€€€
p 
™ "`Ґ]
VҐS
$К!

tensor_0_0€€€€€€€€€
+Ъ(
&К#
tensor_0_1_0€€€€€€€€€
Ъ м
0__inference_simple_rnn_cell_layer_call_fn_985754ЈWYX\ҐY
RҐO
 К
inputs€€€€€€€€€
'Ґ$
"К
states_0€€€€€€€€€
p
™ "RҐO
"К
tensor_0€€€€€€€€€
)Ъ&
$К!

tensor_1_0€€€€€€€€€м
0__inference_simple_rnn_cell_layer_call_fn_985768ЈWYX\ҐY
RҐO
 К
inputs€€€€€€€€€
'Ґ$
"К
states_0€€€€€€€€€
p 
™ "RҐO
"К
tensor_0€€€€€€€€€
)Ъ&
$К!

tensor_1_0€€€€€€€€€м
0__inference_simple_rnn_cell_layer_call_fn_985816ЈZ\[\ҐY
RҐO
 К
inputs€€€€€€€€€
'Ґ$
"К
states_0€€€€€€€€€
p
™ "RҐO
"К
tensor_0€€€€€€€€€
)Ъ&
$К!

tensor_1_0€€€€€€€€€м
0__inference_simple_rnn_cell_layer_call_fn_985830ЈZ\[\ҐY
RҐO
 К
inputs€€€€€€€€€
'Ґ$
"К
states_0€€€€€€€€€
p 
™ "RҐO
"К
tensor_0€€€€€€€€€
)Ъ&
$К!

tensor_1_0€€€€€€€€€м
0__inference_simple_rnn_cell_layer_call_fn_985878Ј]_^\ҐY
RҐO
 К
inputs€€€€€€€€€
'Ґ$
"К
states_0€€€€€€€€€
p
™ "RҐO
"К
tensor_0€€€€€€€€€
)Ъ&
$К!

tensor_1_0€€€€€€€€€м
0__inference_simple_rnn_cell_layer_call_fn_985892Ј]_^\ҐY
RҐO
 К
inputs€€€€€€€€€
'Ґ$
"К
states_0€€€€€€€€€
p 
™ "RҐO
"К
tensor_0€€€€€€€€€
)Ъ&
$К!

tensor_1_0€€€€€€€€€м
0__inference_simple_rnn_cell_layer_call_fn_985940Ј`ba\ҐY
RҐO
 К
inputs€€€€€€€€€
'Ґ$
"К
states_0€€€€€€€€€
p
™ "RҐO
"К
tensor_0€€€€€€€€€
)Ъ&
$К!

tensor_1_0€€€€€€€€€м
0__inference_simple_rnn_cell_layer_call_fn_985954Ј`ba\ҐY
RҐO
 К
inputs€€€€€€€€€
'Ґ$
"К
states_0€€€€€€€€€
p 
™ "RҐO
"К
tensor_0€€€€€€€€€
)Ъ&
$К!

tensor_1_0€€€€€€€€€