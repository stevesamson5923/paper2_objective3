ЄЖ3
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
"serve*2.15.02v2.15.0-2-g0b15fdfcb3f8ћ/
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
Ё
Nadam/v/dense/biasVarHandleOp*
_output_shapes
: *#

debug_nameNadam/v/dense/bias/*
dtype0*
shape:*#
shared_nameNadam/v/dense/bias
u
&Nadam/v/dense/bias/Read/ReadVariableOpReadVariableOpNadam/v/dense/bias*
_output_shapes
:*
dtype0
Ё
Nadam/m/dense/biasVarHandleOp*
_output_shapes
: *#

debug_nameNadam/m/dense/bias/*
dtype0*
shape:*#
shared_nameNadam/m/dense/bias
u
&Nadam/m/dense/bias/Read/ReadVariableOpReadVariableOpNadam/m/dense/bias*
_output_shapes
:*
dtype0
Ћ
Nadam/v/dense/kernelVarHandleOp*
_output_shapes
: *%

debug_nameNadam/v/dense/kernel/*
dtype0*
shape
:*%
shared_nameNadam/v/dense/kernel
}
(Nadam/v/dense/kernel/Read/ReadVariableOpReadVariableOpNadam/v/dense/kernel*
_output_shapes

:*
dtype0
Ћ
Nadam/m/dense/kernelVarHandleOp*
_output_shapes
: *%

debug_nameNadam/m/dense/kernel/*
dtype0*
shape
:*%
shared_nameNadam/m/dense/kernel
}
(Nadam/m/dense/kernel/Read/ReadVariableOpReadVariableOpNadam/m/dense/kernel*
_output_shapes

:*
dtype0
ц
)Nadam/v/simple_rnn_3/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *:

debug_name,*Nadam/v/simple_rnn_3/simple_rnn_cell/bias/*
dtype0*
shape:*:
shared_name+)Nadam/v/simple_rnn_3/simple_rnn_cell/bias
Ѓ
=Nadam/v/simple_rnn_3/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp)Nadam/v/simple_rnn_3/simple_rnn_cell/bias*
_output_shapes
:*
dtype0
ц
)Nadam/m/simple_rnn_3/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *:

debug_name,*Nadam/m/simple_rnn_3/simple_rnn_cell/bias/*
dtype0*
shape:*:
shared_name+)Nadam/m/simple_rnn_3/simple_rnn_cell/bias
Ѓ
=Nadam/m/simple_rnn_3/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp)Nadam/m/simple_rnn_3/simple_rnn_cell/bias*
_output_shapes
:*
dtype0

5Nadam/v/simple_rnn_3/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *F

debug_name86Nadam/v/simple_rnn_3/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:*F
shared_name75Nadam/v/simple_rnn_3/simple_rnn_cell/recurrent_kernel
П
INadam/v/simple_rnn_3/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp5Nadam/v/simple_rnn_3/simple_rnn_cell/recurrent_kernel*
_output_shapes

:*
dtype0

5Nadam/m/simple_rnn_3/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *F

debug_name86Nadam/m/simple_rnn_3/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:*F
shared_name75Nadam/m/simple_rnn_3/simple_rnn_cell/recurrent_kernel
П
INadam/m/simple_rnn_3/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp5Nadam/m/simple_rnn_3/simple_rnn_cell/recurrent_kernel*
_output_shapes

:*
dtype0
№
+Nadam/v/simple_rnn_3/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *<

debug_name.,Nadam/v/simple_rnn_3/simple_rnn_cell/kernel/*
dtype0*
shape
:*<
shared_name-+Nadam/v/simple_rnn_3/simple_rnn_cell/kernel
Ћ
?Nadam/v/simple_rnn_3/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp+Nadam/v/simple_rnn_3/simple_rnn_cell/kernel*
_output_shapes

:*
dtype0
№
+Nadam/m/simple_rnn_3/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *<

debug_name.,Nadam/m/simple_rnn_3/simple_rnn_cell/kernel/*
dtype0*
shape
:*<
shared_name-+Nadam/m/simple_rnn_3/simple_rnn_cell/kernel
Ћ
?Nadam/m/simple_rnn_3/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp+Nadam/m/simple_rnn_3/simple_rnn_cell/kernel*
_output_shapes

:*
dtype0
ц
)Nadam/v/simple_rnn_2/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *:

debug_name,*Nadam/v/simple_rnn_2/simple_rnn_cell/bias/*
dtype0*
shape:*:
shared_name+)Nadam/v/simple_rnn_2/simple_rnn_cell/bias
Ѓ
=Nadam/v/simple_rnn_2/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp)Nadam/v/simple_rnn_2/simple_rnn_cell/bias*
_output_shapes
:*
dtype0
ц
)Nadam/m/simple_rnn_2/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *:

debug_name,*Nadam/m/simple_rnn_2/simple_rnn_cell/bias/*
dtype0*
shape:*:
shared_name+)Nadam/m/simple_rnn_2/simple_rnn_cell/bias
Ѓ
=Nadam/m/simple_rnn_2/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp)Nadam/m/simple_rnn_2/simple_rnn_cell/bias*
_output_shapes
:*
dtype0

5Nadam/v/simple_rnn_2/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *F

debug_name86Nadam/v/simple_rnn_2/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:*F
shared_name75Nadam/v/simple_rnn_2/simple_rnn_cell/recurrent_kernel
П
INadam/v/simple_rnn_2/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp5Nadam/v/simple_rnn_2/simple_rnn_cell/recurrent_kernel*
_output_shapes

:*
dtype0

5Nadam/m/simple_rnn_2/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *F

debug_name86Nadam/m/simple_rnn_2/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:*F
shared_name75Nadam/m/simple_rnn_2/simple_rnn_cell/recurrent_kernel
П
INadam/m/simple_rnn_2/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp5Nadam/m/simple_rnn_2/simple_rnn_cell/recurrent_kernel*
_output_shapes

:*
dtype0
№
+Nadam/v/simple_rnn_2/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *<

debug_name.,Nadam/v/simple_rnn_2/simple_rnn_cell/kernel/*
dtype0*
shape
:*<
shared_name-+Nadam/v/simple_rnn_2/simple_rnn_cell/kernel
Ћ
?Nadam/v/simple_rnn_2/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp+Nadam/v/simple_rnn_2/simple_rnn_cell/kernel*
_output_shapes

:*
dtype0
№
+Nadam/m/simple_rnn_2/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *<

debug_name.,Nadam/m/simple_rnn_2/simple_rnn_cell/kernel/*
dtype0*
shape
:*<
shared_name-+Nadam/m/simple_rnn_2/simple_rnn_cell/kernel
Ћ
?Nadam/m/simple_rnn_2/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp+Nadam/m/simple_rnn_2/simple_rnn_cell/kernel*
_output_shapes

:*
dtype0
ц
)Nadam/v/simple_rnn_1/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *:

debug_name,*Nadam/v/simple_rnn_1/simple_rnn_cell/bias/*
dtype0*
shape:*:
shared_name+)Nadam/v/simple_rnn_1/simple_rnn_cell/bias
Ѓ
=Nadam/v/simple_rnn_1/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp)Nadam/v/simple_rnn_1/simple_rnn_cell/bias*
_output_shapes
:*
dtype0
ц
)Nadam/m/simple_rnn_1/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *:

debug_name,*Nadam/m/simple_rnn_1/simple_rnn_cell/bias/*
dtype0*
shape:*:
shared_name+)Nadam/m/simple_rnn_1/simple_rnn_cell/bias
Ѓ
=Nadam/m/simple_rnn_1/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp)Nadam/m/simple_rnn_1/simple_rnn_cell/bias*
_output_shapes
:*
dtype0

5Nadam/v/simple_rnn_1/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *F

debug_name86Nadam/v/simple_rnn_1/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:*F
shared_name75Nadam/v/simple_rnn_1/simple_rnn_cell/recurrent_kernel
П
INadam/v/simple_rnn_1/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp5Nadam/v/simple_rnn_1/simple_rnn_cell/recurrent_kernel*
_output_shapes

:*
dtype0

5Nadam/m/simple_rnn_1/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *F

debug_name86Nadam/m/simple_rnn_1/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:*F
shared_name75Nadam/m/simple_rnn_1/simple_rnn_cell/recurrent_kernel
П
INadam/m/simple_rnn_1/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp5Nadam/m/simple_rnn_1/simple_rnn_cell/recurrent_kernel*
_output_shapes

:*
dtype0
№
+Nadam/v/simple_rnn_1/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *<

debug_name.,Nadam/v/simple_rnn_1/simple_rnn_cell/kernel/*
dtype0*
shape
:*<
shared_name-+Nadam/v/simple_rnn_1/simple_rnn_cell/kernel
Ћ
?Nadam/v/simple_rnn_1/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp+Nadam/v/simple_rnn_1/simple_rnn_cell/kernel*
_output_shapes

:*
dtype0
№
+Nadam/m/simple_rnn_1/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *<

debug_name.,Nadam/m/simple_rnn_1/simple_rnn_cell/kernel/*
dtype0*
shape
:*<
shared_name-+Nadam/m/simple_rnn_1/simple_rnn_cell/kernel
Ћ
?Nadam/m/simple_rnn_1/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp+Nadam/m/simple_rnn_1/simple_rnn_cell/kernel*
_output_shapes

:*
dtype0
р
'Nadam/v/simple_rnn/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *8

debug_name*(Nadam/v/simple_rnn/simple_rnn_cell/bias/*
dtype0*
shape:*8
shared_name)'Nadam/v/simple_rnn/simple_rnn_cell/bias

;Nadam/v/simple_rnn/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp'Nadam/v/simple_rnn/simple_rnn_cell/bias*
_output_shapes
:*
dtype0
р
'Nadam/m/simple_rnn/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *8

debug_name*(Nadam/m/simple_rnn/simple_rnn_cell/bias/*
dtype0*
shape:*8
shared_name)'Nadam/m/simple_rnn/simple_rnn_cell/bias

;Nadam/m/simple_rnn/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp'Nadam/m/simple_rnn/simple_rnn_cell/bias*
_output_shapes
:*
dtype0

3Nadam/v/simple_rnn/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *D

debug_name64Nadam/v/simple_rnn/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:*D
shared_name53Nadam/v/simple_rnn/simple_rnn_cell/recurrent_kernel
Л
GNadam/v/simple_rnn/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp3Nadam/v/simple_rnn/simple_rnn_cell/recurrent_kernel*
_output_shapes

:*
dtype0

3Nadam/m/simple_rnn/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *D

debug_name64Nadam/m/simple_rnn/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:*D
shared_name53Nadam/m/simple_rnn/simple_rnn_cell/recurrent_kernel
Л
GNadam/m/simple_rnn/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp3Nadam/m/simple_rnn/simple_rnn_cell/recurrent_kernel*
_output_shapes

:*
dtype0
ъ
)Nadam/v/simple_rnn/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *:

debug_name,*Nadam/v/simple_rnn/simple_rnn_cell/kernel/*
dtype0*
shape
:*:
shared_name+)Nadam/v/simple_rnn/simple_rnn_cell/kernel
Ї
=Nadam/v/simple_rnn/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp)Nadam/v/simple_rnn/simple_rnn_cell/kernel*
_output_shapes

:*
dtype0
ъ
)Nadam/m/simple_rnn/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *:

debug_name,*Nadam/m/simple_rnn/simple_rnn_cell/kernel/*
dtype0*
shape
:*:
shared_name+)Nadam/m/simple_rnn/simple_rnn_cell/kernel
Ї
=Nadam/m/simple_rnn/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp)Nadam/m/simple_rnn/simple_rnn_cell/kernel*
_output_shapes

:*
dtype0

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
Ю
!simple_rnn_3/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *2

debug_name$"simple_rnn_3/simple_rnn_cell/bias/*
dtype0*
shape:*2
shared_name#!simple_rnn_3/simple_rnn_cell/bias

5simple_rnn_3/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp!simple_rnn_3/simple_rnn_cell/bias*
_output_shapes
:*
dtype0
і
-simple_rnn_3/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *>

debug_name0.simple_rnn_3/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:*>
shared_name/-simple_rnn_3/simple_rnn_cell/recurrent_kernel
Џ
Asimple_rnn_3/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp-simple_rnn_3/simple_rnn_cell/recurrent_kernel*
_output_shapes

:*
dtype0
и
#simple_rnn_3/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *4

debug_name&$simple_rnn_3/simple_rnn_cell/kernel/*
dtype0*
shape
:*4
shared_name%#simple_rnn_3/simple_rnn_cell/kernel

7simple_rnn_3/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp#simple_rnn_3/simple_rnn_cell/kernel*
_output_shapes

:*
dtype0
Ю
!simple_rnn_2/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *2

debug_name$"simple_rnn_2/simple_rnn_cell/bias/*
dtype0*
shape:*2
shared_name#!simple_rnn_2/simple_rnn_cell/bias

5simple_rnn_2/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp!simple_rnn_2/simple_rnn_cell/bias*
_output_shapes
:*
dtype0
і
-simple_rnn_2/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *>

debug_name0.simple_rnn_2/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:*>
shared_name/-simple_rnn_2/simple_rnn_cell/recurrent_kernel
Џ
Asimple_rnn_2/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp-simple_rnn_2/simple_rnn_cell/recurrent_kernel*
_output_shapes

:*
dtype0
и
#simple_rnn_2/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *4

debug_name&$simple_rnn_2/simple_rnn_cell/kernel/*
dtype0*
shape
:*4
shared_name%#simple_rnn_2/simple_rnn_cell/kernel

7simple_rnn_2/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp#simple_rnn_2/simple_rnn_cell/kernel*
_output_shapes

:*
dtype0
Ю
!simple_rnn_1/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *2

debug_name$"simple_rnn_1/simple_rnn_cell/bias/*
dtype0*
shape:*2
shared_name#!simple_rnn_1/simple_rnn_cell/bias

5simple_rnn_1/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp!simple_rnn_1/simple_rnn_cell/bias*
_output_shapes
:*
dtype0
і
-simple_rnn_1/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *>

debug_name0.simple_rnn_1/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:*>
shared_name/-simple_rnn_1/simple_rnn_cell/recurrent_kernel
Џ
Asimple_rnn_1/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp-simple_rnn_1/simple_rnn_cell/recurrent_kernel*
_output_shapes

:*
dtype0
и
#simple_rnn_1/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *4

debug_name&$simple_rnn_1/simple_rnn_cell/kernel/*
dtype0*
shape
:*4
shared_name%#simple_rnn_1/simple_rnn_cell/kernel

7simple_rnn_1/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp#simple_rnn_1/simple_rnn_cell/kernel*
_output_shapes

:*
dtype0
Ш
simple_rnn/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *0

debug_name" simple_rnn/simple_rnn_cell/bias/*
dtype0*
shape:*0
shared_name!simple_rnn/simple_rnn_cell/bias

3simple_rnn/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOpsimple_rnn/simple_rnn_cell/bias*
_output_shapes
:*
dtype0
№
+simple_rnn/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *<

debug_name.,simple_rnn/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:*<
shared_name-+simple_rnn/simple_rnn_cell/recurrent_kernel
Ћ
?simple_rnn/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp+simple_rnn/simple_rnn_cell/recurrent_kernel*
_output_shapes

:*
dtype0
в
!simple_rnn/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *2

debug_name$"simple_rnn/simple_rnn_cell/kernel/*
dtype0*
shape
:*2
shared_name#!simple_rnn/simple_rnn_cell/kernel

5simple_rnn/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp!simple_rnn/simple_rnn_cell/kernel*
_output_shapes

:*
dtype0


dense/biasVarHandleOp*
_output_shapes
: *

debug_namedense/bias/*
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0

dense/kernelVarHandleOp*
_output_shapes
: *

debug_namedense/kernel/*
dtype0*
shape
:*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:*
dtype0

 serving_default_simple_rnn_inputPlaceholder*+
_output_shapes
:џџџџџџџџџ
*
dtype0* 
shape:џџџџџџџџџ

Щ
StatefulPartitionedCallStatefulPartitionedCall serving_default_simple_rnn_input!simple_rnn/simple_rnn_cell/kernelsimple_rnn/simple_rnn_cell/bias+simple_rnn/simple_rnn_cell/recurrent_kernel#simple_rnn_1/simple_rnn_cell/kernel!simple_rnn_1/simple_rnn_cell/bias-simple_rnn_1/simple_rnn_cell/recurrent_kernel#simple_rnn_2/simple_rnn_cell/kernel!simple_rnn_2/simple_rnn_cell/bias-simple_rnn_2/simple_rnn_cell/recurrent_kernel#simple_rnn_3/simple_rnn_cell/kernel!simple_rnn_3/simple_rnn_cell/bias-simple_rnn_3/simple_rnn_cell/recurrent_kerneldense/kernel
dense/bias*
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
GPU2*0J 8 *,
f'R%
#__inference_signature_wrapper_64332

NoOpNoOp
№{
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ћ{
valueЁ{B{ B{
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

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


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
trace_1
trace_2
trace_3* 
к
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator

Wkernel
Xrecurrent_kernel
Ybias*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses* 

trace_0
trace_1* 

trace_0
trace_1* 
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
states
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
 trace_3* 
к
Ё	variables
Ђtrainable_variables
Ѓregularization_losses
Є	keras_api
Ѕ__call__
+І&call_and_return_all_conditional_losses
Ї_random_generator

Zkernel
[recurrent_kernel
\bias*
* 
* 
* 
* 

Јnon_trainable_variables
Љlayers
Њmetrics
 Ћlayer_regularization_losses
Ќlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses* 

­trace_0
Ўtrace_1* 

Џtrace_0
Аtrace_1* 
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
Бstates
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*
:
Зtrace_0
Иtrace_1
Йtrace_2
Кtrace_3* 
:
Лtrace_0
Мtrace_1
Нtrace_2
Оtrace_3* 
к
П	variables
Рtrainable_variables
Сregularization_losses
Т	keras_api
У__call__
+Ф&call_and_return_all_conditional_losses
Х_random_generator

]kernel
^recurrent_kernel
_bias*
* 
* 
* 
* 

Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses* 

Ыtrace_0
Ьtrace_1* 

Эtrace_0
Юtrace_1* 
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
Яstates
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*
:
еtrace_0
жtrace_1
зtrace_2
иtrace_3* 
:
йtrace_0
кtrace_1
лtrace_2
мtrace_3* 
к
н	variables
оtrainable_variables
пregularization_losses
р	keras_api
с__call__
+т&call_and_return_all_conditional_losses
у_random_generator

`kernel
arecurrent_kernel
bbias*
* 
* 
* 
* 

фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses* 

щtrace_0
ъtrace_1* 

ыtrace_0
ьtrace_1* 
* 

U0
V1*

U0
V1*
* 

эnon_trainable_variables
юlayers
яmetrics
 №layer_regularization_losses
ёlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*

ђtrace_0* 

ѓtrace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!simple_rnn/simple_rnn_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE+simple_rnn/simple_rnn_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEsimple_rnn/simple_rnn_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#simple_rnn_1/simple_rnn_cell/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE-simple_rnn_1/simple_rnn_cell/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!simple_rnn_1/simple_rnn_cell/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#simple_rnn_2/simple_rnn_cell/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE-simple_rnn_2/simple_rnn_cell/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!simple_rnn_2/simple_rnn_cell/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#simple_rnn_3/simple_rnn_cell/kernel&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-simple_rnn_3/simple_rnn_cell/recurrent_kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!simple_rnn_3/simple_rnn_cell/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
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

є0*
* 
* 
* 
* 
* 
* 
ў
m0
ѕ1
і2
ї3
ј4
љ5
њ6
ћ7
ќ8
§9
ў10
џ11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
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
x
і0
ј1
њ2
ќ3
ў4
5
6
7
8
9
10
11
12
13*
WQ
VARIABLE_VALUENadam/Variable/optimizer/_u_product/.ATTRIBUTES/VARIABLE_VALUE*
Ъ
trace_0
trace_1
trace_2
trace_3
trace_4
trace_5
trace_6
trace_7
trace_8
trace_9
trace_10
trace_11
trace_12
trace_13* 
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
non_trainable_variables
 layers
Ёmetrics
 Ђlayer_regularization_losses
Ѓlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Єtrace_0
Ѕtrace_1* 

Іtrace_0
Їtrace_1* 
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
Јnon_trainable_variables
Љlayers
Њmetrics
 Ћlayer_regularization_losses
Ќlayer_metrics
Ё	variables
Ђtrainable_variables
Ѓregularization_losses
Ѕ__call__
+І&call_and_return_all_conditional_losses
'І"call_and_return_conditional_losses*

­trace_0
Ўtrace_1* 

Џtrace_0
Аtrace_1* 
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
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
П	variables
Рtrainable_variables
Сregularization_losses
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses*

Жtrace_0
Зtrace_1* 

Иtrace_0
Йtrace_1* 
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
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
н	variables
оtrainable_variables
пregularization_losses
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses*

Пtrace_0
Рtrace_1* 

Сtrace_0
Тtrace_1* 
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
У	variables
Ф	keras_api

Хtotal

Цcount*
tn
VARIABLE_VALUE)Nadam/m/simple_rnn/simple_rnn_cell/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE)Nadam/v/simple_rnn/simple_rnn_cell/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE3Nadam/m/simple_rnn/simple_rnn_cell/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE3Nadam/v/simple_rnn/simple_rnn_cell/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE'Nadam/m/simple_rnn/simple_rnn_cell/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE'Nadam/v/simple_rnn/simple_rnn_cell/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE+Nadam/m/simple_rnn_1/simple_rnn_cell/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE+Nadam/v/simple_rnn_1/simple_rnn_cell/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE5Nadam/m/simple_rnn_1/simple_rnn_cell/recurrent_kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUE5Nadam/v/simple_rnn_1/simple_rnn_cell/recurrent_kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE)Nadam/m/simple_rnn_1/simple_rnn_cell/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE)Nadam/v/simple_rnn_1/simple_rnn_cell/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE+Nadam/m/simple_rnn_2/simple_rnn_cell/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE+Nadam/v/simple_rnn_2/simple_rnn_cell/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUE5Nadam/m/simple_rnn_2/simple_rnn_cell/recurrent_kernel2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUE5Nadam/v/simple_rnn_2/simple_rnn_cell/recurrent_kernel2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE)Nadam/m/simple_rnn_2/simple_rnn_cell/bias2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE)Nadam/v/simple_rnn_2/simple_rnn_cell/bias2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE+Nadam/m/simple_rnn_3/simple_rnn_cell/kernel2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE+Nadam/v/simple_rnn_3/simple_rnn_cell/kernel2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUE5Nadam/m/simple_rnn_3/simple_rnn_cell/recurrent_kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUE5Nadam/v/simple_rnn_3/simple_rnn_cell/recurrent_kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE)Nadam/m/simple_rnn_3/simple_rnn_cell/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE)Nadam/v/simple_rnn_3/simple_rnn_cell/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUENadam/m/dense/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUENadam/v/dense/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUENadam/m/dense/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUENadam/v/dense/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
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
Х0
Ц1*

У	variables*
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
Д
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense/kernel
dense/bias!simple_rnn/simple_rnn_cell/kernel+simple_rnn/simple_rnn_cell/recurrent_kernelsimple_rnn/simple_rnn_cell/bias#simple_rnn_1/simple_rnn_cell/kernel-simple_rnn_1/simple_rnn_cell/recurrent_kernel!simple_rnn_1/simple_rnn_cell/bias#simple_rnn_2/simple_rnn_cell/kernel-simple_rnn_2/simple_rnn_cell/recurrent_kernel!simple_rnn_2/simple_rnn_cell/bias#simple_rnn_3/simple_rnn_cell/kernel-simple_rnn_3/simple_rnn_cell/recurrent_kernel!simple_rnn_3/simple_rnn_cell/bias	iterationlearning_rateNadam/Variable)Nadam/m/simple_rnn/simple_rnn_cell/kernel)Nadam/v/simple_rnn/simple_rnn_cell/kernel3Nadam/m/simple_rnn/simple_rnn_cell/recurrent_kernel3Nadam/v/simple_rnn/simple_rnn_cell/recurrent_kernel'Nadam/m/simple_rnn/simple_rnn_cell/bias'Nadam/v/simple_rnn/simple_rnn_cell/bias+Nadam/m/simple_rnn_1/simple_rnn_cell/kernel+Nadam/v/simple_rnn_1/simple_rnn_cell/kernel5Nadam/m/simple_rnn_1/simple_rnn_cell/recurrent_kernel5Nadam/v/simple_rnn_1/simple_rnn_cell/recurrent_kernel)Nadam/m/simple_rnn_1/simple_rnn_cell/bias)Nadam/v/simple_rnn_1/simple_rnn_cell/bias+Nadam/m/simple_rnn_2/simple_rnn_cell/kernel+Nadam/v/simple_rnn_2/simple_rnn_cell/kernel5Nadam/m/simple_rnn_2/simple_rnn_cell/recurrent_kernel5Nadam/v/simple_rnn_2/simple_rnn_cell/recurrent_kernel)Nadam/m/simple_rnn_2/simple_rnn_cell/bias)Nadam/v/simple_rnn_2/simple_rnn_cell/bias+Nadam/m/simple_rnn_3/simple_rnn_cell/kernel+Nadam/v/simple_rnn_3/simple_rnn_cell/kernel5Nadam/m/simple_rnn_3/simple_rnn_cell/recurrent_kernel5Nadam/v/simple_rnn_3/simple_rnn_cell/recurrent_kernel)Nadam/m/simple_rnn_3/simple_rnn_cell/bias)Nadam/v/simple_rnn_3/simple_rnn_cell/biasNadam/m/dense/kernelNadam/v/dense/kernelNadam/m/dense/biasNadam/v/dense/biastotalcountConst*<
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
GPU2*0J 8 *'
f"R 
__inference__traced_save_66993
Џ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/bias!simple_rnn/simple_rnn_cell/kernel+simple_rnn/simple_rnn_cell/recurrent_kernelsimple_rnn/simple_rnn_cell/bias#simple_rnn_1/simple_rnn_cell/kernel-simple_rnn_1/simple_rnn_cell/recurrent_kernel!simple_rnn_1/simple_rnn_cell/bias#simple_rnn_2/simple_rnn_cell/kernel-simple_rnn_2/simple_rnn_cell/recurrent_kernel!simple_rnn_2/simple_rnn_cell/bias#simple_rnn_3/simple_rnn_cell/kernel-simple_rnn_3/simple_rnn_cell/recurrent_kernel!simple_rnn_3/simple_rnn_cell/bias	iterationlearning_rateNadam/Variable)Nadam/m/simple_rnn/simple_rnn_cell/kernel)Nadam/v/simple_rnn/simple_rnn_cell/kernel3Nadam/m/simple_rnn/simple_rnn_cell/recurrent_kernel3Nadam/v/simple_rnn/simple_rnn_cell/recurrent_kernel'Nadam/m/simple_rnn/simple_rnn_cell/bias'Nadam/v/simple_rnn/simple_rnn_cell/bias+Nadam/m/simple_rnn_1/simple_rnn_cell/kernel+Nadam/v/simple_rnn_1/simple_rnn_cell/kernel5Nadam/m/simple_rnn_1/simple_rnn_cell/recurrent_kernel5Nadam/v/simple_rnn_1/simple_rnn_cell/recurrent_kernel)Nadam/m/simple_rnn_1/simple_rnn_cell/bias)Nadam/v/simple_rnn_1/simple_rnn_cell/bias+Nadam/m/simple_rnn_2/simple_rnn_cell/kernel+Nadam/v/simple_rnn_2/simple_rnn_cell/kernel5Nadam/m/simple_rnn_2/simple_rnn_cell/recurrent_kernel5Nadam/v/simple_rnn_2/simple_rnn_cell/recurrent_kernel)Nadam/m/simple_rnn_2/simple_rnn_cell/bias)Nadam/v/simple_rnn_2/simple_rnn_cell/bias+Nadam/m/simple_rnn_3/simple_rnn_cell/kernel+Nadam/v/simple_rnn_3/simple_rnn_cell/kernel5Nadam/m/simple_rnn_3/simple_rnn_cell/recurrent_kernel5Nadam/v/simple_rnn_3/simple_rnn_cell/recurrent_kernel)Nadam/m/simple_rnn_3/simple_rnn_cell/bias)Nadam/v/simple_rnn_3/simple_rnn_cell/biasNadam/m/dense/kernelNadam/v/dense/kernelNadam/m/dense/biasNadam/v/dense/biastotalcount*;
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
GPU2*0J 8 **
f%R#
!__inference__traced_restore_67143шт,
л"
М
while_body_62253
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_simple_rnn_cell_62275_0:+
while_simple_rnn_cell_62277_0:/
while_simple_rnn_cell_62279_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_simple_rnn_cell_62275:)
while_simple_rnn_cell_62277:-
while_simple_rnn_cell_62279:Ђ-while/simple_rnn_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_62275_0while_simple_rnn_cell_62277_0while_simple_rnn_cell_62279_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62240п
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
:џџџџџџџџџX

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"<
while_simple_rnn_cell_62275while_simple_rnn_cell_62275_0"<
while_simple_rnn_cell_62277while_simple_rnn_cell_62277_0"<
while_simple_rnn_cell_62279while_simple_rnn_cell_62279_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2^
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:%!

_user_specified_name62275:%!

_user_specified_name62277:%	!

_user_specified_name62279
д
Д
*__inference_simple_rnn_layer_call_fn_64435

inputs
unknown:
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_simple_rnn_layer_call_and_return_conditional_losses_63175s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs:%!

_user_specified_name64427:%!

_user_specified_name64429:%!

_user_specified_name64431
ћ-
Е
while_body_63884
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
6while_simple_rnn_cell_matmul_1_readvariableop_resource:Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЧ
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
:џџџџџџџџџЕ

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
%: : : : :џџџџџџџџџ: : : : : 2\
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
:џџџџџџџџџ:GC
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
В

a
B__inference_dropout_layer_call_and_return_conditional_losses_64900

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
:џџџџџџџџџ
Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
*
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
:џџџџџџџџџ
T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
ѓ	
ё
@__inference_dense_layer_call_and_return_conditional_losses_66441

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ћ-
Е
while_body_65315
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
6while_simple_rnn_cell_matmul_1_readvariableop_resource:Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЧ
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
:џџџџџџџџџЕ

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
%: : : : :џџџџџџџџџ: : : : : 2\
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
:џџџџџџџџџ:GC
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
Ќќ
1
__inference__traced_save_66993
file_prefix5
#read_disablecopyonread_dense_kernel:1
#read_1_disablecopyonread_dense_bias:L
:read_2_disablecopyonread_simple_rnn_simple_rnn_cell_kernel:V
Dread_3_disablecopyonread_simple_rnn_simple_rnn_cell_recurrent_kernel:F
8read_4_disablecopyonread_simple_rnn_simple_rnn_cell_bias:N
<read_5_disablecopyonread_simple_rnn_1_simple_rnn_cell_kernel:X
Fread_6_disablecopyonread_simple_rnn_1_simple_rnn_cell_recurrent_kernel:H
:read_7_disablecopyonread_simple_rnn_1_simple_rnn_cell_bias:N
<read_8_disablecopyonread_simple_rnn_2_simple_rnn_cell_kernel:X
Fread_9_disablecopyonread_simple_rnn_2_simple_rnn_cell_recurrent_kernel:I
;read_10_disablecopyonread_simple_rnn_2_simple_rnn_cell_bias:O
=read_11_disablecopyonread_simple_rnn_3_simple_rnn_cell_kernel:Y
Gread_12_disablecopyonread_simple_rnn_3_simple_rnn_cell_recurrent_kernel:I
;read_13_disablecopyonread_simple_rnn_3_simple_rnn_cell_bias:-
#read_14_disablecopyonread_iteration:	 1
'read_15_disablecopyonread_learning_rate: 2
(read_16_disablecopyonread_nadam_variable: U
Cread_17_disablecopyonread_nadam_m_simple_rnn_simple_rnn_cell_kernel:U
Cread_18_disablecopyonread_nadam_v_simple_rnn_simple_rnn_cell_kernel:_
Mread_19_disablecopyonread_nadam_m_simple_rnn_simple_rnn_cell_recurrent_kernel:_
Mread_20_disablecopyonread_nadam_v_simple_rnn_simple_rnn_cell_recurrent_kernel:O
Aread_21_disablecopyonread_nadam_m_simple_rnn_simple_rnn_cell_bias:O
Aread_22_disablecopyonread_nadam_v_simple_rnn_simple_rnn_cell_bias:W
Eread_23_disablecopyonread_nadam_m_simple_rnn_1_simple_rnn_cell_kernel:W
Eread_24_disablecopyonread_nadam_v_simple_rnn_1_simple_rnn_cell_kernel:a
Oread_25_disablecopyonread_nadam_m_simple_rnn_1_simple_rnn_cell_recurrent_kernel:a
Oread_26_disablecopyonread_nadam_v_simple_rnn_1_simple_rnn_cell_recurrent_kernel:Q
Cread_27_disablecopyonread_nadam_m_simple_rnn_1_simple_rnn_cell_bias:Q
Cread_28_disablecopyonread_nadam_v_simple_rnn_1_simple_rnn_cell_bias:W
Eread_29_disablecopyonread_nadam_m_simple_rnn_2_simple_rnn_cell_kernel:W
Eread_30_disablecopyonread_nadam_v_simple_rnn_2_simple_rnn_cell_kernel:a
Oread_31_disablecopyonread_nadam_m_simple_rnn_2_simple_rnn_cell_recurrent_kernel:a
Oread_32_disablecopyonread_nadam_v_simple_rnn_2_simple_rnn_cell_recurrent_kernel:Q
Cread_33_disablecopyonread_nadam_m_simple_rnn_2_simple_rnn_cell_bias:Q
Cread_34_disablecopyonread_nadam_v_simple_rnn_2_simple_rnn_cell_bias:W
Eread_35_disablecopyonread_nadam_m_simple_rnn_3_simple_rnn_cell_kernel:W
Eread_36_disablecopyonread_nadam_v_simple_rnn_3_simple_rnn_cell_kernel:a
Oread_37_disablecopyonread_nadam_m_simple_rnn_3_simple_rnn_cell_recurrent_kernel:a
Oread_38_disablecopyonread_nadam_v_simple_rnn_3_simple_rnn_cell_recurrent_kernel:Q
Cread_39_disablecopyonread_nadam_m_simple_rnn_3_simple_rnn_cell_bias:Q
Cread_40_disablecopyonread_nadam_v_simple_rnn_3_simple_rnn_cell_bias:@
.read_41_disablecopyonread_nadam_m_dense_kernel:@
.read_42_disablecopyonread_nadam_v_dense_kernel::
,read_43_disablecopyonread_nadam_m_dense_bias::
,read_44_disablecopyonread_nadam_v_dense_bias:)
read_45_disablecopyonread_total: )
read_46_disablecopyonread_count: 
savev2_const
identity_95ЂMergeV2CheckpointsЂRead/DisableCopyOnReadЂRead/ReadVariableOpЂRead_1/DisableCopyOnReadЂRead_1/ReadVariableOpЂRead_10/DisableCopyOnReadЂRead_10/ReadVariableOpЂRead_11/DisableCopyOnReadЂRead_11/ReadVariableOpЂRead_12/DisableCopyOnReadЂRead_12/ReadVariableOpЂRead_13/DisableCopyOnReadЂRead_13/ReadVariableOpЂRead_14/DisableCopyOnReadЂRead_14/ReadVariableOpЂRead_15/DisableCopyOnReadЂRead_15/ReadVariableOpЂRead_16/DisableCopyOnReadЂRead_16/ReadVariableOpЂRead_17/DisableCopyOnReadЂRead_17/ReadVariableOpЂRead_18/DisableCopyOnReadЂRead_18/ReadVariableOpЂRead_19/DisableCopyOnReadЂRead_19/ReadVariableOpЂRead_2/DisableCopyOnReadЂRead_2/ReadVariableOpЂRead_20/DisableCopyOnReadЂRead_20/ReadVariableOpЂRead_21/DisableCopyOnReadЂRead_21/ReadVariableOpЂRead_22/DisableCopyOnReadЂRead_22/ReadVariableOpЂRead_23/DisableCopyOnReadЂRead_23/ReadVariableOpЂRead_24/DisableCopyOnReadЂRead_24/ReadVariableOpЂRead_25/DisableCopyOnReadЂRead_25/ReadVariableOpЂRead_26/DisableCopyOnReadЂRead_26/ReadVariableOpЂRead_27/DisableCopyOnReadЂRead_27/ReadVariableOpЂRead_28/DisableCopyOnReadЂRead_28/ReadVariableOpЂRead_29/DisableCopyOnReadЂRead_29/ReadVariableOpЂRead_3/DisableCopyOnReadЂRead_3/ReadVariableOpЂRead_30/DisableCopyOnReadЂRead_30/ReadVariableOpЂRead_31/DisableCopyOnReadЂRead_31/ReadVariableOpЂRead_32/DisableCopyOnReadЂRead_32/ReadVariableOpЂRead_33/DisableCopyOnReadЂRead_33/ReadVariableOpЂRead_34/DisableCopyOnReadЂRead_34/ReadVariableOpЂRead_35/DisableCopyOnReadЂRead_35/ReadVariableOpЂRead_36/DisableCopyOnReadЂRead_36/ReadVariableOpЂRead_37/DisableCopyOnReadЂRead_37/ReadVariableOpЂRead_38/DisableCopyOnReadЂRead_38/ReadVariableOpЂRead_39/DisableCopyOnReadЂRead_39/ReadVariableOpЂRead_4/DisableCopyOnReadЂRead_4/ReadVariableOpЂRead_40/DisableCopyOnReadЂRead_40/ReadVariableOpЂRead_41/DisableCopyOnReadЂRead_41/ReadVariableOpЂRead_42/DisableCopyOnReadЂRead_42/ReadVariableOpЂRead_43/DisableCopyOnReadЂRead_43/ReadVariableOpЂRead_44/DisableCopyOnReadЂRead_44/ReadVariableOpЂRead_45/DisableCopyOnReadЂRead_45/ReadVariableOpЂRead_46/DisableCopyOnReadЂRead_46/ReadVariableOpЂRead_5/DisableCopyOnReadЂRead_5/ReadVariableOpЂRead_6/DisableCopyOnReadЂRead_6/ReadVariableOpЂRead_7/DisableCopyOnReadЂRead_7/ReadVariableOpЂRead_8/DisableCopyOnReadЂRead_8/ReadVariableOpЂRead_9/DisableCopyOnReadЂRead_9/ReadVariableOpw
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
: u
Read/DisableCopyOnReadDisableCopyOnRead#read_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 
Read/ReadVariableOpReadVariableOp#read_disablecopyonread_dense_kernel^Read/DisableCopyOnRead"/device:CPU:0*
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

:w
Read_1/DisableCopyOnReadDisableCopyOnRead#read_1_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 
Read_1/ReadVariableOpReadVariableOp#read_1_disablecopyonread_dense_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
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
:
Read_2/DisableCopyOnReadDisableCopyOnRead:read_2_disablecopyonread_simple_rnn_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 К
Read_2/ReadVariableOpReadVariableOp:read_2_disablecopyonread_simple_rnn_simple_rnn_cell_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
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

:
Read_3/DisableCopyOnReadDisableCopyOnReadDread_3_disablecopyonread_simple_rnn_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Ф
Read_3/ReadVariableOpReadVariableOpDread_3_disablecopyonread_simple_rnn_simple_rnn_cell_recurrent_kernel^Read_3/DisableCopyOnRead"/device:CPU:0*
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

:
Read_4/DisableCopyOnReadDisableCopyOnRead8read_4_disablecopyonread_simple_rnn_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 Д
Read_4/ReadVariableOpReadVariableOp8read_4_disablecopyonread_simple_rnn_simple_rnn_cell_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
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
:
Read_5/DisableCopyOnReadDisableCopyOnRead<read_5_disablecopyonread_simple_rnn_1_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 М
Read_5/ReadVariableOpReadVariableOp<read_5_disablecopyonread_simple_rnn_1_simple_rnn_cell_kernel^Read_5/DisableCopyOnRead"/device:CPU:0*
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

:
Read_6/DisableCopyOnReadDisableCopyOnReadFread_6_disablecopyonread_simple_rnn_1_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Ц
Read_6/ReadVariableOpReadVariableOpFread_6_disablecopyonread_simple_rnn_1_simple_rnn_cell_recurrent_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
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

:
Read_7/DisableCopyOnReadDisableCopyOnRead:read_7_disablecopyonread_simple_rnn_1_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 Ж
Read_7/ReadVariableOpReadVariableOp:read_7_disablecopyonread_simple_rnn_1_simple_rnn_cell_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
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
:
Read_8/DisableCopyOnReadDisableCopyOnRead<read_8_disablecopyonread_simple_rnn_2_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 М
Read_8/ReadVariableOpReadVariableOp<read_8_disablecopyonread_simple_rnn_2_simple_rnn_cell_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
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

:
Read_9/DisableCopyOnReadDisableCopyOnReadFread_9_disablecopyonread_simple_rnn_2_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Ц
Read_9/ReadVariableOpReadVariableOpFread_9_disablecopyonread_simple_rnn_2_simple_rnn_cell_recurrent_kernel^Read_9/DisableCopyOnRead"/device:CPU:0*
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

:
Read_10/DisableCopyOnReadDisableCopyOnRead;read_10_disablecopyonread_simple_rnn_2_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 Й
Read_10/ReadVariableOpReadVariableOp;read_10_disablecopyonread_simple_rnn_2_simple_rnn_cell_bias^Read_10/DisableCopyOnRead"/device:CPU:0*
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
:
Read_11/DisableCopyOnReadDisableCopyOnRead=read_11_disablecopyonread_simple_rnn_3_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 П
Read_11/ReadVariableOpReadVariableOp=read_11_disablecopyonread_simple_rnn_3_simple_rnn_cell_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*
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

:
Read_12/DisableCopyOnReadDisableCopyOnReadGread_12_disablecopyonread_simple_rnn_3_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Щ
Read_12/ReadVariableOpReadVariableOpGread_12_disablecopyonread_simple_rnn_3_simple_rnn_cell_recurrent_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
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

:
Read_13/DisableCopyOnReadDisableCopyOnRead;read_13_disablecopyonread_simple_rnn_3_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 Й
Read_13/ReadVariableOpReadVariableOp;read_13_disablecopyonread_simple_rnn_3_simple_rnn_cell_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
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
: }
Read_16/DisableCopyOnReadDisableCopyOnRead(read_16_disablecopyonread_nadam_variable"/device:CPU:0*
_output_shapes
 Ђ
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
: 
Read_17/DisableCopyOnReadDisableCopyOnReadCread_17_disablecopyonread_nadam_m_simple_rnn_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 Х
Read_17/ReadVariableOpReadVariableOpCread_17_disablecopyonread_nadam_m_simple_rnn_simple_rnn_cell_kernel^Read_17/DisableCopyOnRead"/device:CPU:0*
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

:
Read_18/DisableCopyOnReadDisableCopyOnReadCread_18_disablecopyonread_nadam_v_simple_rnn_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 Х
Read_18/ReadVariableOpReadVariableOpCread_18_disablecopyonread_nadam_v_simple_rnn_simple_rnn_cell_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*
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

:Ђ
Read_19/DisableCopyOnReadDisableCopyOnReadMread_19_disablecopyonread_nadam_m_simple_rnn_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Я
Read_19/ReadVariableOpReadVariableOpMread_19_disablecopyonread_nadam_m_simple_rnn_simple_rnn_cell_recurrent_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*
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

:Ђ
Read_20/DisableCopyOnReadDisableCopyOnReadMread_20_disablecopyonread_nadam_v_simple_rnn_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Я
Read_20/ReadVariableOpReadVariableOpMread_20_disablecopyonread_nadam_v_simple_rnn_simple_rnn_cell_recurrent_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*
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

:
Read_21/DisableCopyOnReadDisableCopyOnReadAread_21_disablecopyonread_nadam_m_simple_rnn_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 П
Read_21/ReadVariableOpReadVariableOpAread_21_disablecopyonread_nadam_m_simple_rnn_simple_rnn_cell_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
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
:
Read_22/DisableCopyOnReadDisableCopyOnReadAread_22_disablecopyonread_nadam_v_simple_rnn_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 П
Read_22/ReadVariableOpReadVariableOpAread_22_disablecopyonread_nadam_v_simple_rnn_simple_rnn_cell_bias^Read_22/DisableCopyOnRead"/device:CPU:0*
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
:
Read_23/DisableCopyOnReadDisableCopyOnReadEread_23_disablecopyonread_nadam_m_simple_rnn_1_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 Ч
Read_23/ReadVariableOpReadVariableOpEread_23_disablecopyonread_nadam_m_simple_rnn_1_simple_rnn_cell_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*
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

:
Read_24/DisableCopyOnReadDisableCopyOnReadEread_24_disablecopyonread_nadam_v_simple_rnn_1_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 Ч
Read_24/ReadVariableOpReadVariableOpEread_24_disablecopyonread_nadam_v_simple_rnn_1_simple_rnn_cell_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*
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

:Є
Read_25/DisableCopyOnReadDisableCopyOnReadOread_25_disablecopyonread_nadam_m_simple_rnn_1_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 б
Read_25/ReadVariableOpReadVariableOpOread_25_disablecopyonread_nadam_m_simple_rnn_1_simple_rnn_cell_recurrent_kernel^Read_25/DisableCopyOnRead"/device:CPU:0*
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

:Є
Read_26/DisableCopyOnReadDisableCopyOnReadOread_26_disablecopyonread_nadam_v_simple_rnn_1_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 б
Read_26/ReadVariableOpReadVariableOpOread_26_disablecopyonread_nadam_v_simple_rnn_1_simple_rnn_cell_recurrent_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*
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

:
Read_27/DisableCopyOnReadDisableCopyOnReadCread_27_disablecopyonread_nadam_m_simple_rnn_1_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 С
Read_27/ReadVariableOpReadVariableOpCread_27_disablecopyonread_nadam_m_simple_rnn_1_simple_rnn_cell_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
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
:
Read_28/DisableCopyOnReadDisableCopyOnReadCread_28_disablecopyonread_nadam_v_simple_rnn_1_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 С
Read_28/ReadVariableOpReadVariableOpCread_28_disablecopyonread_nadam_v_simple_rnn_1_simple_rnn_cell_bias^Read_28/DisableCopyOnRead"/device:CPU:0*
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
:
Read_29/DisableCopyOnReadDisableCopyOnReadEread_29_disablecopyonread_nadam_m_simple_rnn_2_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 Ч
Read_29/ReadVariableOpReadVariableOpEread_29_disablecopyonread_nadam_m_simple_rnn_2_simple_rnn_cell_kernel^Read_29/DisableCopyOnRead"/device:CPU:0*
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

:
Read_30/DisableCopyOnReadDisableCopyOnReadEread_30_disablecopyonread_nadam_v_simple_rnn_2_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 Ч
Read_30/ReadVariableOpReadVariableOpEread_30_disablecopyonread_nadam_v_simple_rnn_2_simple_rnn_cell_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*
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

:Є
Read_31/DisableCopyOnReadDisableCopyOnReadOread_31_disablecopyonread_nadam_m_simple_rnn_2_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 б
Read_31/ReadVariableOpReadVariableOpOread_31_disablecopyonread_nadam_m_simple_rnn_2_simple_rnn_cell_recurrent_kernel^Read_31/DisableCopyOnRead"/device:CPU:0*
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

:Є
Read_32/DisableCopyOnReadDisableCopyOnReadOread_32_disablecopyonread_nadam_v_simple_rnn_2_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 б
Read_32/ReadVariableOpReadVariableOpOread_32_disablecopyonread_nadam_v_simple_rnn_2_simple_rnn_cell_recurrent_kernel^Read_32/DisableCopyOnRead"/device:CPU:0*
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

:
Read_33/DisableCopyOnReadDisableCopyOnReadCread_33_disablecopyonread_nadam_m_simple_rnn_2_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 С
Read_33/ReadVariableOpReadVariableOpCread_33_disablecopyonread_nadam_m_simple_rnn_2_simple_rnn_cell_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
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
:
Read_34/DisableCopyOnReadDisableCopyOnReadCread_34_disablecopyonread_nadam_v_simple_rnn_2_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 С
Read_34/ReadVariableOpReadVariableOpCread_34_disablecopyonread_nadam_v_simple_rnn_2_simple_rnn_cell_bias^Read_34/DisableCopyOnRead"/device:CPU:0*
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
:
Read_35/DisableCopyOnReadDisableCopyOnReadEread_35_disablecopyonread_nadam_m_simple_rnn_3_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 Ч
Read_35/ReadVariableOpReadVariableOpEread_35_disablecopyonread_nadam_m_simple_rnn_3_simple_rnn_cell_kernel^Read_35/DisableCopyOnRead"/device:CPU:0*
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

:
Read_36/DisableCopyOnReadDisableCopyOnReadEread_36_disablecopyonread_nadam_v_simple_rnn_3_simple_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 Ч
Read_36/ReadVariableOpReadVariableOpEread_36_disablecopyonread_nadam_v_simple_rnn_3_simple_rnn_cell_kernel^Read_36/DisableCopyOnRead"/device:CPU:0*
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

:Є
Read_37/DisableCopyOnReadDisableCopyOnReadOread_37_disablecopyonread_nadam_m_simple_rnn_3_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 б
Read_37/ReadVariableOpReadVariableOpOread_37_disablecopyonread_nadam_m_simple_rnn_3_simple_rnn_cell_recurrent_kernel^Read_37/DisableCopyOnRead"/device:CPU:0*
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

:Є
Read_38/DisableCopyOnReadDisableCopyOnReadOread_38_disablecopyonread_nadam_v_simple_rnn_3_simple_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 б
Read_38/ReadVariableOpReadVariableOpOread_38_disablecopyonread_nadam_v_simple_rnn_3_simple_rnn_cell_recurrent_kernel^Read_38/DisableCopyOnRead"/device:CPU:0*
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

:
Read_39/DisableCopyOnReadDisableCopyOnReadCread_39_disablecopyonread_nadam_m_simple_rnn_3_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 С
Read_39/ReadVariableOpReadVariableOpCread_39_disablecopyonread_nadam_m_simple_rnn_3_simple_rnn_cell_bias^Read_39/DisableCopyOnRead"/device:CPU:0*
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
:
Read_40/DisableCopyOnReadDisableCopyOnReadCread_40_disablecopyonread_nadam_v_simple_rnn_3_simple_rnn_cell_bias"/device:CPU:0*
_output_shapes
 С
Read_40/ReadVariableOpReadVariableOpCread_40_disablecopyonread_nadam_v_simple_rnn_3_simple_rnn_cell_bias^Read_40/DisableCopyOnRead"/device:CPU:0*
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
:
Read_41/DisableCopyOnReadDisableCopyOnRead.read_41_disablecopyonread_nadam_m_dense_kernel"/device:CPU:0*
_output_shapes
 А
Read_41/ReadVariableOpReadVariableOp.read_41_disablecopyonread_nadam_m_dense_kernel^Read_41/DisableCopyOnRead"/device:CPU:0*
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

:
Read_42/DisableCopyOnReadDisableCopyOnRead.read_42_disablecopyonread_nadam_v_dense_kernel"/device:CPU:0*
_output_shapes
 А
Read_42/ReadVariableOpReadVariableOp.read_42_disablecopyonread_nadam_v_dense_kernel^Read_42/DisableCopyOnRead"/device:CPU:0*
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

:
Read_43/DisableCopyOnReadDisableCopyOnRead,read_43_disablecopyonread_nadam_m_dense_bias"/device:CPU:0*
_output_shapes
 Њ
Read_43/ReadVariableOpReadVariableOp,read_43_disablecopyonread_nadam_m_dense_bias^Read_43/DisableCopyOnRead"/device:CPU:0*
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
:
Read_44/DisableCopyOnReadDisableCopyOnRead,read_44_disablecopyonread_nadam_v_dense_bias"/device:CPU:0*
_output_shapes
 Њ
Read_44/ReadVariableOpReadVariableOp,read_44_disablecopyonread_nadam_v_dense_bias^Read_44/DisableCopyOnRead"/device:CPU:0*
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
 
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
 
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
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*Ў
valueЄBЁ0B6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB/optimizer/_u_product/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЭ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*s
valuejBh0B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *>
dtypes4
220	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Г
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
: к
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
_user_specified_namefile_prefix:,(
&
_user_specified_namedense/kernel:*&
$
_user_specified_name
dense/bias:A=
;
_user_specified_name#!simple_rnn/simple_rnn_cell/kernel:KG
E
_user_specified_name-+simple_rnn/simple_rnn_cell/recurrent_kernel:?;
9
_user_specified_name!simple_rnn/simple_rnn_cell/bias:C?
=
_user_specified_name%#simple_rnn_1/simple_rnn_cell/kernel:MI
G
_user_specified_name/-simple_rnn_1/simple_rnn_cell/recurrent_kernel:A=
;
_user_specified_name#!simple_rnn_1/simple_rnn_cell/bias:C	?
=
_user_specified_name%#simple_rnn_2/simple_rnn_cell/kernel:M
I
G
_user_specified_name/-simple_rnn_2/simple_rnn_cell/recurrent_kernel:A=
;
_user_specified_name#!simple_rnn_2/simple_rnn_cell/bias:C?
=
_user_specified_name%#simple_rnn_3/simple_rnn_cell/kernel:MI
G
_user_specified_name/-simple_rnn_3/simple_rnn_cell/recurrent_kernel:A=
;
_user_specified_name#!simple_rnn_3/simple_rnn_cell/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:.*
(
_user_specified_nameNadam/Variable:IE
C
_user_specified_name+)Nadam/m/simple_rnn/simple_rnn_cell/kernel:IE
C
_user_specified_name+)Nadam/v/simple_rnn/simple_rnn_cell/kernel:SO
M
_user_specified_name53Nadam/m/simple_rnn/simple_rnn_cell/recurrent_kernel:SO
M
_user_specified_name53Nadam/v/simple_rnn/simple_rnn_cell/recurrent_kernel:GC
A
_user_specified_name)'Nadam/m/simple_rnn/simple_rnn_cell/bias:GC
A
_user_specified_name)'Nadam/v/simple_rnn/simple_rnn_cell/bias:KG
E
_user_specified_name-+Nadam/m/simple_rnn_1/simple_rnn_cell/kernel:KG
E
_user_specified_name-+Nadam/v/simple_rnn_1/simple_rnn_cell/kernel:UQ
O
_user_specified_name75Nadam/m/simple_rnn_1/simple_rnn_cell/recurrent_kernel:UQ
O
_user_specified_name75Nadam/v/simple_rnn_1/simple_rnn_cell/recurrent_kernel:IE
C
_user_specified_name+)Nadam/m/simple_rnn_1/simple_rnn_cell/bias:IE
C
_user_specified_name+)Nadam/v/simple_rnn_1/simple_rnn_cell/bias:KG
E
_user_specified_name-+Nadam/m/simple_rnn_2/simple_rnn_cell/kernel:KG
E
_user_specified_name-+Nadam/v/simple_rnn_2/simple_rnn_cell/kernel:U Q
O
_user_specified_name75Nadam/m/simple_rnn_2/simple_rnn_cell/recurrent_kernel:U!Q
O
_user_specified_name75Nadam/v/simple_rnn_2/simple_rnn_cell/recurrent_kernel:I"E
C
_user_specified_name+)Nadam/m/simple_rnn_2/simple_rnn_cell/bias:I#E
C
_user_specified_name+)Nadam/v/simple_rnn_2/simple_rnn_cell/bias:K$G
E
_user_specified_name-+Nadam/m/simple_rnn_3/simple_rnn_cell/kernel:K%G
E
_user_specified_name-+Nadam/v/simple_rnn_3/simple_rnn_cell/kernel:U&Q
O
_user_specified_name75Nadam/m/simple_rnn_3/simple_rnn_cell/recurrent_kernel:U'Q
O
_user_specified_name75Nadam/v/simple_rnn_3/simple_rnn_cell/recurrent_kernel:I(E
C
_user_specified_name+)Nadam/m/simple_rnn_3/simple_rnn_cell/bias:I)E
C
_user_specified_name+)Nadam/v/simple_rnn_3/simple_rnn_cell/bias:4*0
.
_user_specified_nameNadam/m/dense/kernel:4+0
.
_user_specified_nameNadam/v/dense/kernel:2,.
,
_user_specified_nameNadam/m/dense/bias:2-.
,
_user_specified_nameNadam/v/dense/bias:%.!

_user_specified_nametotal:%/!

_user_specified_namecount:=09

_output_shapes
: 

_user_specified_nameConst
Г
э
(sequential_simple_rnn_3_while_cond_61834L
Hsequential_simple_rnn_3_while_sequential_simple_rnn_3_while_loop_counterR
Nsequential_simple_rnn_3_while_sequential_simple_rnn_3_while_maximum_iterations-
)sequential_simple_rnn_3_while_placeholder/
+sequential_simple_rnn_3_while_placeholder_1/
+sequential_simple_rnn_3_while_placeholder_2N
Jsequential_simple_rnn_3_while_less_sequential_simple_rnn_3_strided_slice_1c
_sequential_simple_rnn_3_while_sequential_simple_rnn_3_while_cond_61834___redundant_placeholder0c
_sequential_simple_rnn_3_while_sequential_simple_rnn_3_while_cond_61834___redundant_placeholder1c
_sequential_simple_rnn_3_while_sequential_simple_rnn_3_while_cond_61834___redundant_placeholder2c
_sequential_simple_rnn_3_while_sequential_simple_rnn_3_while_cond_61834___redundant_placeholder3*
&sequential_simple_rnn_3_while_identity
Т
"sequential/simple_rnn_3/while/LessLess)sequential_simple_rnn_3_while_placeholderJsequential_simple_rnn_3_while_less_sequential_simple_rnn_3_strided_slice_1*
T0*
_output_shapes
: {
&sequential/simple_rnn_3/while/IdentityIdentity&sequential/simple_rnn_3/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_simple_rnn_3_while_identity/sequential/simple_rnn_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ: :::::b ^

_output_shapes
: 
D
_user_specified_name,*sequential/simple_rnn_3/while/loop_counter:hd

_output_shapes
: 
J
_user_specified_name20sequential/simple_rnn_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:_[

_output_shapes
: 
A
_user_specified_name)'sequential/simple_rnn_3/strided_slice_1:

_output_shapes
:
/
Е
while_body_66108
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
6while_simple_rnn_cell_matmul_1_readvariableop_resource:Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџr
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
:џџџџџџџџџЕ

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
%: : : : :џџџџџџџџџ: : : : : 2\
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
:џџџџџџџџџ:GC
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
й
ч
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66565

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
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
Д

c
D__inference_dropout_1_layer_call_and_return_conditional_losses_63322

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
:џџџџџџџџџ
Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
*
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
:џџџџџџџџџ
T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
Ж>
Ў
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_66285

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџR
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
valueB"џџџџ   р
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
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџg
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ^
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
value	B : Г
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_66218*
condR
while_cond_66217*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЅ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
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

з
/__inference_simple_rnn_cell_layer_call_fn_66579

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62528o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states_0:%!

_user_specified_name66569:%!

_user_specified_name66571:%!

_user_specified_name66573
Ћ
J
"__inference__update_step_xla_64392
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
ћ-
Е
while_body_65602
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
6while_simple_rnn_cell_matmul_1_readvariableop_resource:Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЧ
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
:џџџџџџџџџЕ

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
%: : : : :џџџџџџџџџ: : : : : 2\
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
:џџџџџџџџџ:GC
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

з
/__inference_simple_rnn_cell_layer_call_fn_66531

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62359o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states_0:%!

_user_specified_name66521:%!

_user_specified_name66523:%!

_user_specified_name66525
Ў=
Ќ
E__inference_simple_rnn_layer_call_and_return_conditional_losses_64878

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџR
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

:*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџg
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
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
value	B : Г
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_64812*
condR
while_cond_64811*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
џџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
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
ю=
А
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_65668
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
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
valueB"џџџџ   р
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
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџg
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
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
value	B : Г
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_65602*
condR
while_cond_65601*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџЅ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
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
Ю
b
)__inference_dropout_3_layer_call_fn_66400

inputs
identityЂStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_63580o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

з
/__inference_simple_rnn_cell_layer_call_fn_66517

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62240o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states_0:%!

_user_specified_name66507:%!

_user_specified_name66509:%!

_user_specified_name66511
З
N
"__inference__update_step_xla_64357
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
ћ-
Е
while_body_65710
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
6while_simple_rnn_cell_matmul_1_readvariableop_resource:Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЧ
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
:џџџџџџџџџЕ

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
%: : : : :џџџџџџџџџ: : : : : 2\
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
:џџџџџџџџџ:GC
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
л"
М
while_body_62660
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_simple_rnn_cell_62682_0:+
while_simple_rnn_cell_62684_0:/
while_simple_rnn_cell_62686_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_simple_rnn_cell_62682:)
while_simple_rnn_cell_62684:-
while_simple_rnn_cell_62686:Ђ-while/simple_rnn_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_62682_0while_simple_rnn_cell_62684_0while_simple_rnn_cell_62686_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62647п
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
:џџџџџџџџџX

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"<
while_simple_rnn_cell_62682while_simple_rnn_cell_62682_0"<
while_simple_rnn_cell_62684while_simple_rnn_cell_62684_0"<
while_simple_rnn_cell_62686while_simple_rnn_cell_62686_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2^
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:%!

_user_specified_name62682:%!

_user_specified_name62684:%	!

_user_specified_name62686
Е4

G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_62604

inputs'
simple_rnn_cell_62529:#
simple_rnn_cell_62531:'
simple_rnn_cell_62533:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
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
valueB"џџџџ   р
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
:џџџџџџџџџ*
shrink_axis_maskм
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_62529simple_rnn_cell_62531simple_rnn_cell_62533*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62528n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
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
value	B : х
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_62529simple_rnn_cell_62531simple_rnn_cell_62533*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_62541*
condR
while_cond_62540*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџT
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:%!

_user_specified_name62529:%!

_user_specified_name62531:%!

_user_specified_name62533
А=
Ў
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_65381

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџR
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
valueB"џџџџ   р
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
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџg
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
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
value	B : Г
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_65315*
condR
while_cond_65314*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
џџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
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
Ж>
Ў
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_66395

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџR
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
valueB"џџџџ   р
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
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџg
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ^
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
value	B : Г
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_66328*
condR
while_cond_66327*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЅ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
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
т
Ѕ
while_cond_62829
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_62829___redundant_placeholder03
/while_while_cond_62829___redundant_placeholder13
/while_while_cond_62829___redundant_placeholder23
/while_while_cond_62829___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
т
Ѕ
while_cond_62540
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_62540___redundant_placeholder03
/while_while_cond_62540___redundant_placeholder13
/while_while_cond_62540___redundant_placeholder23
/while_while_cond_62540___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
х
`
B__inference_dropout_layer_call_and_return_conditional_losses_64905

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ
_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
г
х
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62937

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
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
од
б
 __inference__wrapped_model_61909
simple_rnn_inputV
Dsequential_simple_rnn_simple_rnn_cell_matmul_readvariableop_resource:S
Esequential_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource:X
Fsequential_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource:X
Fsequential_simple_rnn_1_simple_rnn_cell_matmul_readvariableop_resource:U
Gsequential_simple_rnn_1_simple_rnn_cell_biasadd_readvariableop_resource:Z
Hsequential_simple_rnn_1_simple_rnn_cell_matmul_1_readvariableop_resource:X
Fsequential_simple_rnn_2_simple_rnn_cell_matmul_readvariableop_resource:U
Gsequential_simple_rnn_2_simple_rnn_cell_biasadd_readvariableop_resource:Z
Hsequential_simple_rnn_2_simple_rnn_cell_matmul_1_readvariableop_resource:X
Fsequential_simple_rnn_3_simple_rnn_cell_matmul_readvariableop_resource:U
Gsequential_simple_rnn_3_simple_rnn_cell_biasadd_readvariableop_resource:Z
Hsequential_simple_rnn_3_simple_rnn_cell_matmul_1_readvariableop_resource:A
/sequential_dense_matmul_readvariableop_resource:>
0sequential_dense_biasadd_readvariableop_resource:
identityЂ'sequential/dense/BiasAdd/ReadVariableOpЂ&sequential/dense/MatMul/ReadVariableOpЂ<sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpЂ;sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpЂ=sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpЂsequential/simple_rnn/whileЂ>sequential/simple_rnn_1/simple_rnn_cell/BiasAdd/ReadVariableOpЂ=sequential/simple_rnn_1/simple_rnn_cell/MatMul/ReadVariableOpЂ?sequential/simple_rnn_1/simple_rnn_cell/MatMul_1/ReadVariableOpЂsequential/simple_rnn_1/whileЂ>sequential/simple_rnn_2/simple_rnn_cell/BiasAdd/ReadVariableOpЂ=sequential/simple_rnn_2/simple_rnn_cell/MatMul/ReadVariableOpЂ?sequential/simple_rnn_2/simple_rnn_cell/MatMul_1/ReadVariableOpЂsequential/simple_rnn_2/whileЂ>sequential/simple_rnn_3/simple_rnn_cell/BiasAdd/ReadVariableOpЂ=sequential/simple_rnn_3/simple_rnn_cell/MatMul/ReadVariableOpЂ?sequential/simple_rnn_3/simple_rnn_cell/MatMul_1/ReadVariableOpЂsequential/simple_rnn_3/whilei
sequential/simple_rnn/ShapeShapesimple_rnn_input*
T0*
_output_shapes
::эЯs
)sequential/simple_rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential/simple_rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential/simple_rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
#sequential/simple_rnn/strided_sliceStridedSlice$sequential/simple_rnn/Shape:output:02sequential/simple_rnn/strided_slice/stack:output:04sequential/simple_rnn/strided_slice/stack_1:output:04sequential/simple_rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential/simple_rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Е
"sequential/simple_rnn/zeros/packedPack,sequential/simple_rnn/strided_slice:output:0-sequential/simple_rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential/simple_rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ў
sequential/simple_rnn/zerosFill+sequential/simple_rnn/zeros/packed:output:0*sequential/simple_rnn/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџy
$sequential/simple_rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѓ
sequential/simple_rnn/transpose	Transposesimple_rnn_input-sequential/simple_rnn/transpose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџ~
sequential/simple_rnn/Shape_1Shape#sequential/simple_rnn/transpose:y:0*
T0*
_output_shapes
::эЯu
+sequential/simple_rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential/simple_rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential/simple_rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%sequential/simple_rnn/strided_slice_1StridedSlice&sequential/simple_rnn/Shape_1:output:04sequential/simple_rnn/strided_slice_1/stack:output:06sequential/simple_rnn/strided_slice_1/stack_1:output:06sequential/simple_rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential/simple_rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџі
#sequential/simple_rnn/TensorArrayV2TensorListReserve:sequential/simple_rnn/TensorArrayV2/element_shape:output:0.sequential/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Ksequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ђ
=sequential/simple_rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential/simple_rnn/transpose:y:0Tsequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвu
+sequential/simple_rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential/simple_rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential/simple_rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
%sequential/simple_rnn/strided_slice_2StridedSlice#sequential/simple_rnn/transpose:y:04sequential/simple_rnn/strided_slice_2/stack:output:06sequential/simple_rnn/strided_slice_2/stack_1:output:06sequential/simple_rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskР
;sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpDsequential_simple_rnn_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0н
,sequential/simple_rnn/simple_rnn_cell/MatMulMatMul.sequential/simple_rnn/strided_slice_2:output:0Csequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџО
<sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpEsequential_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ш
-sequential/simple_rnn/simple_rnn_cell/BiasAddBiasAdd6sequential/simple_rnn/simple_rnn_cell/MatMul:product:0Dsequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџФ
=sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpFsequential_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0з
.sequential/simple_rnn/simple_rnn_cell/MatMul_1MatMul$sequential/simple_rnn/zeros:output:0Esequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџж
)sequential/simple_rnn/simple_rnn_cell/addAddV26sequential/simple_rnn/simple_rnn_cell/BiasAdd:output:08sequential/simple_rnn/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
*sequential/simple_rnn/simple_rnn_cell/TanhTanh-sequential/simple_rnn/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
3sequential/simple_rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   њ
%sequential/simple_rnn/TensorArrayV2_1TensorListReserve<sequential/simple_rnn/TensorArrayV2_1/element_shape:output:0.sequential/simple_rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв\
sequential/simple_rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential/simple_rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџj
(sequential/simple_rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : б
sequential/simple_rnn/whileWhile1sequential/simple_rnn/while/loop_counter:output:07sequential/simple_rnn/while/maximum_iterations:output:0#sequential/simple_rnn/time:output:0.sequential/simple_rnn/TensorArrayV2_1:handle:0$sequential/simple_rnn/zeros:output:0.sequential/simple_rnn/strided_slice_1:output:0Msequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_simple_rnn_simple_rnn_cell_matmul_readvariableop_resourceEsequential_simple_rnn_simple_rnn_cell_biasadd_readvariableop_resourceFsequential_simple_rnn_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*2
body*R(
&sequential_simple_rnn_while_body_61519*2
cond*R(
&sequential_simple_rnn_while_cond_61518*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
Fsequential/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
8sequential/simple_rnn/TensorArrayV2Stack/TensorListStackTensorListStack$sequential/simple_rnn/while:output:3Osequential/simple_rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
џџџџџџџџџ*
element_dtype0~
+sequential/simple_rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџw
-sequential/simple_rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential/simple_rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
%sequential/simple_rnn/strided_slice_3StridedSliceAsequential/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:04sequential/simple_rnn/strided_slice_3/stack:output:06sequential/simple_rnn/strided_slice_3/stack_1:output:06sequential/simple_rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask{
&sequential/simple_rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          и
!sequential/simple_rnn/transpose_1	TransposeAsequential/simple_rnn/TensorArrayV2Stack/TensorListStack:tensor:0/sequential/simple_rnn/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ

sequential/dropout/IdentityIdentity%sequential/simple_rnn/transpose_1:y:0*
T0*+
_output_shapes
:џџџџџџџџџ

sequential/simple_rnn_1/ShapeShape$sequential/dropout/Identity:output:0*
T0*
_output_shapes
::эЯu
+sequential/simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential/simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential/simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%sequential/simple_rnn_1/strided_sliceStridedSlice&sequential/simple_rnn_1/Shape:output:04sequential/simple_rnn_1/strided_slice/stack:output:06sequential/simple_rnn_1/strided_slice/stack_1:output:06sequential/simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential/simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Л
$sequential/simple_rnn_1/zeros/packedPack.sequential/simple_rnn_1/strided_slice:output:0/sequential/simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential/simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
sequential/simple_rnn_1/zerosFill-sequential/simple_rnn_1/zeros/packed:output:0,sequential/simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ{
&sequential/simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Л
!sequential/simple_rnn_1/transpose	Transpose$sequential/dropout/Identity:output:0/sequential/simple_rnn_1/transpose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџ
sequential/simple_rnn_1/Shape_1Shape%sequential/simple_rnn_1/transpose:y:0*
T0*
_output_shapes
::эЯw
-sequential/simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential/simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential/simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
'sequential/simple_rnn_1/strided_slice_1StridedSlice(sequential/simple_rnn_1/Shape_1:output:06sequential/simple_rnn_1/strided_slice_1/stack:output:08sequential/simple_rnn_1/strided_slice_1/stack_1:output:08sequential/simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential/simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџќ
%sequential/simple_rnn_1/TensorArrayV2TensorListReserve<sequential/simple_rnn_1/TensorArrayV2/element_shape:output:00sequential/simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Msequential/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ј
?sequential/simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential/simple_rnn_1/transpose:y:0Vsequential/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвw
-sequential/simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential/simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential/simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:с
'sequential/simple_rnn_1/strided_slice_2StridedSlice%sequential/simple_rnn_1/transpose:y:06sequential/simple_rnn_1/strided_slice_2/stack:output:08sequential/simple_rnn_1/strided_slice_2/stack_1:output:08sequential/simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskФ
=sequential/simple_rnn_1/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpFsequential_simple_rnn_1_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0у
.sequential/simple_rnn_1/simple_rnn_cell/MatMulMatMul0sequential/simple_rnn_1/strided_slice_2:output:0Esequential/simple_rnn_1/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџТ
>sequential/simple_rnn_1/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpGsequential_simple_rnn_1_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ю
/sequential/simple_rnn_1/simple_rnn_cell/BiasAddBiasAdd8sequential/simple_rnn_1/simple_rnn_cell/MatMul:product:0Fsequential/simple_rnn_1/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџШ
?sequential/simple_rnn_1/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpHsequential_simple_rnn_1_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0н
0sequential/simple_rnn_1/simple_rnn_cell/MatMul_1MatMul&sequential/simple_rnn_1/zeros:output:0Gsequential/simple_rnn_1/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџм
+sequential/simple_rnn_1/simple_rnn_cell/addAddV28sequential/simple_rnn_1/simple_rnn_cell/BiasAdd:output:0:sequential/simple_rnn_1/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
,sequential/simple_rnn_1/simple_rnn_cell/TanhTanh/sequential/simple_rnn_1/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
5sequential/simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
'sequential/simple_rnn_1/TensorArrayV2_1TensorListReserve>sequential/simple_rnn_1/TensorArrayV2_1/element_shape:output:00sequential/simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв^
sequential/simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential/simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџl
*sequential/simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ы
sequential/simple_rnn_1/whileWhile3sequential/simple_rnn_1/while/loop_counter:output:09sequential/simple_rnn_1/while/maximum_iterations:output:0%sequential/simple_rnn_1/time:output:00sequential/simple_rnn_1/TensorArrayV2_1:handle:0&sequential/simple_rnn_1/zeros:output:00sequential/simple_rnn_1/strided_slice_1:output:0Osequential/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Fsequential_simple_rnn_1_simple_rnn_cell_matmul_readvariableop_resourceGsequential_simple_rnn_1_simple_rnn_cell_biasadd_readvariableop_resourceHsequential_simple_rnn_1_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*4
body,R*
(sequential_simple_rnn_1_while_body_61624*4
cond,R*
(sequential_simple_rnn_1_while_cond_61623*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
Hsequential/simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
:sequential/simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack&sequential/simple_rnn_1/while:output:3Qsequential/simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
џџџџџџџџџ*
element_dtype0
-sequential/simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџy
/sequential/simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential/simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
'sequential/simple_rnn_1/strided_slice_3StridedSliceCsequential/simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:06sequential/simple_rnn_1/strided_slice_3/stack:output:08sequential/simple_rnn_1/strided_slice_3/stack_1:output:08sequential/simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask}
(sequential/simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          о
#sequential/simple_rnn_1/transpose_1	TransposeCsequential/simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:01sequential/simple_rnn_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ

sequential/dropout_1/IdentityIdentity'sequential/simple_rnn_1/transpose_1:y:0*
T0*+
_output_shapes
:џџџџџџџџџ

sequential/simple_rnn_2/ShapeShape&sequential/dropout_1/Identity:output:0*
T0*
_output_shapes
::эЯu
+sequential/simple_rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential/simple_rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential/simple_rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%sequential/simple_rnn_2/strided_sliceStridedSlice&sequential/simple_rnn_2/Shape:output:04sequential/simple_rnn_2/strided_slice/stack:output:06sequential/simple_rnn_2/strided_slice/stack_1:output:06sequential/simple_rnn_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential/simple_rnn_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Л
$sequential/simple_rnn_2/zeros/packedPack.sequential/simple_rnn_2/strided_slice:output:0/sequential/simple_rnn_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential/simple_rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
sequential/simple_rnn_2/zerosFill-sequential/simple_rnn_2/zeros/packed:output:0,sequential/simple_rnn_2/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ{
&sequential/simple_rnn_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Н
!sequential/simple_rnn_2/transpose	Transpose&sequential/dropout_1/Identity:output:0/sequential/simple_rnn_2/transpose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџ
sequential/simple_rnn_2/Shape_1Shape%sequential/simple_rnn_2/transpose:y:0*
T0*
_output_shapes
::эЯw
-sequential/simple_rnn_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential/simple_rnn_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential/simple_rnn_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
'sequential/simple_rnn_2/strided_slice_1StridedSlice(sequential/simple_rnn_2/Shape_1:output:06sequential/simple_rnn_2/strided_slice_1/stack:output:08sequential/simple_rnn_2/strided_slice_1/stack_1:output:08sequential/simple_rnn_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential/simple_rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџќ
%sequential/simple_rnn_2/TensorArrayV2TensorListReserve<sequential/simple_rnn_2/TensorArrayV2/element_shape:output:00sequential/simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Msequential/simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ј
?sequential/simple_rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential/simple_rnn_2/transpose:y:0Vsequential/simple_rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвw
-sequential/simple_rnn_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential/simple_rnn_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential/simple_rnn_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:с
'sequential/simple_rnn_2/strided_slice_2StridedSlice%sequential/simple_rnn_2/transpose:y:06sequential/simple_rnn_2/strided_slice_2/stack:output:08sequential/simple_rnn_2/strided_slice_2/stack_1:output:08sequential/simple_rnn_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskФ
=sequential/simple_rnn_2/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpFsequential_simple_rnn_2_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0у
.sequential/simple_rnn_2/simple_rnn_cell/MatMulMatMul0sequential/simple_rnn_2/strided_slice_2:output:0Esequential/simple_rnn_2/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџТ
>sequential/simple_rnn_2/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpGsequential_simple_rnn_2_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ю
/sequential/simple_rnn_2/simple_rnn_cell/BiasAddBiasAdd8sequential/simple_rnn_2/simple_rnn_cell/MatMul:product:0Fsequential/simple_rnn_2/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџШ
?sequential/simple_rnn_2/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpHsequential_simple_rnn_2_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0н
0sequential/simple_rnn_2/simple_rnn_cell/MatMul_1MatMul&sequential/simple_rnn_2/zeros:output:0Gsequential/simple_rnn_2/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџм
+sequential/simple_rnn_2/simple_rnn_cell/addAddV28sequential/simple_rnn_2/simple_rnn_cell/BiasAdd:output:0:sequential/simple_rnn_2/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
,sequential/simple_rnn_2/simple_rnn_cell/TanhTanh/sequential/simple_rnn_2/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
5sequential/simple_rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
'sequential/simple_rnn_2/TensorArrayV2_1TensorListReserve>sequential/simple_rnn_2/TensorArrayV2_1/element_shape:output:00sequential/simple_rnn_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв^
sequential/simple_rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential/simple_rnn_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџl
*sequential/simple_rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ы
sequential/simple_rnn_2/whileWhile3sequential/simple_rnn_2/while/loop_counter:output:09sequential/simple_rnn_2/while/maximum_iterations:output:0%sequential/simple_rnn_2/time:output:00sequential/simple_rnn_2/TensorArrayV2_1:handle:0&sequential/simple_rnn_2/zeros:output:00sequential/simple_rnn_2/strided_slice_1:output:0Osequential/simple_rnn_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0Fsequential_simple_rnn_2_simple_rnn_cell_matmul_readvariableop_resourceGsequential_simple_rnn_2_simple_rnn_cell_biasadd_readvariableop_resourceHsequential_simple_rnn_2_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*4
body,R*
(sequential_simple_rnn_2_while_body_61729*4
cond,R*
(sequential_simple_rnn_2_while_cond_61728*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
Hsequential/simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
:sequential/simple_rnn_2/TensorArrayV2Stack/TensorListStackTensorListStack&sequential/simple_rnn_2/while:output:3Qsequential/simple_rnn_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
џџџџџџџџџ*
element_dtype0
-sequential/simple_rnn_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџy
/sequential/simple_rnn_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential/simple_rnn_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
'sequential/simple_rnn_2/strided_slice_3StridedSliceCsequential/simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:06sequential/simple_rnn_2/strided_slice_3/stack:output:08sequential/simple_rnn_2/strided_slice_3/stack_1:output:08sequential/simple_rnn_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask}
(sequential/simple_rnn_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          о
#sequential/simple_rnn_2/transpose_1	TransposeCsequential/simple_rnn_2/TensorArrayV2Stack/TensorListStack:tensor:01sequential/simple_rnn_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ

sequential/dropout_2/IdentityIdentity'sequential/simple_rnn_2/transpose_1:y:0*
T0*+
_output_shapes
:џџџџџџџџџ

sequential/simple_rnn_3/ShapeShape&sequential/dropout_2/Identity:output:0*
T0*
_output_shapes
::эЯu
+sequential/simple_rnn_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential/simple_rnn_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential/simple_rnn_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
%sequential/simple_rnn_3/strided_sliceStridedSlice&sequential/simple_rnn_3/Shape:output:04sequential/simple_rnn_3/strided_slice/stack:output:06sequential/simple_rnn_3/strided_slice/stack_1:output:06sequential/simple_rnn_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential/simple_rnn_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Л
$sequential/simple_rnn_3/zeros/packedPack.sequential/simple_rnn_3/strided_slice:output:0/sequential/simple_rnn_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential/simple_rnn_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
sequential/simple_rnn_3/zerosFill-sequential/simple_rnn_3/zeros/packed:output:0,sequential/simple_rnn_3/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ{
&sequential/simple_rnn_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Н
!sequential/simple_rnn_3/transpose	Transpose&sequential/dropout_2/Identity:output:0/sequential/simple_rnn_3/transpose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџ
sequential/simple_rnn_3/Shape_1Shape%sequential/simple_rnn_3/transpose:y:0*
T0*
_output_shapes
::эЯw
-sequential/simple_rnn_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential/simple_rnn_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential/simple_rnn_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
'sequential/simple_rnn_3/strided_slice_1StridedSlice(sequential/simple_rnn_3/Shape_1:output:06sequential/simple_rnn_3/strided_slice_1/stack:output:08sequential/simple_rnn_3/strided_slice_1/stack_1:output:08sequential/simple_rnn_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential/simple_rnn_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџќ
%sequential/simple_rnn_3/TensorArrayV2TensorListReserve<sequential/simple_rnn_3/TensorArrayV2/element_shape:output:00sequential/simple_rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Msequential/simple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ј
?sequential/simple_rnn_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential/simple_rnn_3/transpose:y:0Vsequential/simple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвw
-sequential/simple_rnn_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential/simple_rnn_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential/simple_rnn_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:с
'sequential/simple_rnn_3/strided_slice_2StridedSlice%sequential/simple_rnn_3/transpose:y:06sequential/simple_rnn_3/strided_slice_2/stack:output:08sequential/simple_rnn_3/strided_slice_2/stack_1:output:08sequential/simple_rnn_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskФ
=sequential/simple_rnn_3/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpFsequential_simple_rnn_3_simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0у
.sequential/simple_rnn_3/simple_rnn_cell/MatMulMatMul0sequential/simple_rnn_3/strided_slice_2:output:0Esequential/simple_rnn_3/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџТ
>sequential/simple_rnn_3/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpGsequential_simple_rnn_3_simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ю
/sequential/simple_rnn_3/simple_rnn_cell/BiasAddBiasAdd8sequential/simple_rnn_3/simple_rnn_cell/MatMul:product:0Fsequential/simple_rnn_3/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџШ
?sequential/simple_rnn_3/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpHsequential_simple_rnn_3_simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0н
0sequential/simple_rnn_3/simple_rnn_cell/MatMul_1MatMul&sequential/simple_rnn_3/zeros:output:0Gsequential/simple_rnn_3/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџм
+sequential/simple_rnn_3/simple_rnn_cell/addAddV28sequential/simple_rnn_3/simple_rnn_cell/BiasAdd:output:0:sequential/simple_rnn_3/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
,sequential/simple_rnn_3/simple_rnn_cell/TanhTanh/sequential/simple_rnn_3/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
5sequential/simple_rnn_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   v
4sequential/simple_rnn_3/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :
'sequential/simple_rnn_3/TensorArrayV2_1TensorListReserve>sequential/simple_rnn_3/TensorArrayV2_1/element_shape:output:0=sequential/simple_rnn_3/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв^
sequential/simple_rnn_3/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential/simple_rnn_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџl
*sequential/simple_rnn_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ы
sequential/simple_rnn_3/whileWhile3sequential/simple_rnn_3/while/loop_counter:output:09sequential/simple_rnn_3/while/maximum_iterations:output:0%sequential/simple_rnn_3/time:output:00sequential/simple_rnn_3/TensorArrayV2_1:handle:0&sequential/simple_rnn_3/zeros:output:00sequential/simple_rnn_3/strided_slice_1:output:0Osequential/simple_rnn_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0Fsequential_simple_rnn_3_simple_rnn_cell_matmul_readvariableop_resourceGsequential_simple_rnn_3_simple_rnn_cell_biasadd_readvariableop_resourceHsequential_simple_rnn_3_simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*4
body,R*
(sequential_simple_rnn_3_while_body_61835*4
cond,R*
(sequential_simple_rnn_3_while_cond_61834*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
Hsequential/simple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
:sequential/simple_rnn_3/TensorArrayV2Stack/TensorListStackTensorListStack&sequential/simple_rnn_3/while:output:3Qsequential/simple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ*
element_dtype0*
num_elements
-sequential/simple_rnn_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџy
/sequential/simple_rnn_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential/simple_rnn_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
'sequential/simple_rnn_3/strided_slice_3StridedSliceCsequential/simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:06sequential/simple_rnn_3/strided_slice_3/stack:output:08sequential/simple_rnn_3/strided_slice_3/stack_1:output:08sequential/simple_rnn_3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask}
(sequential/simple_rnn_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          о
#sequential/simple_rnn_3/transpose_1	TransposeCsequential/simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:01sequential/simple_rnn_3/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
sequential/dropout_3/IdentityIdentity0sequential/simple_rnn_3/strided_slice_3:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ћ
sequential/dense/MatMulMatMul&sequential/dropout_3/Identity:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџp
IdentityIdentity!sequential/dense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџљ
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp=^sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp<^sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp>^sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp^sequential/simple_rnn/while?^sequential/simple_rnn_1/simple_rnn_cell/BiasAdd/ReadVariableOp>^sequential/simple_rnn_1/simple_rnn_cell/MatMul/ReadVariableOp@^sequential/simple_rnn_1/simple_rnn_cell/MatMul_1/ReadVariableOp^sequential/simple_rnn_1/while?^sequential/simple_rnn_2/simple_rnn_cell/BiasAdd/ReadVariableOp>^sequential/simple_rnn_2/simple_rnn_cell/MatMul/ReadVariableOp@^sequential/simple_rnn_2/simple_rnn_cell/MatMul_1/ReadVariableOp^sequential/simple_rnn_2/while?^sequential/simple_rnn_3/simple_rnn_cell/BiasAdd/ReadVariableOp>^sequential/simple_rnn_3/simple_rnn_cell/MatMul/ReadVariableOp@^sequential/simple_rnn_3/simple_rnn_cell/MatMul_1/ReadVariableOp^sequential/simple_rnn_3/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:џџџџџџџџџ
: : : : : : : : : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2|
<sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp<sequential/simple_rnn/simple_rnn_cell/BiasAdd/ReadVariableOp2z
;sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp;sequential/simple_rnn/simple_rnn_cell/MatMul/ReadVariableOp2~
=sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp=sequential/simple_rnn/simple_rnn_cell/MatMul_1/ReadVariableOp2:
sequential/simple_rnn/whilesequential/simple_rnn/while2
>sequential/simple_rnn_1/simple_rnn_cell/BiasAdd/ReadVariableOp>sequential/simple_rnn_1/simple_rnn_cell/BiasAdd/ReadVariableOp2~
=sequential/simple_rnn_1/simple_rnn_cell/MatMul/ReadVariableOp=sequential/simple_rnn_1/simple_rnn_cell/MatMul/ReadVariableOp2
?sequential/simple_rnn_1/simple_rnn_cell/MatMul_1/ReadVariableOp?sequential/simple_rnn_1/simple_rnn_cell/MatMul_1/ReadVariableOp2>
sequential/simple_rnn_1/whilesequential/simple_rnn_1/while2
>sequential/simple_rnn_2/simple_rnn_cell/BiasAdd/ReadVariableOp>sequential/simple_rnn_2/simple_rnn_cell/BiasAdd/ReadVariableOp2~
=sequential/simple_rnn_2/simple_rnn_cell/MatMul/ReadVariableOp=sequential/simple_rnn_2/simple_rnn_cell/MatMul/ReadVariableOp2
?sequential/simple_rnn_2/simple_rnn_cell/MatMul_1/ReadVariableOp?sequential/simple_rnn_2/simple_rnn_cell/MatMul_1/ReadVariableOp2>
sequential/simple_rnn_2/whilesequential/simple_rnn_2/while2
>sequential/simple_rnn_3/simple_rnn_cell/BiasAdd/ReadVariableOp>sequential/simple_rnn_3/simple_rnn_cell/BiasAdd/ReadVariableOp2~
=sequential/simple_rnn_3/simple_rnn_cell/MatMul/ReadVariableOp=sequential/simple_rnn_3/simple_rnn_cell/MatMul/ReadVariableOp2
?sequential/simple_rnn_3/simple_rnn_cell/MatMul_1/ReadVariableOp?sequential/simple_rnn_3/simple_rnn_cell/MatMul_1/ReadVariableOp2>
sequential/simple_rnn_3/whilesequential/simple_rnn_3/while:] Y
+
_output_shapes
:џџџџџџџџџ

*
_user_specified_namesimple_rnn_input:($
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
й
ч
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66689

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
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
т
Ѕ
while_cond_62950
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_62950___redundant_placeholder03
/while_while_cond_62950___redundant_placeholder13
/while_while_cond_62950___redundant_placeholder23
/while_while_cond_62950___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
З
N
"__inference__update_step_xla_64372
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
З
N
"__inference__update_step_xla_64397
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

з
/__inference_simple_rnn_cell_layer_call_fn_66641

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62816o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states_0:%!

_user_specified_name66631:%!

_user_specified_name66633:%!

_user_specified_name66635
т
Ѕ
while_cond_66327
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_66327___redundant_placeholder03
/while_while_cond_66327___redundant_placeholder13
/while_while_cond_66327___redundant_placeholder23
/while_while_cond_66327___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ћ-
Е
while_body_63642
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
6while_simple_rnn_cell_matmul_1_readvariableop_resource:Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
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

:*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЧ
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
:џџџџџџџџџЕ

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
%: : : : :џџџџџџџџџ: : : : : 2\
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
:џџџџџџџџџ:GC
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
ї
Ч
&sequential_simple_rnn_while_cond_61518H
Dsequential_simple_rnn_while_sequential_simple_rnn_while_loop_counterN
Jsequential_simple_rnn_while_sequential_simple_rnn_while_maximum_iterations+
'sequential_simple_rnn_while_placeholder-
)sequential_simple_rnn_while_placeholder_1-
)sequential_simple_rnn_while_placeholder_2J
Fsequential_simple_rnn_while_less_sequential_simple_rnn_strided_slice_1_
[sequential_simple_rnn_while_sequential_simple_rnn_while_cond_61518___redundant_placeholder0_
[sequential_simple_rnn_while_sequential_simple_rnn_while_cond_61518___redundant_placeholder1_
[sequential_simple_rnn_while_sequential_simple_rnn_while_cond_61518___redundant_placeholder2_
[sequential_simple_rnn_while_sequential_simple_rnn_while_cond_61518___redundant_placeholder3(
$sequential_simple_rnn_while_identity
К
 sequential/simple_rnn/while/LessLess'sequential_simple_rnn_while_placeholderFsequential_simple_rnn_while_less_sequential_simple_rnn_strided_slice_1*
T0*
_output_shapes
: w
$sequential/simple_rnn/while/IdentityIdentity$sequential/simple_rnn/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_simple_rnn_while_identity-sequential/simple_rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ: :::::` \

_output_shapes
: 
B
_user_specified_name*(sequential/simple_rnn/while/loop_counter:fb

_output_shapes
: 
H
_user_specified_name0.sequential/simple_rnn/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:]Y

_output_shapes
: 
?
_user_specified_name'%sequential/simple_rnn/strided_slice_1:

_output_shapes
:
ї#
М
while_body_62951
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_simple_rnn_cell_62973_0:+
while_simple_rnn_cell_62975_0:/
while_simple_rnn_cell_62977_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_simple_rnn_cell_62973:)
while_simple_rnn_cell_62975:-
while_simple_rnn_cell_62977:Ђ-while/simple_rnn_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_62973_0while_simple_rnn_cell_62975_0while_simple_rnn_cell_62977_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62937r
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
:џџџџџџџџџX

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"<
while_simple_rnn_cell_62973while_simple_rnn_cell_62973_0"<
while_simple_rnn_cell_62975while_simple_rnn_cell_62975_0"<
while_simple_rnn_cell_62977while_simple_rnn_cell_62977_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2^
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:%!

_user_specified_name62973:%!

_user_specified_name62975:%	!

_user_specified_name62977
 5

G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_62894

inputs'
simple_rnn_cell_62817:#
simple_rnn_cell_62819:'
simple_rnn_cell_62821:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
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
valueB"џџџџ   р
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
:џџџџџџџџџ*
shrink_axis_maskм
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_62817simple_rnn_cell_62819simple_rnn_cell_62821*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62816n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ^
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
value	B : х
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_62817simple_rnn_cell_62819simple_rnn_cell_62821*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_62830*
condR
while_cond_62829*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџT
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:%!

_user_specified_name62817:%!

_user_specified_name62819:%!

_user_specified_name62821
х
`
B__inference_dropout_layer_call_and_return_conditional_losses_63720

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ
_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
Ћ
J
"__inference__update_step_xla_64347
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
ћ-
Е
while_body_63763
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
6while_simple_rnn_cell_matmul_1_readvariableop_resource:Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЧ
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
:џџџџџџџџџЕ

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
%: : : : :џџџџџџџџџ: : : : : 2\
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
:џџџџџџџџџ:GC
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
Е4

G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_62723

inputs'
simple_rnn_cell_62648:#
simple_rnn_cell_62650:'
simple_rnn_cell_62652:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
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
valueB"џџџџ   р
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
:џџџџџџџџџ*
shrink_axis_maskм
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_62648simple_rnn_cell_62650simple_rnn_cell_62652*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62647n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
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
value	B : х
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_62648simple_rnn_cell_62650simple_rnn_cell_62652*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_62660*
condR
while_cond_62659*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџT
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:%!

_user_specified_name62648:%!

_user_specified_name62650:%!

_user_specified_name62652
А
E
)__inference_dropout_2_layer_call_fn_65894

inputs
identityЖ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_63962d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
ѓ	
ё
@__inference_dense_layer_call_and_return_conditional_losses_63591

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource


c
D__inference_dropout_3_layer_call_and_return_conditional_losses_63580

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
:џџџџџџџџџQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ*
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
:џџџџџџџџџT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџa
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ћ-
Е
while_body_65818
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
6while_simple_rnn_cell_matmul_1_readvariableop_resource:Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЧ
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
:џџџџџџџџџЕ

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
%: : : : :џџџџџџџџџ: : : : : 2\
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
:џџџџџџџџџ:GC
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
З
N
"__inference__update_step_xla_64367
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
Д

c
D__inference_dropout_1_layer_call_and_return_conditional_losses_65403

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
:џџџџџџџџџ
Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
*
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
:џџџџџџџџџ
T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
а
Ж
,__inference_simple_rnn_3_layer_call_fn_65944

inputs
unknown:
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_63561o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs:%!

_user_specified_name65936:%!

_user_specified_name65938:%!

_user_specified_name65940
ю=
А
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_65165
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
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
valueB"џџџџ   р
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
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџg
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
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
value	B : Г
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_65099*
condR
while_cond_65098*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџЅ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
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


c
D__inference_dropout_3_layer_call_and_return_conditional_losses_66417

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
:џџџџџџџџџQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ*
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
:џџџџџџџџџT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџa
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
й
ч
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66627

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
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
т
Ѕ
while_cond_65997
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_65997___redundant_placeholder03
/while_while_cond_65997___redundant_placeholder13
/while_while_cond_65997___redundant_placeholder23
/while_while_cond_65997___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
г
х
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62647

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
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
Г4

E__inference_simple_rnn_layer_call_and_return_conditional_losses_62147

inputs'
simple_rnn_cell_62072:#
simple_rnn_cell_62074:'
simple_rnn_cell_62076:
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
:џџџџџџџџџc
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
shrink_axis_maskм
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_62072simple_rnn_cell_62074simple_rnn_cell_62076*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62071n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
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
value	B : х
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_62072simple_rnn_cell_62074simple_rnn_cell_62076*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_62084*
condR
while_cond_62083*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџT
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
 
_user_specified_nameinputs:%!

_user_specified_name62072:%!

_user_specified_name62074:%!

_user_specified_name62076
З
N
"__inference__update_step_xla_64352
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
ь=
Ў
E__inference_simple_rnn_layer_call_and_return_conditional_losses_64662
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
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
:џџџџџџџџџc
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

:*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџg
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
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
value	B : Г
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_64596*
condR
while_cond_64595*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџЅ
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
г
х
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62359

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
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
о
b
)__inference_dropout_2_layer_call_fn_65889

inputs
identityЂStatefulPartitionedCallЦ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_63450s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
Ў=
Ќ
E__inference_simple_rnn_layer_call_and_return_conditional_losses_64770

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџR
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

:*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџg
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
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
value	B : Г
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_64704*
condR
while_cond_64703*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
џџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
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
и
Ж
,__inference_simple_rnn_2_layer_call_fn_65452

inputs
unknown:
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_63950s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs:%!

_user_specified_name65444:%!

_user_specified_name65446:%!

_user_specified_name65448
г
х
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_61952

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
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
з
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_64085

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
А
E
)__inference_dropout_1_layer_call_fn_65391

inputs
identityЖ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_63841d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
E

(sequential_simple_rnn_1_while_body_61624L
Hsequential_simple_rnn_1_while_sequential_simple_rnn_1_while_loop_counterR
Nsequential_simple_rnn_1_while_sequential_simple_rnn_1_while_maximum_iterations-
)sequential_simple_rnn_1_while_placeholder/
+sequential_simple_rnn_1_while_placeholder_1/
+sequential_simple_rnn_1_while_placeholder_2K
Gsequential_simple_rnn_1_while_sequential_simple_rnn_1_strided_slice_1_0
sequential_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0`
Nsequential_simple_rnn_1_while_simple_rnn_cell_matmul_readvariableop_resource_0:]
Osequential_simple_rnn_1_while_simple_rnn_cell_biasadd_readvariableop_resource_0:b
Psequential_simple_rnn_1_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:*
&sequential_simple_rnn_1_while_identity,
(sequential_simple_rnn_1_while_identity_1,
(sequential_simple_rnn_1_while_identity_2,
(sequential_simple_rnn_1_while_identity_3,
(sequential_simple_rnn_1_while_identity_4I
Esequential_simple_rnn_1_while_sequential_simple_rnn_1_strided_slice_1
sequential_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor^
Lsequential_simple_rnn_1_while_simple_rnn_cell_matmul_readvariableop_resource:[
Msequential_simple_rnn_1_while_simple_rnn_cell_biasadd_readvariableop_resource:`
Nsequential_simple_rnn_1_while_simple_rnn_cell_matmul_1_readvariableop_resource:ЂDsequential/simple_rnn_1/while/simple_rnn_cell/BiasAdd/ReadVariableOpЂCsequential/simple_rnn_1/while/simple_rnn_cell/MatMul/ReadVariableOpЂEsequential/simple_rnn_1/while/simple_rnn_cell/MatMul_1/ReadVariableOp 
Osequential/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
Asequential/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0)sequential_simple_rnn_1_while_placeholderXsequential/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0в
Csequential/simple_rnn_1/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpNsequential_simple_rnn_1_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0
4sequential/simple_rnn_1/while/simple_rnn_cell/MatMulMatMulHsequential/simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Ksequential/simple_rnn_1/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџа
Dsequential/simple_rnn_1/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpOsequential_simple_rnn_1_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0
5sequential/simple_rnn_1/while/simple_rnn_cell/BiasAddBiasAdd>sequential/simple_rnn_1/while/simple_rnn_cell/MatMul:product:0Lsequential/simple_rnn_1/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџж
Esequential/simple_rnn_1/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpPsequential_simple_rnn_1_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0ю
6sequential/simple_rnn_1/while/simple_rnn_cell/MatMul_1MatMul+sequential_simple_rnn_1_while_placeholder_2Msequential/simple_rnn_1/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџю
1sequential/simple_rnn_1/while/simple_rnn_cell/addAddV2>sequential/simple_rnn_1/while/simple_rnn_cell/BiasAdd:output:0@sequential/simple_rnn_1/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџЃ
2sequential/simple_rnn_1/while/simple_rnn_cell/TanhTanh5sequential/simple_rnn_1/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЇ
Bsequential/simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_simple_rnn_1_while_placeholder_1)sequential_simple_rnn_1_while_placeholder6sequential/simple_rnn_1/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвe
#sequential/simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Є
!sequential/simple_rnn_1/while/addAddV2)sequential_simple_rnn_1_while_placeholder,sequential/simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential/simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ч
#sequential/simple_rnn_1/while/add_1AddV2Hsequential_simple_rnn_1_while_sequential_simple_rnn_1_while_loop_counter.sequential/simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: Ё
&sequential/simple_rnn_1/while/IdentityIdentity'sequential/simple_rnn_1/while/add_1:z:0#^sequential/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Ъ
(sequential/simple_rnn_1/while/Identity_1IdentityNsequential_simple_rnn_1_while_sequential_simple_rnn_1_while_maximum_iterations#^sequential/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Ё
(sequential/simple_rnn_1/while/Identity_2Identity%sequential/simple_rnn_1/while/add:z:0#^sequential/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Ю
(sequential/simple_rnn_1/while/Identity_3IdentityRsequential/simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential/simple_rnn_1/while/NoOp*
T0*
_output_shapes
: У
(sequential/simple_rnn_1/while/Identity_4Identity6sequential/simple_rnn_1/while/simple_rnn_cell/Tanh:y:0#^sequential/simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
"sequential/simple_rnn_1/while/NoOpNoOpE^sequential/simple_rnn_1/while/simple_rnn_cell/BiasAdd/ReadVariableOpD^sequential/simple_rnn_1/while/simple_rnn_cell/MatMul/ReadVariableOpF^sequential/simple_rnn_1/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "Y
&sequential_simple_rnn_1_while_identity/sequential/simple_rnn_1/while/Identity:output:0"]
(sequential_simple_rnn_1_while_identity_11sequential/simple_rnn_1/while/Identity_1:output:0"]
(sequential_simple_rnn_1_while_identity_21sequential/simple_rnn_1/while/Identity_2:output:0"]
(sequential_simple_rnn_1_while_identity_31sequential/simple_rnn_1/while/Identity_3:output:0"]
(sequential_simple_rnn_1_while_identity_41sequential/simple_rnn_1/while/Identity_4:output:0"
Esequential_simple_rnn_1_while_sequential_simple_rnn_1_strided_slice_1Gsequential_simple_rnn_1_while_sequential_simple_rnn_1_strided_slice_1_0" 
Msequential_simple_rnn_1_while_simple_rnn_cell_biasadd_readvariableop_resourceOsequential_simple_rnn_1_while_simple_rnn_cell_biasadd_readvariableop_resource_0"Ђ
Nsequential_simple_rnn_1_while_simple_rnn_cell_matmul_1_readvariableop_resourcePsequential_simple_rnn_1_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"
Lsequential_simple_rnn_1_while_simple_rnn_cell_matmul_readvariableop_resourceNsequential_simple_rnn_1_while_simple_rnn_cell_matmul_readvariableop_resource_0"
sequential_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorsequential_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2
Dsequential/simple_rnn_1/while/simple_rnn_cell/BiasAdd/ReadVariableOpDsequential/simple_rnn_1/while/simple_rnn_cell/BiasAdd/ReadVariableOp2
Csequential/simple_rnn_1/while/simple_rnn_cell/MatMul/ReadVariableOpCsequential/simple_rnn_1/while/simple_rnn_cell/MatMul/ReadVariableOp2
Esequential/simple_rnn_1/while/simple_rnn_cell/MatMul_1/ReadVariableOpEsequential/simple_rnn_1/while/simple_rnn_cell/MatMul_1/ReadVariableOp:b ^

_output_shapes
: 
D
_user_specified_name,*sequential/simple_rnn_1/while/loop_counter:hd

_output_shapes
: 
J
_user_specified_name20sequential/simple_rnn_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:_[

_output_shapes
: 
A
_user_specified_name)'sequential/simple_rnn_1/strided_slice_1:ws

_output_shapes
: 
Y
_user_specified_nameA?sequential/simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
ё
№
*__inference_sequential_layer_call_fn_64159
simple_rnn_input
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
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_64093o
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
3:џџџџџџџџџ
: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
+
_output_shapes
:џџџџџџџџџ

*
_user_specified_namesimple_rnn_input:%!

_user_specified_name64129:%!

_user_specified_name64131:%!

_user_specified_name64133:%!

_user_specified_name64135:%!

_user_specified_name64137:%!

_user_specified_name64139:%!

_user_specified_name64141:%!

_user_specified_name64143:%	!

_user_specified_name64145:%
!

_user_specified_name64147:%!

_user_specified_name64149:%!

_user_specified_name64151:%!

_user_specified_name64153:%!

_user_specified_name64155
/
Е
while_body_63494
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
6while_simple_rnn_cell_matmul_1_readvariableop_resource:Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџr
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
:џџџџџџџџџЕ

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
%: : : : :џџџџџџџџџ: : : : : 2\
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
:џџџџџџџџџ:GC
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
т
Ѕ
while_cond_65314
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_65314___redundant_placeholder03
/while_while_cond_65314___redundant_placeholder13
/while_while_cond_65314___redundant_placeholder23
/while_while_cond_65314___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ч

%__inference_dense_layer_call_fn_66431

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallи
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
GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_63591o
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
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:%!

_user_specified_name66425:%!

_user_specified_name66427
г
х
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62240

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
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
т
Ѕ
while_cond_62252
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_62252___redundant_placeholder03
/while_while_cond_62252___redundant_placeholder13
/while_while_cond_62252___redundant_placeholder23
/while_while_cond_62252___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
/
Е
while_body_65998
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
6while_simple_rnn_cell_matmul_1_readvariableop_resource:Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџr
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
:џџџџџџџџџЕ

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
%: : : : :џџџџџџџџџ: : : : : 2\
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
:џџџџџџџџџ:GC
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
т
Ѕ
while_cond_63762
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_63762___redundant_placeholder03
/while_while_cond_63762___redundant_placeholder13
/while_while_cond_63762___redundant_placeholder23
/while_while_cond_63762___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ъ
И#
!__inference__traced_restore_67143
file_prefix/
assignvariableop_dense_kernel:+
assignvariableop_1_dense_bias:F
4assignvariableop_2_simple_rnn_simple_rnn_cell_kernel:P
>assignvariableop_3_simple_rnn_simple_rnn_cell_recurrent_kernel:@
2assignvariableop_4_simple_rnn_simple_rnn_cell_bias:H
6assignvariableop_5_simple_rnn_1_simple_rnn_cell_kernel:R
@assignvariableop_6_simple_rnn_1_simple_rnn_cell_recurrent_kernel:B
4assignvariableop_7_simple_rnn_1_simple_rnn_cell_bias:H
6assignvariableop_8_simple_rnn_2_simple_rnn_cell_kernel:R
@assignvariableop_9_simple_rnn_2_simple_rnn_cell_recurrent_kernel:C
5assignvariableop_10_simple_rnn_2_simple_rnn_cell_bias:I
7assignvariableop_11_simple_rnn_3_simple_rnn_cell_kernel:S
Aassignvariableop_12_simple_rnn_3_simple_rnn_cell_recurrent_kernel:C
5assignvariableop_13_simple_rnn_3_simple_rnn_cell_bias:'
assignvariableop_14_iteration:	 +
!assignvariableop_15_learning_rate: ,
"assignvariableop_16_nadam_variable: O
=assignvariableop_17_nadam_m_simple_rnn_simple_rnn_cell_kernel:O
=assignvariableop_18_nadam_v_simple_rnn_simple_rnn_cell_kernel:Y
Gassignvariableop_19_nadam_m_simple_rnn_simple_rnn_cell_recurrent_kernel:Y
Gassignvariableop_20_nadam_v_simple_rnn_simple_rnn_cell_recurrent_kernel:I
;assignvariableop_21_nadam_m_simple_rnn_simple_rnn_cell_bias:I
;assignvariableop_22_nadam_v_simple_rnn_simple_rnn_cell_bias:Q
?assignvariableop_23_nadam_m_simple_rnn_1_simple_rnn_cell_kernel:Q
?assignvariableop_24_nadam_v_simple_rnn_1_simple_rnn_cell_kernel:[
Iassignvariableop_25_nadam_m_simple_rnn_1_simple_rnn_cell_recurrent_kernel:[
Iassignvariableop_26_nadam_v_simple_rnn_1_simple_rnn_cell_recurrent_kernel:K
=assignvariableop_27_nadam_m_simple_rnn_1_simple_rnn_cell_bias:K
=assignvariableop_28_nadam_v_simple_rnn_1_simple_rnn_cell_bias:Q
?assignvariableop_29_nadam_m_simple_rnn_2_simple_rnn_cell_kernel:Q
?assignvariableop_30_nadam_v_simple_rnn_2_simple_rnn_cell_kernel:[
Iassignvariableop_31_nadam_m_simple_rnn_2_simple_rnn_cell_recurrent_kernel:[
Iassignvariableop_32_nadam_v_simple_rnn_2_simple_rnn_cell_recurrent_kernel:K
=assignvariableop_33_nadam_m_simple_rnn_2_simple_rnn_cell_bias:K
=assignvariableop_34_nadam_v_simple_rnn_2_simple_rnn_cell_bias:Q
?assignvariableop_35_nadam_m_simple_rnn_3_simple_rnn_cell_kernel:Q
?assignvariableop_36_nadam_v_simple_rnn_3_simple_rnn_cell_kernel:[
Iassignvariableop_37_nadam_m_simple_rnn_3_simple_rnn_cell_recurrent_kernel:[
Iassignvariableop_38_nadam_v_simple_rnn_3_simple_rnn_cell_recurrent_kernel:K
=assignvariableop_39_nadam_m_simple_rnn_3_simple_rnn_cell_bias:K
=assignvariableop_40_nadam_v_simple_rnn_3_simple_rnn_cell_bias::
(assignvariableop_41_nadam_m_dense_kernel::
(assignvariableop_42_nadam_v_dense_kernel:4
&assignvariableop_43_nadam_m_dense_bias:4
&assignvariableop_44_nadam_v_dense_bias:#
assignvariableop_45_total: #
assignvariableop_46_count: 
identity_48ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_42ЂAssignVariableOp_43ЂAssignVariableOp_44ЂAssignVariableOp_45ЂAssignVariableOp_46ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*Ў
valueЄBЁ0B6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB/optimizer/_u_product/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHа
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*s
valuejBh0B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ж
_output_shapesУ
Р::::::::::::::::::::::::::::::::::::::::::::::::*>
dtypes4
220	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:А
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_2AssignVariableOp4assignvariableop_2_simple_rnn_simple_rnn_cell_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_3AssignVariableOp>assignvariableop_3_simple_rnn_simple_rnn_cell_recurrent_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_4AssignVariableOp2assignvariableop_4_simple_rnn_simple_rnn_cell_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_5AssignVariableOp6assignvariableop_5_simple_rnn_1_simple_rnn_cell_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_6AssignVariableOp@assignvariableop_6_simple_rnn_1_simple_rnn_cell_recurrent_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_7AssignVariableOp4assignvariableop_7_simple_rnn_1_simple_rnn_cell_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_8AssignVariableOp6assignvariableop_8_simple_rnn_2_simple_rnn_cell_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_9AssignVariableOp@assignvariableop_9_simple_rnn_2_simple_rnn_cell_recurrent_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_10AssignVariableOp5assignvariableop_10_simple_rnn_2_simple_rnn_cell_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_11AssignVariableOp7assignvariableop_11_simple_rnn_3_simple_rnn_cell_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:к
AssignVariableOp_12AssignVariableOpAassignvariableop_12_simple_rnn_3_simple_rnn_cell_recurrent_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_13AssignVariableOp5assignvariableop_13_simple_rnn_3_simple_rnn_cell_biasIdentity_13:output:0"/device:CPU:0*&
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
:Л
AssignVariableOp_16AssignVariableOp"assignvariableop_16_nadam_variableIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_17AssignVariableOp=assignvariableop_17_nadam_m_simple_rnn_simple_rnn_cell_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_18AssignVariableOp=assignvariableop_18_nadam_v_simple_rnn_simple_rnn_cell_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:р
AssignVariableOp_19AssignVariableOpGassignvariableop_19_nadam_m_simple_rnn_simple_rnn_cell_recurrent_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:р
AssignVariableOp_20AssignVariableOpGassignvariableop_20_nadam_v_simple_rnn_simple_rnn_cell_recurrent_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_21AssignVariableOp;assignvariableop_21_nadam_m_simple_rnn_simple_rnn_cell_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_22AssignVariableOp;assignvariableop_22_nadam_v_simple_rnn_simple_rnn_cell_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_23AssignVariableOp?assignvariableop_23_nadam_m_simple_rnn_1_simple_rnn_cell_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_24AssignVariableOp?assignvariableop_24_nadam_v_simple_rnn_1_simple_rnn_cell_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:т
AssignVariableOp_25AssignVariableOpIassignvariableop_25_nadam_m_simple_rnn_1_simple_rnn_cell_recurrent_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:т
AssignVariableOp_26AssignVariableOpIassignvariableop_26_nadam_v_simple_rnn_1_simple_rnn_cell_recurrent_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_27AssignVariableOp=assignvariableop_27_nadam_m_simple_rnn_1_simple_rnn_cell_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_28AssignVariableOp=assignvariableop_28_nadam_v_simple_rnn_1_simple_rnn_cell_biasIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_29AssignVariableOp?assignvariableop_29_nadam_m_simple_rnn_2_simple_rnn_cell_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_30AssignVariableOp?assignvariableop_30_nadam_v_simple_rnn_2_simple_rnn_cell_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:т
AssignVariableOp_31AssignVariableOpIassignvariableop_31_nadam_m_simple_rnn_2_simple_rnn_cell_recurrent_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:т
AssignVariableOp_32AssignVariableOpIassignvariableop_32_nadam_v_simple_rnn_2_simple_rnn_cell_recurrent_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_33AssignVariableOp=assignvariableop_33_nadam_m_simple_rnn_2_simple_rnn_cell_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_34AssignVariableOp=assignvariableop_34_nadam_v_simple_rnn_2_simple_rnn_cell_biasIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_35AssignVariableOp?assignvariableop_35_nadam_m_simple_rnn_3_simple_rnn_cell_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_36AssignVariableOp?assignvariableop_36_nadam_v_simple_rnn_3_simple_rnn_cell_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:т
AssignVariableOp_37AssignVariableOpIassignvariableop_37_nadam_m_simple_rnn_3_simple_rnn_cell_recurrent_kernelIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:т
AssignVariableOp_38AssignVariableOpIassignvariableop_38_nadam_v_simple_rnn_3_simple_rnn_cell_recurrent_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_39AssignVariableOp=assignvariableop_39_nadam_m_simple_rnn_3_simple_rnn_cell_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_40AssignVariableOp=assignvariableop_40_nadam_v_simple_rnn_3_simple_rnn_cell_biasIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_41AssignVariableOp(assignvariableop_41_nadam_m_dense_kernelIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_42AssignVariableOp(assignvariableop_42_nadam_v_dense_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_43AssignVariableOp&assignvariableop_43_nadam_m_dense_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_44AssignVariableOp&assignvariableop_44_nadam_v_dense_biasIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_45AssignVariableOpassignvariableop_45_totalIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_46AssignVariableOpassignvariableop_46_countIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 й
Identity_47Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_48IdentityIdentity_47:output:0^NoOp_1*
T0*
_output_shapes
: Ђ
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
_user_specified_namefile_prefix:,(
&
_user_specified_namedense/kernel:*&
$
_user_specified_name
dense/bias:A=
;
_user_specified_name#!simple_rnn/simple_rnn_cell/kernel:KG
E
_user_specified_name-+simple_rnn/simple_rnn_cell/recurrent_kernel:?;
9
_user_specified_name!simple_rnn/simple_rnn_cell/bias:C?
=
_user_specified_name%#simple_rnn_1/simple_rnn_cell/kernel:MI
G
_user_specified_name/-simple_rnn_1/simple_rnn_cell/recurrent_kernel:A=
;
_user_specified_name#!simple_rnn_1/simple_rnn_cell/bias:C	?
=
_user_specified_name%#simple_rnn_2/simple_rnn_cell/kernel:M
I
G
_user_specified_name/-simple_rnn_2/simple_rnn_cell/recurrent_kernel:A=
;
_user_specified_name#!simple_rnn_2/simple_rnn_cell/bias:C?
=
_user_specified_name%#simple_rnn_3/simple_rnn_cell/kernel:MI
G
_user_specified_name/-simple_rnn_3/simple_rnn_cell/recurrent_kernel:A=
;
_user_specified_name#!simple_rnn_3/simple_rnn_cell/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:.*
(
_user_specified_nameNadam/Variable:IE
C
_user_specified_name+)Nadam/m/simple_rnn/simple_rnn_cell/kernel:IE
C
_user_specified_name+)Nadam/v/simple_rnn/simple_rnn_cell/kernel:SO
M
_user_specified_name53Nadam/m/simple_rnn/simple_rnn_cell/recurrent_kernel:SO
M
_user_specified_name53Nadam/v/simple_rnn/simple_rnn_cell/recurrent_kernel:GC
A
_user_specified_name)'Nadam/m/simple_rnn/simple_rnn_cell/bias:GC
A
_user_specified_name)'Nadam/v/simple_rnn/simple_rnn_cell/bias:KG
E
_user_specified_name-+Nadam/m/simple_rnn_1/simple_rnn_cell/kernel:KG
E
_user_specified_name-+Nadam/v/simple_rnn_1/simple_rnn_cell/kernel:UQ
O
_user_specified_name75Nadam/m/simple_rnn_1/simple_rnn_cell/recurrent_kernel:UQ
O
_user_specified_name75Nadam/v/simple_rnn_1/simple_rnn_cell/recurrent_kernel:IE
C
_user_specified_name+)Nadam/m/simple_rnn_1/simple_rnn_cell/bias:IE
C
_user_specified_name+)Nadam/v/simple_rnn_1/simple_rnn_cell/bias:KG
E
_user_specified_name-+Nadam/m/simple_rnn_2/simple_rnn_cell/kernel:KG
E
_user_specified_name-+Nadam/v/simple_rnn_2/simple_rnn_cell/kernel:U Q
O
_user_specified_name75Nadam/m/simple_rnn_2/simple_rnn_cell/recurrent_kernel:U!Q
O
_user_specified_name75Nadam/v/simple_rnn_2/simple_rnn_cell/recurrent_kernel:I"E
C
_user_specified_name+)Nadam/m/simple_rnn_2/simple_rnn_cell/bias:I#E
C
_user_specified_name+)Nadam/v/simple_rnn_2/simple_rnn_cell/bias:K$G
E
_user_specified_name-+Nadam/m/simple_rnn_3/simple_rnn_cell/kernel:K%G
E
_user_specified_name-+Nadam/v/simple_rnn_3/simple_rnn_cell/kernel:U&Q
O
_user_specified_name75Nadam/m/simple_rnn_3/simple_rnn_cell/recurrent_kernel:U'Q
O
_user_specified_name75Nadam/v/simple_rnn_3/simple_rnn_cell/recurrent_kernel:I(E
C
_user_specified_name+)Nadam/m/simple_rnn_3/simple_rnn_cell/bias:I)E
C
_user_specified_name+)Nadam/v/simple_rnn_3/simple_rnn_cell/bias:4*0
.
_user_specified_nameNadam/m/dense/kernel:4+0
.
_user_specified_nameNadam/v/dense/kernel:2,.
,
_user_specified_nameNadam/m/dense/bias:2-.
,
_user_specified_nameNadam/v/dense/bias:%.!

_user_specified_nametotal:%/!

_user_specified_namecount
т
Ѕ
while_cond_62371
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_62371___redundant_placeholder03
/while_while_cond_62371___redundant_placeholder13
/while_while_cond_62371___redundant_placeholder23
/while_while_cond_62371___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ћ
J
"__inference__update_step_xla_64402
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
к
`
'__inference_dropout_layer_call_fn_64883

inputs
identityЂStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_63194s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
З
N
"__inference__update_step_xla_64387
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
г
х
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62816

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
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
т
Ѕ
while_cond_65709
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_65709___redundant_placeholder03
/while_while_cond_65709___redundant_placeholder13
/while_while_cond_65709___redundant_placeholder23
/while_while_cond_65709___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
т
Ѕ
while_cond_64487
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_64487___redundant_placeholder03
/while_while_cond_64487___redundant_placeholder13
/while_while_cond_64487___redundant_placeholder23
/while_while_cond_64487___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
А=
Ў
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_63303

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџR
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
valueB"џџџџ   р
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
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџg
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
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
value	B : Г
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_63237*
condR
while_cond_63236*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
џџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
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
т
Ѕ
while_cond_64811
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_64811___redundant_placeholder03
/while_while_cond_64811___redundant_placeholder13
/while_while_cond_64811___redundant_placeholder23
/while_while_cond_64811___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
д
Д
*__inference_simple_rnn_layer_call_fn_64446

inputs
unknown:
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_simple_rnn_layer_call_and_return_conditional_losses_63708s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs:%!

_user_specified_name64438:%!

_user_specified_name64440:%!

_user_specified_name64442
ў
Ж
*__inference_simple_rnn_layer_call_fn_64413
inputs_0
unknown:
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_simple_rnn_layer_call_and_return_conditional_losses_62028|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ<
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
inputs_0:%!

_user_specified_name64405:%!

_user_specified_name64407:%!

_user_specified_name64409
ћ-
Е
while_body_65494
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
6while_simple_rnn_cell_matmul_1_readvariableop_resource:Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЧ
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
:џџџџџџџџџЕ

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
%: : : : :џџџџџџџџџ: : : : : 2\
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
:џџџџџџџџџ:GC
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
г
х
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62528

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
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
и3
Ђ
E__inference_sequential_layer_call_and_return_conditional_losses_63598
simple_rnn_input"
simple_rnn_63176:
simple_rnn_63178:"
simple_rnn_63180:$
simple_rnn_1_63304: 
simple_rnn_1_63306:$
simple_rnn_1_63308:$
simple_rnn_2_63432: 
simple_rnn_2_63434:$
simple_rnn_2_63436:$
simple_rnn_3_63562: 
simple_rnn_3_63564:$
simple_rnn_3_63566:
dense_63592:
dense_63594:
identityЂdense/StatefulPartitionedCallЂdropout/StatefulPartitionedCallЂ!dropout_1/StatefulPartitionedCallЂ!dropout_2/StatefulPartitionedCallЂ!dropout_3/StatefulPartitionedCallЂ"simple_rnn/StatefulPartitionedCallЂ$simple_rnn_1/StatefulPartitionedCallЂ$simple_rnn_2/StatefulPartitionedCallЂ$simple_rnn_3/StatefulPartitionedCall
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_inputsimple_rnn_63176simple_rnn_63178simple_rnn_63180*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_simple_rnn_layer_call_and_return_conditional_losses_63175ё
dropout/StatefulPartitionedCallStatefulPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_63194М
$simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0simple_rnn_1_63304simple_rnn_1_63306simple_rnn_1_63308*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_63303
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_63322О
$simple_rnn_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0simple_rnn_2_63432simple_rnn_2_63434simple_rnn_2_63436*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_63431
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_2/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_63450К
$simple_rnn_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0simple_rnn_3_63562simple_rnn_3_63564simple_rnn_3_63566*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_63561
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_3/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_63580
dense/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_63592dense_63594*
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
GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_63591u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџъ
NoOpNoOp^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall#^simple_rnn/StatefulPartitionedCall%^simple_rnn_1/StatefulPartitionedCall%^simple_rnn_2/StatefulPartitionedCall%^simple_rnn_3/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:џџџџџџџџџ
: : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2L
$simple_rnn_1/StatefulPartitionedCall$simple_rnn_1/StatefulPartitionedCall2L
$simple_rnn_2/StatefulPartitionedCall$simple_rnn_2/StatefulPartitionedCall2L
$simple_rnn_3/StatefulPartitionedCall$simple_rnn_3/StatefulPartitionedCall:] Y
+
_output_shapes
:џџџџџџџџџ

*
_user_specified_namesimple_rnn_input:%!

_user_specified_name63176:%!

_user_specified_name63178:%!

_user_specified_name63180:%!

_user_specified_name63304:%!

_user_specified_name63306:%!

_user_specified_name63308:%!

_user_specified_name63432:%!

_user_specified_name63434:%	!

_user_specified_name63436:%
!

_user_specified_name63562:%!

_user_specified_name63564:%!

_user_specified_name63566:%!

_user_specified_name63592:%!

_user_specified_name63594
ч
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_63962

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ
_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
т
Ѕ
while_cond_63236
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_63236___redundant_placeholder03
/while_while_cond_63236___redundant_placeholder13
/while_while_cond_63236___redundant_placeholder23
/while_while_cond_63236___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
т
Ѕ
while_cond_63364
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_63364___redundant_placeholder03
/while_while_cond_63364___redundant_placeholder13
/while_while_cond_63364___redundant_placeholder23
/while_while_cond_63364___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
й
ч
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66672

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
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
ч
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_65911

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ
_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
А=
Ў
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_65884

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџR
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
valueB"џџџџ   р
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
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџg
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
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
value	B : Г
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_65818*
condR
while_cond_65817*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
џџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
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
т
Ѕ
while_cond_62083
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_62083___redundant_placeholder03
/while_while_cond_62083___redundant_placeholder13
/while_while_cond_62083___redundant_placeholder23
/while_while_cond_62083___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
о
b
)__inference_dropout_1_layer_call_fn_65386

inputs
identityЂStatefulPartitionedCallЦ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_63322s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs

з
/__inference_simple_rnn_cell_layer_call_fn_66469

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62071o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states_0:%!

_user_specified_name66459:%!

_user_specified_name66461:%!

_user_specified_name66463
ћ-
Е
while_body_64596
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
6while_simple_rnn_cell_matmul_1_readvariableop_resource:Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
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

:*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЧ
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
:џџџџџџџџџЕ

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
%: : : : :џџџџџџџџџ: : : : : 2\
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
:џџџџџџџџџ:GC
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
т
Ѕ
while_cond_63883
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_63883___redundant_placeholder03
/while_while_cond_63883___redundant_placeholder13
/while_while_cond_63883___redundant_placeholder23
/while_while_cond_63883___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
й
ч
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66486

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
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
Ћ
J
"__inference__update_step_xla_64377
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
А=
Ў
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_65273

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџR
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
valueB"џџџџ   р
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
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџg
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
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
value	B : Г
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_65207*
condR
while_cond_65206*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
џџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
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
ћ-
Е
while_body_65207
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
6while_simple_rnn_cell_matmul_1_readvariableop_resource:Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЧ
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
:џџџџџџџџџЕ

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
%: : : : :џџџџџџџџџ: : : : : 2\
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
:џџџџџџџџџ:GC
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
	
И
,__inference_simple_rnn_2_layer_call_fn_65419
inputs_0
unknown:
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_62604|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0:%!

_user_specified_name65411:%!

_user_specified_name65413:%!

_user_specified_name65415
Г
э
(sequential_simple_rnn_1_while_cond_61623L
Hsequential_simple_rnn_1_while_sequential_simple_rnn_1_while_loop_counterR
Nsequential_simple_rnn_1_while_sequential_simple_rnn_1_while_maximum_iterations-
)sequential_simple_rnn_1_while_placeholder/
+sequential_simple_rnn_1_while_placeholder_1/
+sequential_simple_rnn_1_while_placeholder_2N
Jsequential_simple_rnn_1_while_less_sequential_simple_rnn_1_strided_slice_1c
_sequential_simple_rnn_1_while_sequential_simple_rnn_1_while_cond_61623___redundant_placeholder0c
_sequential_simple_rnn_1_while_sequential_simple_rnn_1_while_cond_61623___redundant_placeholder1c
_sequential_simple_rnn_1_while_sequential_simple_rnn_1_while_cond_61623___redundant_placeholder2c
_sequential_simple_rnn_1_while_sequential_simple_rnn_1_while_cond_61623___redundant_placeholder3*
&sequential_simple_rnn_1_while_identity
Т
"sequential/simple_rnn_1/while/LessLess)sequential_simple_rnn_1_while_placeholderJsequential_simple_rnn_1_while_less_sequential_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: {
&sequential/simple_rnn_1/while/IdentityIdentity&sequential/simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_simple_rnn_1_while_identity/sequential/simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ: :::::b ^

_output_shapes
: 
D
_user_specified_name,*sequential/simple_rnn_1/while/loop_counter:hd

_output_shapes
: 
J
_user_specified_name20sequential/simple_rnn_1/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:_[

_output_shapes
: 
A
_user_specified_name)'sequential/simple_rnn_1/strided_slice_1:

_output_shapes
:
	
И
,__inference_simple_rnn_2_layer_call_fn_65430
inputs_0
unknown:
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_62723|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0:%!

_user_specified_name65422:%!

_user_specified_name65424:%!

_user_specified_name65426
ь=
Ў
E__inference_simple_rnn_layer_call_and_return_conditional_losses_64554
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
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
:џџџџџџџџџc
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

:*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџg
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
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
value	B : Г
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_64488*
condR
while_cond_64487*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџЅ
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
г
х
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62071

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
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
й>
А
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_66175
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
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
valueB"џџџџ   р
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
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџg
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ^
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
value	B : Г
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_66108*
condR
while_cond_66107*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЅ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
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
Х
щ
#__inference_signature_wrapper_64332
simple_rnn_input
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
identityЂStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8 *)
f$R"
 __inference__wrapped_model_61909o
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
3:џџџџџџџџџ
: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
+
_output_shapes
:џџџџџџџџџ

*
_user_specified_namesimple_rnn_input:%!

_user_specified_name64302:%!

_user_specified_name64304:%!

_user_specified_name64306:%!

_user_specified_name64308:%!

_user_specified_name64310:%!

_user_specified_name64312:%!

_user_specified_name64314:%!

_user_specified_name64316:%	!

_user_specified_name64318:%
!

_user_specified_name64320:%!

_user_specified_name64322:%!

_user_specified_name64324:%!

_user_specified_name64326:%!

_user_specified_name64328
В

a
B__inference_dropout_layer_call_and_return_conditional_losses_63194

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
:џџџџџџџџџ
Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
*
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
:џџџџџџџџџ
T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
З
N
"__inference__update_step_xla_64342
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
л"
М
while_body_61965
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_simple_rnn_cell_61987_0:+
while_simple_rnn_cell_61989_0:/
while_simple_rnn_cell_61991_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_simple_rnn_cell_61987:)
while_simple_rnn_cell_61989:-
while_simple_rnn_cell_61991:Ђ-while/simple_rnn_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_61987_0while_simple_rnn_cell_61989_0while_simple_rnn_cell_61991_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_61952п
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
:џџџџџџџџџX

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"<
while_simple_rnn_cell_61987while_simple_rnn_cell_61987_0"<
while_simple_rnn_cell_61989while_simple_rnn_cell_61989_0"<
while_simple_rnn_cell_61991while_simple_rnn_cell_61991_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2^
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:%!

_user_specified_name61987:%!

_user_specified_name61989:%	!

_user_specified_name61991
л"
М
while_body_62084
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_simple_rnn_cell_62106_0:+
while_simple_rnn_cell_62108_0:/
while_simple_rnn_cell_62110_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_simple_rnn_cell_62106:)
while_simple_rnn_cell_62108:-
while_simple_rnn_cell_62110:Ђ-while/simple_rnn_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_62106_0while_simple_rnn_cell_62108_0while_simple_rnn_cell_62110_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62071п
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
:џџџџџџџџџX

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"<
while_simple_rnn_cell_62106while_simple_rnn_cell_62106_0"<
while_simple_rnn_cell_62108while_simple_rnn_cell_62108_0"<
while_simple_rnn_cell_62110while_simple_rnn_cell_62110_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2^
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:%!

_user_specified_name62106:%!

_user_specified_name62108:%	!

_user_specified_name62110
т
Ѕ
while_cond_63108
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_63108___redundant_placeholder03
/while_while_cond_63108___redundant_placeholder13
/while_while_cond_63108___redundant_placeholder23
/while_while_cond_63108___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
т
Ѕ
while_cond_66107
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_66107___redundant_placeholder03
/while_while_cond_66107___redundant_placeholder13
/while_while_cond_66107___redundant_placeholder23
/while_while_cond_66107___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ё
№
*__inference_sequential_layer_call_fn_64126
simple_rnn_input
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
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU2*0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_63598o
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
3:џџџџџџџџџ
: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
+
_output_shapes
:џџџџџџџџџ

*
_user_specified_namesimple_rnn_input:%!

_user_specified_name64096:%!

_user_specified_name64098:%!

_user_specified_name64100:%!

_user_specified_name64102:%!

_user_specified_name64104:%!

_user_specified_name64106:%!

_user_specified_name64108:%!

_user_specified_name64110:%	!

_user_specified_name64112:%
!

_user_specified_name64114:%!

_user_specified_name64116:%!

_user_specified_name64118:%!

_user_specified_name64120:%!

_user_specified_name64122
 5

G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_63015

inputs'
simple_rnn_cell_62938:#
simple_rnn_cell_62940:'
simple_rnn_cell_62942:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
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
valueB"џџџџ   р
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
:џџџџџџџџџ*
shrink_axis_maskм
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_62938simple_rnn_cell_62940simple_rnn_cell_62942*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62937n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ^
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
value	B : х
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_62938simple_rnn_cell_62940simple_rnn_cell_62942*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_62951*
condR
while_cond_62950*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџT
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:%!

_user_specified_name62938:%!

_user_specified_name62940:%!

_user_specified_name62942
Д

c
D__inference_dropout_2_layer_call_and_return_conditional_losses_65906

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
:џџџџџџџџџ
Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
*
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
:џџџџџџџџџ
T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
ЭF

(sequential_simple_rnn_3_while_body_61835L
Hsequential_simple_rnn_3_while_sequential_simple_rnn_3_while_loop_counterR
Nsequential_simple_rnn_3_while_sequential_simple_rnn_3_while_maximum_iterations-
)sequential_simple_rnn_3_while_placeholder/
+sequential_simple_rnn_3_while_placeholder_1/
+sequential_simple_rnn_3_while_placeholder_2K
Gsequential_simple_rnn_3_while_sequential_simple_rnn_3_strided_slice_1_0
sequential_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0`
Nsequential_simple_rnn_3_while_simple_rnn_cell_matmul_readvariableop_resource_0:]
Osequential_simple_rnn_3_while_simple_rnn_cell_biasadd_readvariableop_resource_0:b
Psequential_simple_rnn_3_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:*
&sequential_simple_rnn_3_while_identity,
(sequential_simple_rnn_3_while_identity_1,
(sequential_simple_rnn_3_while_identity_2,
(sequential_simple_rnn_3_while_identity_3,
(sequential_simple_rnn_3_while_identity_4I
Esequential_simple_rnn_3_while_sequential_simple_rnn_3_strided_slice_1
sequential_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor^
Lsequential_simple_rnn_3_while_simple_rnn_cell_matmul_readvariableop_resource:[
Msequential_simple_rnn_3_while_simple_rnn_cell_biasadd_readvariableop_resource:`
Nsequential_simple_rnn_3_while_simple_rnn_cell_matmul_1_readvariableop_resource:ЂDsequential/simple_rnn_3/while/simple_rnn_cell/BiasAdd/ReadVariableOpЂCsequential/simple_rnn_3/while/simple_rnn_cell/MatMul/ReadVariableOpЂEsequential/simple_rnn_3/while/simple_rnn_cell/MatMul_1/ReadVariableOp 
Osequential/simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
Asequential/simple_rnn_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0)sequential_simple_rnn_3_while_placeholderXsequential/simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0в
Csequential/simple_rnn_3/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpNsequential_simple_rnn_3_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0
4sequential/simple_rnn_3/while/simple_rnn_cell/MatMulMatMulHsequential/simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem:item:0Ksequential/simple_rnn_3/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџа
Dsequential/simple_rnn_3/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpOsequential_simple_rnn_3_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0
5sequential/simple_rnn_3/while/simple_rnn_cell/BiasAddBiasAdd>sequential/simple_rnn_3/while/simple_rnn_cell/MatMul:product:0Lsequential/simple_rnn_3/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџж
Esequential/simple_rnn_3/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpPsequential_simple_rnn_3_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0ю
6sequential/simple_rnn_3/while/simple_rnn_cell/MatMul_1MatMul+sequential_simple_rnn_3_while_placeholder_2Msequential/simple_rnn_3/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџю
1sequential/simple_rnn_3/while/simple_rnn_cell/addAddV2>sequential/simple_rnn_3/while/simple_rnn_cell/BiasAdd:output:0@sequential/simple_rnn_3/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџЃ
2sequential/simple_rnn_3/while/simple_rnn_cell/TanhTanh5sequential/simple_rnn_3/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
Hsequential/simple_rnn_3/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Я
Bsequential/simple_rnn_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_simple_rnn_3_while_placeholder_1Qsequential/simple_rnn_3/while/TensorArrayV2Write/TensorListSetItem/index:output:06sequential/simple_rnn_3/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвe
#sequential/simple_rnn_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Є
!sequential/simple_rnn_3/while/addAddV2)sequential_simple_rnn_3_while_placeholder,sequential/simple_rnn_3/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential/simple_rnn_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ч
#sequential/simple_rnn_3/while/add_1AddV2Hsequential_simple_rnn_3_while_sequential_simple_rnn_3_while_loop_counter.sequential/simple_rnn_3/while/add_1/y:output:0*
T0*
_output_shapes
: Ё
&sequential/simple_rnn_3/while/IdentityIdentity'sequential/simple_rnn_3/while/add_1:z:0#^sequential/simple_rnn_3/while/NoOp*
T0*
_output_shapes
: Ъ
(sequential/simple_rnn_3/while/Identity_1IdentityNsequential_simple_rnn_3_while_sequential_simple_rnn_3_while_maximum_iterations#^sequential/simple_rnn_3/while/NoOp*
T0*
_output_shapes
: Ё
(sequential/simple_rnn_3/while/Identity_2Identity%sequential/simple_rnn_3/while/add:z:0#^sequential/simple_rnn_3/while/NoOp*
T0*
_output_shapes
: Ю
(sequential/simple_rnn_3/while/Identity_3IdentityRsequential/simple_rnn_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential/simple_rnn_3/while/NoOp*
T0*
_output_shapes
: У
(sequential/simple_rnn_3/while/Identity_4Identity6sequential/simple_rnn_3/while/simple_rnn_cell/Tanh:y:0#^sequential/simple_rnn_3/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
"sequential/simple_rnn_3/while/NoOpNoOpE^sequential/simple_rnn_3/while/simple_rnn_cell/BiasAdd/ReadVariableOpD^sequential/simple_rnn_3/while/simple_rnn_cell/MatMul/ReadVariableOpF^sequential/simple_rnn_3/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "Y
&sequential_simple_rnn_3_while_identity/sequential/simple_rnn_3/while/Identity:output:0"]
(sequential_simple_rnn_3_while_identity_11sequential/simple_rnn_3/while/Identity_1:output:0"]
(sequential_simple_rnn_3_while_identity_21sequential/simple_rnn_3/while/Identity_2:output:0"]
(sequential_simple_rnn_3_while_identity_31sequential/simple_rnn_3/while/Identity_3:output:0"]
(sequential_simple_rnn_3_while_identity_41sequential/simple_rnn_3/while/Identity_4:output:0"
Esequential_simple_rnn_3_while_sequential_simple_rnn_3_strided_slice_1Gsequential_simple_rnn_3_while_sequential_simple_rnn_3_strided_slice_1_0" 
Msequential_simple_rnn_3_while_simple_rnn_cell_biasadd_readvariableop_resourceOsequential_simple_rnn_3_while_simple_rnn_cell_biasadd_readvariableop_resource_0"Ђ
Nsequential_simple_rnn_3_while_simple_rnn_cell_matmul_1_readvariableop_resourcePsequential_simple_rnn_3_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"
Lsequential_simple_rnn_3_while_simple_rnn_cell_matmul_readvariableop_resourceNsequential_simple_rnn_3_while_simple_rnn_cell_matmul_readvariableop_resource_0"
sequential_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_3_tensorarrayunstack_tensorlistfromtensorsequential_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2
Dsequential/simple_rnn_3/while/simple_rnn_cell/BiasAdd/ReadVariableOpDsequential/simple_rnn_3/while/simple_rnn_cell/BiasAdd/ReadVariableOp2
Csequential/simple_rnn_3/while/simple_rnn_cell/MatMul/ReadVariableOpCsequential/simple_rnn_3/while/simple_rnn_cell/MatMul/ReadVariableOp2
Esequential/simple_rnn_3/while/simple_rnn_cell/MatMul_1/ReadVariableOpEsequential/simple_rnn_3/while/simple_rnn_cell/MatMul_1/ReadVariableOp:b ^

_output_shapes
: 
D
_user_specified_name,*sequential/simple_rnn_3/while/loop_counter:hd

_output_shapes
: 
J
_user_specified_name20sequential/simple_rnn_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:_[

_output_shapes
: 
A
_user_specified_name)'sequential/simple_rnn_3/strided_slice_1:ws

_output_shapes
: 
Y
_user_specified_nameA?sequential/simple_rnn_3/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
ї#
М
while_body_62830
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_simple_rnn_cell_62852_0:+
while_simple_rnn_cell_62854_0:/
while_simple_rnn_cell_62856_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_simple_rnn_cell_62852:)
while_simple_rnn_cell_62854:-
while_simple_rnn_cell_62856:Ђ-while/simple_rnn_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_62852_0while_simple_rnn_cell_62854_0while_simple_rnn_cell_62856_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62816r
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
:џџџџџџџџџX

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"<
while_simple_rnn_cell_62852while_simple_rnn_cell_62852_0"<
while_simple_rnn_cell_62854while_simple_rnn_cell_62854_0"<
while_simple_rnn_cell_62856while_simple_rnn_cell_62856_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2^
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:%!

_user_specified_name62852:%!

_user_specified_name62854:%	!

_user_specified_name62856
и
Ж
,__inference_simple_rnn_1_layer_call_fn_64938

inputs
unknown:
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_63303s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs:%!

_user_specified_name64930:%!

_user_specified_name64932:%!

_user_specified_name64934
й>
А
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_66065
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
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
valueB"џџџџ   р
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
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџg
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ^
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
value	B : Г
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_65998*
condR
while_cond_65997*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЅ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
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
Ж>
Ў
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_64073

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџR
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
valueB"џџџџ   р
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
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџg
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ^
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
value	B : Г
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_64006*
condR
while_cond_64005*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЅ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
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
й
ч
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66503

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
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
т
Ѕ
while_cond_63493
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_63493___redundant_placeholder03
/while_while_cond_63493___redundant_placeholder13
/while_while_cond_63493___redundant_placeholder23
/while_while_cond_63493___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Д

c
D__inference_dropout_2_layer_call_and_return_conditional_losses_63450

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
:џџџџџџџџџ
Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
*
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
:џџџџџџџџџ
T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
ћ-
Е
while_body_64812
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
6while_simple_rnn_cell_matmul_1_readvariableop_resource:Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
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

:*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЧ
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
:џџџџџџџџџЕ

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
%: : : : :џџџџџџџџџ: : : : : 2\
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
:џџџџџџџџџ:GC
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
C
Ы
&sequential_simple_rnn_while_body_61519H
Dsequential_simple_rnn_while_sequential_simple_rnn_while_loop_counterN
Jsequential_simple_rnn_while_sequential_simple_rnn_while_maximum_iterations+
'sequential_simple_rnn_while_placeholder-
)sequential_simple_rnn_while_placeholder_1-
)sequential_simple_rnn_while_placeholder_2G
Csequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1_0
sequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0:[
Msequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0:`
Nsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:(
$sequential_simple_rnn_while_identity*
&sequential_simple_rnn_while_identity_1*
&sequential_simple_rnn_while_identity_2*
&sequential_simple_rnn_while_identity_3*
&sequential_simple_rnn_while_identity_4E
Asequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1
}sequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor\
Jsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource:Y
Ksequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource:^
Lsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource:ЂBsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpЂAsequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpЂCsequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp
Msequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
?sequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0'sequential_simple_rnn_while_placeholderVsequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ю
Asequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpLsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0
2sequential/simple_rnn/while/simple_rnn_cell/MatMulMatMulFsequential/simple_rnn/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЬ
Bsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpMsequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0њ
3sequential/simple_rnn/while/simple_rnn_cell/BiasAddBiasAdd<sequential/simple_rnn/while/simple_rnn_cell/MatMul:product:0Jsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџв
Csequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpNsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0ш
4sequential/simple_rnn/while/simple_rnn_cell/MatMul_1MatMul)sequential_simple_rnn_while_placeholder_2Ksequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџш
/sequential/simple_rnn/while/simple_rnn_cell/addAddV2<sequential/simple_rnn/while/simple_rnn_cell/BiasAdd:output:0>sequential/simple_rnn/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
0sequential/simple_rnn/while/simple_rnn_cell/TanhTanh3sequential/simple_rnn/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
@sequential/simple_rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_simple_rnn_while_placeholder_1'sequential_simple_rnn_while_placeholder4sequential/simple_rnn/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвc
!sequential/simple_rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential/simple_rnn/while/addAddV2'sequential_simple_rnn_while_placeholder*sequential/simple_rnn/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential/simple_rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :П
!sequential/simple_rnn/while/add_1AddV2Dsequential_simple_rnn_while_sequential_simple_rnn_while_loop_counter,sequential/simple_rnn/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential/simple_rnn/while/IdentityIdentity%sequential/simple_rnn/while/add_1:z:0!^sequential/simple_rnn/while/NoOp*
T0*
_output_shapes
: Т
&sequential/simple_rnn/while/Identity_1IdentityJsequential_simple_rnn_while_sequential_simple_rnn_while_maximum_iterations!^sequential/simple_rnn/while/NoOp*
T0*
_output_shapes
: 
&sequential/simple_rnn/while/Identity_2Identity#sequential/simple_rnn/while/add:z:0!^sequential/simple_rnn/while/NoOp*
T0*
_output_shapes
: Ш
&sequential/simple_rnn/while/Identity_3IdentityPsequential/simple_rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential/simple_rnn/while/NoOp*
T0*
_output_shapes
: Н
&sequential/simple_rnn/while/Identity_4Identity4sequential/simple_rnn/while/simple_rnn_cell/Tanh:y:0!^sequential/simple_rnn/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
 sequential/simple_rnn/while/NoOpNoOpC^sequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpB^sequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpD^sequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "U
$sequential_simple_rnn_while_identity-sequential/simple_rnn/while/Identity:output:0"Y
&sequential_simple_rnn_while_identity_1/sequential/simple_rnn/while/Identity_1:output:0"Y
&sequential_simple_rnn_while_identity_2/sequential/simple_rnn/while/Identity_2:output:0"Y
&sequential_simple_rnn_while_identity_3/sequential/simple_rnn/while/Identity_3:output:0"Y
&sequential_simple_rnn_while_identity_4/sequential/simple_rnn/while/Identity_4:output:0"
Asequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1Csequential_simple_rnn_while_sequential_simple_rnn_strided_slice_1_0"
Ksequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resourceMsequential_simple_rnn_while_simple_rnn_cell_biasadd_readvariableop_resource_0"
Lsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resourceNsequential_simple_rnn_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"
Jsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resourceLsequential_simple_rnn_while_simple_rnn_cell_matmul_readvariableop_resource_0"
}sequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensorsequential_simple_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2
Bsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOpBsequential/simple_rnn/while/simple_rnn_cell/BiasAdd/ReadVariableOp2
Asequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOpAsequential/simple_rnn/while/simple_rnn_cell/MatMul/ReadVariableOp2
Csequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOpCsequential/simple_rnn/while/simple_rnn_cell/MatMul_1/ReadVariableOp:` \

_output_shapes
: 
B
_user_specified_name*(sequential/simple_rnn/while/loop_counter:fb

_output_shapes
: 
H
_user_specified_name0.sequential/simple_rnn/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:]Y

_output_shapes
: 
?
_user_specified_name'%sequential/simple_rnn/strided_slice_1:uq

_output_shapes
: 
W
_user_specified_name?=sequential/simple_rnn/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
 
E
)__inference_dropout_3_layer_call_fn_66405

inputs
identityВ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_64085`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
т
Ѕ
while_cond_66217
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_66217___redundant_placeholder03
/while_while_cond_66217___redundant_placeholder13
/while_while_cond_66217___redundant_placeholder23
/while_while_cond_66217___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
и
Ж
,__inference_simple_rnn_1_layer_call_fn_64949

inputs
unknown:
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_63829s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs:%!

_user_specified_name64941:%!

_user_specified_name64943:%!

_user_specified_name64945
т
Ѕ
while_cond_64990
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_64990___redundant_placeholder03
/while_while_cond_64990___redundant_placeholder13
/while_while_cond_64990___redundant_placeholder23
/while_while_cond_64990___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ў=
Ќ
E__inference_simple_rnn_layer_call_and_return_conditional_losses_63175

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџR
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

:*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџg
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
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
value	B : Г
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_63109*
condR
while_cond_63108*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
џџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
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
ж-

E__inference_sequential_layer_call_and_return_conditional_losses_64093
simple_rnn_input"
simple_rnn_63709:
simple_rnn_63711:"
simple_rnn_63713:$
simple_rnn_1_63830: 
simple_rnn_1_63832:$
simple_rnn_1_63834:$
simple_rnn_2_63951: 
simple_rnn_2_63953:$
simple_rnn_2_63955:$
simple_rnn_3_64074: 
simple_rnn_3_64076:$
simple_rnn_3_64078:
dense_64087:
dense_64089:
identityЂdense/StatefulPartitionedCallЂ"simple_rnn/StatefulPartitionedCallЂ$simple_rnn_1/StatefulPartitionedCallЂ$simple_rnn_2/StatefulPartitionedCallЂ$simple_rnn_3/StatefulPartitionedCall
"simple_rnn/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_inputsimple_rnn_63709simple_rnn_63711simple_rnn_63713*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_simple_rnn_layer_call_and_return_conditional_losses_63708с
dropout/PartitionedCallPartitionedCall+simple_rnn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_63720Д
$simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0simple_rnn_1_63830simple_rnn_1_63832simple_rnn_1_63834*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_63829ч
dropout_1/PartitionedCallPartitionedCall-simple_rnn_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_63841Ж
$simple_rnn_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0simple_rnn_2_63951simple_rnn_2_63953simple_rnn_2_63955*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_63950ч
dropout_2/PartitionedCallPartitionedCall-simple_rnn_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_63962В
$simple_rnn_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0simple_rnn_3_64074simple_rnn_3_64076simple_rnn_3_64078*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_64073у
dropout_3/PartitionedCallPartitionedCall-simple_rnn_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_64085
dense/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_64087dense_64089*
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
GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_63591u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџм
NoOpNoOp^dense/StatefulPartitionedCall#^simple_rnn/StatefulPartitionedCall%^simple_rnn_1/StatefulPartitionedCall%^simple_rnn_2/StatefulPartitionedCall%^simple_rnn_3/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:џџџџџџџџџ
: : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2H
"simple_rnn/StatefulPartitionedCall"simple_rnn/StatefulPartitionedCall2L
$simple_rnn_1/StatefulPartitionedCall$simple_rnn_1/StatefulPartitionedCall2L
$simple_rnn_2/StatefulPartitionedCall$simple_rnn_2/StatefulPartitionedCall2L
$simple_rnn_3/StatefulPartitionedCall$simple_rnn_3/StatefulPartitionedCall:] Y
+
_output_shapes
:џџџџџџџџџ

*
_user_specified_namesimple_rnn_input:%!

_user_specified_name63709:%!

_user_specified_name63711:%!

_user_specified_name63713:%!

_user_specified_name63830:%!

_user_specified_name63832:%!

_user_specified_name63834:%!

_user_specified_name63951:%!

_user_specified_name63953:%	!

_user_specified_name63955:%
!

_user_specified_name64074:%!

_user_specified_name64076:%!

_user_specified_name64078:%!

_user_specified_name64087:%!

_user_specified_name64089
ћ-
Е
while_body_63365
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
6while_simple_rnn_cell_matmul_1_readvariableop_resource:Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЧ
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
:џџџџџџџџџЕ

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
%: : : : :џџџџџџџџџ: : : : : 2\
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
:џџџџџџџџџ:GC
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
Е4

G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_62435

inputs'
simple_rnn_cell_62360:#
simple_rnn_cell_62362:'
simple_rnn_cell_62364:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
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
valueB"џџџџ   р
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
:џџџџџџџџџ*
shrink_axis_maskм
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_62360simple_rnn_cell_62362simple_rnn_cell_62364*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62359n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
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
value	B : х
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_62360simple_rnn_cell_62362simple_rnn_cell_62364*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_62372*
condR
while_cond_62371*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџT
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:%!

_user_specified_name62360:%!

_user_specified_name62362:%!

_user_specified_name62364
Е4

G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_62316

inputs'
simple_rnn_cell_62241:#
simple_rnn_cell_62243:'
simple_rnn_cell_62245:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
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
valueB"џџџџ   р
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
:џџџџџџџџџ*
shrink_axis_maskм
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_62241simple_rnn_cell_62243simple_rnn_cell_62245*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62240n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
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
value	B : х
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_62241simple_rnn_cell_62243simple_rnn_cell_62245*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_62253*
condR
while_cond_62252*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџT
NoOpNoOp(^simple_rnn_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2R
'simple_rnn_cell/StatefulPartitionedCall'simple_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:%!

_user_specified_name62241:%!

_user_specified_name62243:%!

_user_specified_name62245
ћ-
Е
while_body_63109
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
6while_simple_rnn_cell_matmul_1_readvariableop_resource:Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
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

:*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЧ
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
:џџџџџџџџџЕ

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
%: : : : :џџџџџџџџџ: : : : : 2\
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
:џџџџџџџџџ:GC
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
ћ-
Е
while_body_64991
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
6while_simple_rnn_cell_matmul_1_readvariableop_resource:Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЧ
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
:џџџџџџџџџЕ

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
%: : : : :џџџџџџџџџ: : : : : 2\
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
:џџџџџџџџџ:GC
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
	
И
,__inference_simple_rnn_1_layer_call_fn_64927
inputs_0
unknown:
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_62435|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0:%!

_user_specified_name64919:%!

_user_specified_name64921:%!

_user_specified_name64923
т
Ѕ
while_cond_62659
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_62659___redundant_placeholder03
/while_while_cond_62659___redundant_placeholder13
/while_while_cond_62659___redundant_placeholder23
/while_while_cond_62659___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ќ
C
'__inference_dropout_layer_call_fn_64888

inputs
identityД
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_63720d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
А=
Ў
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_65776

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџR
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
valueB"џџџџ   р
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
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџg
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
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
value	B : Г
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_65710*
condR
while_cond_65709*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
џџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
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
ю=
А
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_65560
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
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
valueB"џџџџ   р
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
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџg
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
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
value	B : Г
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_65494*
condR
while_cond_65493*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџЅ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
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
З
N
"__inference__update_step_xla_64337
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
и
Ж
,__inference_simple_rnn_2_layer_call_fn_65441

inputs
unknown:
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ
*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_63431s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs:%!

_user_specified_name65433:%!

_user_specified_name65435:%!

_user_specified_name65437
з
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_66422

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ч
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_65408

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ
_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
а
Ж
,__inference_simple_rnn_3_layer_call_fn_65955

inputs
unknown:
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_64073o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs:%!

_user_specified_name65947:%!

_user_specified_name65949:%!

_user_specified_name65951
З
N
"__inference__update_step_xla_64382
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
ћ-
Е
while_body_63237
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
6while_simple_rnn_cell_matmul_1_readvariableop_resource:Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЧ
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
:џџџџџџџџџЕ

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
%: : : : :џџџџџџџџџ: : : : : 2\
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
:џџџџџџџџџ:GC
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
т
Ѕ
while_cond_61964
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_61964___redundant_placeholder03
/while_while_cond_61964___redundant_placeholder13
/while_while_cond_61964___redundant_placeholder23
/while_while_cond_61964___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
т
Ѕ
while_cond_64703
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_64703___redundant_placeholder03
/while_while_cond_64703___redundant_placeholder13
/while_while_cond_64703___redundant_placeholder23
/while_while_cond_64703___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
л"
М
while_body_62541
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_simple_rnn_cell_62563_0:+
while_simple_rnn_cell_62565_0:/
while_simple_rnn_cell_62567_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_simple_rnn_cell_62563:)
while_simple_rnn_cell_62565:-
while_simple_rnn_cell_62567:Ђ-while/simple_rnn_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_62563_0while_simple_rnn_cell_62565_0while_simple_rnn_cell_62567_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62528п
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
:џџџџџџџџџX

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"<
while_simple_rnn_cell_62563while_simple_rnn_cell_62563_0"<
while_simple_rnn_cell_62565while_simple_rnn_cell_62565_0"<
while_simple_rnn_cell_62567while_simple_rnn_cell_62567_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2^
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:%!

_user_specified_name62563:%!

_user_specified_name62565:%	!

_user_specified_name62567
/
Е
while_body_66218
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
6while_simple_rnn_cell_matmul_1_readvariableop_resource:Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџr
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
:џџџџџџџџџЕ

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
%: : : : :џџџџџџџџџ: : : : : 2\
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
:џџџџџџџџџ:GC
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
т
Ѕ
while_cond_64595
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_64595___redundant_placeholder03
/while_while_cond_64595___redundant_placeholder13
/while_while_cond_64595___redundant_placeholder23
/while_while_cond_64595___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Г4

E__inference_simple_rnn_layer_call_and_return_conditional_losses_62028

inputs'
simple_rnn_cell_61953:#
simple_rnn_cell_61955:'
simple_rnn_cell_61957:
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
:џџџџџџџџџc
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
shrink_axis_maskм
'simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_61953simple_rnn_cell_61955simple_rnn_cell_61957*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_61952n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
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
value	B : х
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_61953simple_rnn_cell_61955simple_rnn_cell_61957*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_61965*
condR
while_cond_61964*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџT
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
 
_user_specified_nameinputs:%!

_user_specified_name61953:%!

_user_specified_name61955:%!

_user_specified_name61957

з
/__inference_simple_rnn_cell_layer_call_fn_66455

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_61952o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states_0:%!

_user_specified_name66445:%!

_user_specified_name66447:%!

_user_specified_name66449
т
Ѕ
while_cond_65601
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_65601___redundant_placeholder03
/while_while_cond_65601___redundant_placeholder13
/while_while_cond_65601___redundant_placeholder23
/while_while_cond_65601___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
т
Ѕ
while_cond_65493
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_65493___redundant_placeholder03
/while_while_cond_65493___redundant_placeholder13
/while_while_cond_65493___redundant_placeholder23
/while_while_cond_65493___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
т
Ѕ
while_cond_65206
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_65206___redundant_placeholder03
/while_while_cond_65206___redundant_placeholder13
/while_while_cond_65206___redundant_placeholder23
/while_while_cond_65206___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
E

(sequential_simple_rnn_2_while_body_61729L
Hsequential_simple_rnn_2_while_sequential_simple_rnn_2_while_loop_counterR
Nsequential_simple_rnn_2_while_sequential_simple_rnn_2_while_maximum_iterations-
)sequential_simple_rnn_2_while_placeholder/
+sequential_simple_rnn_2_while_placeholder_1/
+sequential_simple_rnn_2_while_placeholder_2K
Gsequential_simple_rnn_2_while_sequential_simple_rnn_2_strided_slice_1_0
sequential_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0`
Nsequential_simple_rnn_2_while_simple_rnn_cell_matmul_readvariableop_resource_0:]
Osequential_simple_rnn_2_while_simple_rnn_cell_biasadd_readvariableop_resource_0:b
Psequential_simple_rnn_2_while_simple_rnn_cell_matmul_1_readvariableop_resource_0:*
&sequential_simple_rnn_2_while_identity,
(sequential_simple_rnn_2_while_identity_1,
(sequential_simple_rnn_2_while_identity_2,
(sequential_simple_rnn_2_while_identity_3,
(sequential_simple_rnn_2_while_identity_4I
Esequential_simple_rnn_2_while_sequential_simple_rnn_2_strided_slice_1
sequential_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor^
Lsequential_simple_rnn_2_while_simple_rnn_cell_matmul_readvariableop_resource:[
Msequential_simple_rnn_2_while_simple_rnn_cell_biasadd_readvariableop_resource:`
Nsequential_simple_rnn_2_while_simple_rnn_cell_matmul_1_readvariableop_resource:ЂDsequential/simple_rnn_2/while/simple_rnn_cell/BiasAdd/ReadVariableOpЂCsequential/simple_rnn_2/while/simple_rnn_cell/MatMul/ReadVariableOpЂEsequential/simple_rnn_2/while/simple_rnn_cell/MatMul_1/ReadVariableOp 
Osequential/simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
Asequential/simple_rnn_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0)sequential_simple_rnn_2_while_placeholderXsequential/simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0в
Csequential/simple_rnn_2/while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOpNsequential_simple_rnn_2_while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0
4sequential/simple_rnn_2/while/simple_rnn_cell/MatMulMatMulHsequential/simple_rnn_2/while/TensorArrayV2Read/TensorListGetItem:item:0Ksequential/simple_rnn_2/while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџа
Dsequential/simple_rnn_2/while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOpOsequential_simple_rnn_2_while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0
5sequential/simple_rnn_2/while/simple_rnn_cell/BiasAddBiasAdd>sequential/simple_rnn_2/while/simple_rnn_cell/MatMul:product:0Lsequential/simple_rnn_2/while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџж
Esequential/simple_rnn_2/while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpPsequential_simple_rnn_2_while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0ю
6sequential/simple_rnn_2/while/simple_rnn_cell/MatMul_1MatMul+sequential_simple_rnn_2_while_placeholder_2Msequential/simple_rnn_2/while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџю
1sequential/simple_rnn_2/while/simple_rnn_cell/addAddV2>sequential/simple_rnn_2/while/simple_rnn_cell/BiasAdd:output:0@sequential/simple_rnn_2/while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџЃ
2sequential/simple_rnn_2/while/simple_rnn_cell/TanhTanh5sequential/simple_rnn_2/while/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЇ
Bsequential/simple_rnn_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_simple_rnn_2_while_placeholder_1)sequential_simple_rnn_2_while_placeholder6sequential/simple_rnn_2/while/simple_rnn_cell/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвe
#sequential/simple_rnn_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Є
!sequential/simple_rnn_2/while/addAddV2)sequential_simple_rnn_2_while_placeholder,sequential/simple_rnn_2/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential/simple_rnn_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ч
#sequential/simple_rnn_2/while/add_1AddV2Hsequential_simple_rnn_2_while_sequential_simple_rnn_2_while_loop_counter.sequential/simple_rnn_2/while/add_1/y:output:0*
T0*
_output_shapes
: Ё
&sequential/simple_rnn_2/while/IdentityIdentity'sequential/simple_rnn_2/while/add_1:z:0#^sequential/simple_rnn_2/while/NoOp*
T0*
_output_shapes
: Ъ
(sequential/simple_rnn_2/while/Identity_1IdentityNsequential_simple_rnn_2_while_sequential_simple_rnn_2_while_maximum_iterations#^sequential/simple_rnn_2/while/NoOp*
T0*
_output_shapes
: Ё
(sequential/simple_rnn_2/while/Identity_2Identity%sequential/simple_rnn_2/while/add:z:0#^sequential/simple_rnn_2/while/NoOp*
T0*
_output_shapes
: Ю
(sequential/simple_rnn_2/while/Identity_3IdentityRsequential/simple_rnn_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential/simple_rnn_2/while/NoOp*
T0*
_output_shapes
: У
(sequential/simple_rnn_2/while/Identity_4Identity6sequential/simple_rnn_2/while/simple_rnn_cell/Tanh:y:0#^sequential/simple_rnn_2/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
"sequential/simple_rnn_2/while/NoOpNoOpE^sequential/simple_rnn_2/while/simple_rnn_cell/BiasAdd/ReadVariableOpD^sequential/simple_rnn_2/while/simple_rnn_cell/MatMul/ReadVariableOpF^sequential/simple_rnn_2/while/simple_rnn_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "Y
&sequential_simple_rnn_2_while_identity/sequential/simple_rnn_2/while/Identity:output:0"]
(sequential_simple_rnn_2_while_identity_11sequential/simple_rnn_2/while/Identity_1:output:0"]
(sequential_simple_rnn_2_while_identity_21sequential/simple_rnn_2/while/Identity_2:output:0"]
(sequential_simple_rnn_2_while_identity_31sequential/simple_rnn_2/while/Identity_3:output:0"]
(sequential_simple_rnn_2_while_identity_41sequential/simple_rnn_2/while/Identity_4:output:0"
Esequential_simple_rnn_2_while_sequential_simple_rnn_2_strided_slice_1Gsequential_simple_rnn_2_while_sequential_simple_rnn_2_strided_slice_1_0" 
Msequential_simple_rnn_2_while_simple_rnn_cell_biasadd_readvariableop_resourceOsequential_simple_rnn_2_while_simple_rnn_cell_biasadd_readvariableop_resource_0"Ђ
Nsequential_simple_rnn_2_while_simple_rnn_cell_matmul_1_readvariableop_resourcePsequential_simple_rnn_2_while_simple_rnn_cell_matmul_1_readvariableop_resource_0"
Lsequential_simple_rnn_2_while_simple_rnn_cell_matmul_readvariableop_resourceNsequential_simple_rnn_2_while_simple_rnn_cell_matmul_readvariableop_resource_0"
sequential_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_2_tensorarrayunstack_tensorlistfromtensorsequential_simple_rnn_2_while_tensorarrayv2read_tensorlistgetitem_sequential_simple_rnn_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2
Dsequential/simple_rnn_2/while/simple_rnn_cell/BiasAdd/ReadVariableOpDsequential/simple_rnn_2/while/simple_rnn_cell/BiasAdd/ReadVariableOp2
Csequential/simple_rnn_2/while/simple_rnn_cell/MatMul/ReadVariableOpCsequential/simple_rnn_2/while/simple_rnn_cell/MatMul/ReadVariableOp2
Esequential/simple_rnn_2/while/simple_rnn_cell/MatMul_1/ReadVariableOpEsequential/simple_rnn_2/while/simple_rnn_cell/MatMul_1/ReadVariableOp:b ^

_output_shapes
: 
D
_user_specified_name,*sequential/simple_rnn_2/while/loop_counter:hd

_output_shapes
: 
J
_user_specified_name20sequential/simple_rnn_2/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:_[

_output_shapes
: 
A
_user_specified_name)'sequential/simple_rnn_2/strided_slice_1:ws

_output_shapes
: 
Y
_user_specified_nameA?sequential/simple_rnn_2/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
Г
э
(sequential_simple_rnn_2_while_cond_61728L
Hsequential_simple_rnn_2_while_sequential_simple_rnn_2_while_loop_counterR
Nsequential_simple_rnn_2_while_sequential_simple_rnn_2_while_maximum_iterations-
)sequential_simple_rnn_2_while_placeholder/
+sequential_simple_rnn_2_while_placeholder_1/
+sequential_simple_rnn_2_while_placeholder_2N
Jsequential_simple_rnn_2_while_less_sequential_simple_rnn_2_strided_slice_1c
_sequential_simple_rnn_2_while_sequential_simple_rnn_2_while_cond_61728___redundant_placeholder0c
_sequential_simple_rnn_2_while_sequential_simple_rnn_2_while_cond_61728___redundant_placeholder1c
_sequential_simple_rnn_2_while_sequential_simple_rnn_2_while_cond_61728___redundant_placeholder2c
_sequential_simple_rnn_2_while_sequential_simple_rnn_2_while_cond_61728___redundant_placeholder3*
&sequential_simple_rnn_2_while_identity
Т
"sequential/simple_rnn_2/while/LessLess)sequential_simple_rnn_2_while_placeholderJsequential_simple_rnn_2_while_less_sequential_simple_rnn_2_strided_slice_1*
T0*
_output_shapes
: {
&sequential/simple_rnn_2/while/IdentityIdentity&sequential/simple_rnn_2/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_simple_rnn_2_while_identity/sequential/simple_rnn_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ: :::::b ^

_output_shapes
: 
D
_user_specified_name,*sequential/simple_rnn_2/while/loop_counter:hd

_output_shapes
: 
J
_user_specified_name20sequential/simple_rnn_2/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:_[

_output_shapes
: 
A
_user_specified_name)'sequential/simple_rnn_2/strided_slice_1:

_output_shapes
:
т
Ѕ
while_cond_65098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_65098___redundant_placeholder03
/while_while_cond_65098___redundant_placeholder13
/while_while_cond_65098___redundant_placeholder23
/while_while_cond_65098___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ш
И
,__inference_simple_rnn_3_layer_call_fn_65933
inputs_0
unknown:
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_63015o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0:%!

_user_specified_name65925:%!

_user_specified_name65927:%!

_user_specified_name65929
ш
И
,__inference_simple_rnn_3_layer_call_fn_65922
inputs_0
unknown:
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_62894o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0:%!

_user_specified_name65914:%!

_user_specified_name65916:%!

_user_specified_name65918
т
Ѕ
while_cond_64005
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_64005___redundant_placeholder03
/while_while_cond_64005___redundant_placeholder13
/while_while_cond_64005___redundant_placeholder23
/while_while_cond_64005___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:

з
/__inference_simple_rnn_cell_layer_call_fn_66593

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62647o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states_0:%!

_user_specified_name66583:%!

_user_specified_name66585:%!

_user_specified_name66587
й
ч
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66548

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
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
Ж>
Ў
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_63561

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџR
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
valueB"џџџџ   р
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
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџg
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ^
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
value	B : Г
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_63494*
condR
while_cond_63493*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЅ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
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
ю=
А
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_65057
inputs_0@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
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
valueB"џџџџ   р
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
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџg
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
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
value	B : Г
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_64991*
condR
while_cond_64990*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџk
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџЅ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
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
л"
М
while_body_62372
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_simple_rnn_cell_62394_0:+
while_simple_rnn_cell_62396_0:/
while_simple_rnn_cell_62398_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_simple_rnn_cell_62394:)
while_simple_rnn_cell_62396:-
while_simple_rnn_cell_62398:Ђ-while/simple_rnn_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
-while/simple_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_62394_0while_simple_rnn_cell_62396_0while_simple_rnn_cell_62398_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62359п
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
:џџџџџџџџџX

while/NoOpNoOp.^while/simple_rnn_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"<
while_simple_rnn_cell_62394while_simple_rnn_cell_62394_0"<
while_simple_rnn_cell_62396while_simple_rnn_cell_62396_0"<
while_simple_rnn_cell_62398while_simple_rnn_cell_62398_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2^
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:%!

_user_specified_name62394:%!

_user_specified_name62396:%	!

_user_specified_name62398
Ў=
Ќ
E__inference_simple_rnn_layer_call_and_return_conditional_losses_63708

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџR
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

:*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџg
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
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
value	B : Г
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_63642*
condR
while_cond_63641*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
џџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
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
ћ-
Е
while_body_64488
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
6while_simple_rnn_cell_matmul_1_readvariableop_resource:Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
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

:*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЧ
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
:џџџџџџџџџЕ

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
%: : : : :џџџџџџџџџ: : : : : 2\
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
:џџџџџџџџџ:GC
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
Ћ
J
"__inference__update_step_xla_64362
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
А=
Ў
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_63431

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџR
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
valueB"џџџџ   р
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
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџg
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
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
value	B : Г
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_63365*
condR
while_cond_63364*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
џџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
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
т
Ѕ
while_cond_63641
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_63641___redundant_placeholder03
/while_while_cond_63641___redundant_placeholder13
/while_while_cond_63641___redundant_placeholder23
/while_while_cond_63641___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
й
ч
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66610

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
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
А=
Ў
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_63950

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџR
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
valueB"џџџџ   р
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
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџg
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
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
value	B : Г
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_63884*
condR
while_cond_63883*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
џџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
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
ў
Ж
*__inference_simple_rnn_layer_call_fn_64424
inputs_0
unknown:
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_simple_rnn_layer_call_and_return_conditional_losses_62147|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ<
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
inputs_0:%!

_user_specified_name64416:%!

_user_specified_name64418:%!

_user_specified_name64420
/
Е
while_body_66328
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
6while_simple_rnn_cell_matmul_1_readvariableop_resource:Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџr
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
:џџџџџџџџџЕ

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
%: : : : :џџџџџџџџџ: : : : : 2\
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
:џџџџџџџџџ:GC
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
	
И
,__inference_simple_rnn_1_layer_call_fn_64916
inputs_0
unknown:
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_62316|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0:%!

_user_specified_name64908:%!

_user_specified_name64910:%!

_user_specified_name64912
ч
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_63841

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:џџџџџџџџџ
_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
:S O
+
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs
т
Ѕ
while_cond_65817
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_65817___redundant_placeholder03
/while_while_cond_65817___redundant_placeholder13
/while_while_cond_65817___redundant_placeholder23
/while_while_cond_65817___redundant_placeholder3
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
-: : : : :џџџџџџџџџ: :::::J F
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
:џџџџџџџџџ:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
А=
Ў
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_63829

inputs@
.simple_rnn_cell_matmul_readvariableop_resource:=
/simple_rnn_cell_biasadd_readvariableop_resource:B
0simple_rnn_cell_matmul_1_readvariableop_resource:
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
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
џџџџџџџџџR
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
valueB"џџџџ   р
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
:џџџџџџџџџ*
shrink_axis_mask
%simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp.simple_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMulMatMulstrided_slice_2:output:0-simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
&simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp/simple_rnn_cell_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0І
simple_rnn_cell/BiasAddBiasAdd simple_rnn_cell/MatMul:product:0.simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0simple_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell/MatMul_1MatMulzeros:output:0/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
simple_rnn_cell/addAddV2 simple_rnn_cell/BiasAdd:output:0"simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџg
simple_rnn_cell/TanhTanhsimple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
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
value	B : Г
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.simple_rnn_cell_matmul_readvariableop_resource/simple_rnn_cell_biasadd_readvariableop_resource0simple_rnn_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_63763*
condR
while_cond_63762*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
џџџџџџџџџ*
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
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
Ѕ
NoOpNoOp'^simple_rnn_cell/BiasAdd/ReadVariableOp&^simple_rnn_cell/MatMul/ReadVariableOp(^simple_rnn_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ
: : : 2P
&simple_rnn_cell/BiasAdd/ReadVariableOp&simple_rnn_cell/BiasAdd/ReadVariableOp2N
%simple_rnn_cell/MatMul/ReadVariableOp%simple_rnn_cell/MatMul/ReadVariableOp2R
'simple_rnn_cell/MatMul_1/ReadVariableOp'simple_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
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
ћ-
Е
while_body_64704
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
6while_simple_rnn_cell_matmul_1_readvariableop_resource:Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
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

:*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЧ
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
:џџџџџџџџџЕ

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
%: : : : :џџџџџџџџџ: : : : : 2\
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
:џџџџџџџџџ:GC
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

з
/__inference_simple_rnn_cell_layer_call_fn_66655

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_62937o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states_0:%!

_user_specified_name66645:%!

_user_specified_name66647:%!

_user_specified_name66649
ћ-
Е
while_body_65099
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
6while_simple_rnn_cell_matmul_1_readvariableop_resource:Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЧ
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
:џџџџџџџџџЕ

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
%: : : : :џџџџџџџџџ: : : : : 2\
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
:џџџџџџџџџ:GC
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
/
Е
while_body_64006
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
6while_simple_rnn_cell_matmul_1_readvariableop_resource:Ђ,while/simple_rnn_cell/BiasAdd/ReadVariableOpЂ+while/simple_rnn_cell/MatMul/ReadVariableOpЂ-while/simple_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ђ
+while/simple_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_simple_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0П
while/simple_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/simple_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
,while/simple_rnn_cell/BiasAdd/ReadVariableOpReadVariableOp7while_simple_rnn_cell_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0И
while/simple_rnn_cell/BiasAddBiasAdd&while/simple_rnn_cell/MatMul:product:04while/simple_rnn_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
-while/simple_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_simple_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0І
while/simple_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/simple_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
while/simple_rnn_cell/addAddV2&while/simple_rnn_cell/BiasAdd:output:0(while/simple_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
while/simple_rnn_cell/TanhTanhwhile/simple_rnn_cell/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџr
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
:џџџџџџџџџЕ

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
%: : : : :џџџџџџџџџ: : : : : 2\
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
:џџџџџџџџџ:GC
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
resource"эL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*О
serving_defaultЊ
Q
simple_rnn_input=
"serving_default_simple_rnn_input:0џџџџџџџџџ
9
dense0
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:Т
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
Ч
htrace_0
itrace_12
*__inference_sequential_layer_call_fn_64126
*__inference_sequential_layer_call_fn_64159Е
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
§
jtrace_0
ktrace_12Ц
E__inference_sequential_layer_call_and_return_conditional_losses_63598
E__inference_sequential_layer_call_and_return_conditional_losses_64093Е
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
дBб
 __inference__wrapped_model_61909simple_rnn_input"
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
Ќ
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
Й

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
~trace_32§
*__inference_simple_rnn_layer_call_fn_64413
*__inference_simple_rnn_layer_call_fn_64424
*__inference_simple_rnn_layer_call_fn_64435
*__inference_simple_rnn_layer_call_fn_64446Ъ
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
 z{trace_0z|trace_1z}trace_2z~trace_3
к
trace_0
trace_1
trace_2
trace_32щ
E__inference_simple_rnn_layer_call_and_return_conditional_losses_64554
E__inference_simple_rnn_layer_call_and_return_conditional_losses_64662
E__inference_simple_rnn_layer_call_and_return_conditional_losses_64770
E__inference_simple_rnn_layer_call_and_return_conditional_losses_64878Ъ
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
 ztrace_0ztrace_1ztrace_2ztrace_3
я
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator

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
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
Й
trace_0
trace_12ў
'__inference_dropout_layer_call_fn_64883
'__inference_dropout_layer_call_fn_64888Љ
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
 ztrace_0ztrace_1
я
trace_0
trace_12Д
B__inference_dropout_layer_call_and_return_conditional_losses_64900
B__inference_dropout_layer_call_and_return_conditional_losses_64905Љ
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
 ztrace_0ztrace_1
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
states
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
ј
trace_0
trace_1
trace_2
trace_32
,__inference_simple_rnn_1_layer_call_fn_64916
,__inference_simple_rnn_1_layer_call_fn_64927
,__inference_simple_rnn_1_layer_call_fn_64938
,__inference_simple_rnn_1_layer_call_fn_64949Ъ
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
 ztrace_0ztrace_1ztrace_2ztrace_3
ф
trace_0
trace_1
trace_2
 trace_32ё
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_65057
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_65165
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_65273
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_65381Ъ
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
 ztrace_0ztrace_1ztrace_2z trace_3
я
Ё	variables
Ђtrainable_variables
Ѓregularization_losses
Є	keras_api
Ѕ__call__
+І&call_and_return_all_conditional_losses
Ї_random_generator

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
Јnon_trainable_variables
Љlayers
Њmetrics
 Ћlayer_regularization_losses
Ќlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
Н
­trace_0
Ўtrace_12
)__inference_dropout_1_layer_call_fn_65386
)__inference_dropout_1_layer_call_fn_65391Љ
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
 z­trace_0zЎtrace_1
ѓ
Џtrace_0
Аtrace_12И
D__inference_dropout_1_layer_call_and_return_conditional_losses_65403
D__inference_dropout_1_layer_call_and_return_conditional_losses_65408Љ
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
 zЏtrace_0zАtrace_1
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
Бstates
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
ј
Зtrace_0
Иtrace_1
Йtrace_2
Кtrace_32
,__inference_simple_rnn_2_layer_call_fn_65419
,__inference_simple_rnn_2_layer_call_fn_65430
,__inference_simple_rnn_2_layer_call_fn_65441
,__inference_simple_rnn_2_layer_call_fn_65452Ъ
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
 zЗtrace_0zИtrace_1zЙtrace_2zКtrace_3
ф
Лtrace_0
Мtrace_1
Нtrace_2
Оtrace_32ё
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_65560
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_65668
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_65776
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_65884Ъ
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
 zЛtrace_0zМtrace_1zНtrace_2zОtrace_3
я
П	variables
Рtrainable_variables
Сregularization_losses
Т	keras_api
У__call__
+Ф&call_and_return_all_conditional_losses
Х_random_generator

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
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
Н
Ыtrace_0
Ьtrace_12
)__inference_dropout_2_layer_call_fn_65889
)__inference_dropout_2_layer_call_fn_65894Љ
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
 zЫtrace_0zЬtrace_1
ѓ
Эtrace_0
Юtrace_12И
D__inference_dropout_2_layer_call_and_return_conditional_losses_65906
D__inference_dropout_2_layer_call_and_return_conditional_losses_65911Љ
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
 zЭtrace_0zЮtrace_1
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
Яstates
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
ј
еtrace_0
жtrace_1
зtrace_2
иtrace_32
,__inference_simple_rnn_3_layer_call_fn_65922
,__inference_simple_rnn_3_layer_call_fn_65933
,__inference_simple_rnn_3_layer_call_fn_65944
,__inference_simple_rnn_3_layer_call_fn_65955Ъ
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
 zеtrace_0zжtrace_1zзtrace_2zиtrace_3
ф
йtrace_0
кtrace_1
лtrace_2
мtrace_32ё
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_66065
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_66175
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_66285
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_66395Ъ
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
 zйtrace_0zкtrace_1zлtrace_2zмtrace_3
я
н	variables
оtrainable_variables
пregularization_losses
р	keras_api
с__call__
+т&call_and_return_all_conditional_losses
у_random_generator

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
фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
Н
щtrace_0
ъtrace_12
)__inference_dropout_3_layer_call_fn_66400
)__inference_dropout_3_layer_call_fn_66405Љ
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
 zщtrace_0zъtrace_1
ѓ
ыtrace_0
ьtrace_12И
D__inference_dropout_3_layer_call_and_return_conditional_losses_66417
D__inference_dropout_3_layer_call_and_return_conditional_losses_66422Љ
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
 zыtrace_0zьtrace_1
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
эnon_trainable_variables
юlayers
яmetrics
 №layer_regularization_losses
ёlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
с
ђtrace_02Т
%__inference_dense_layer_call_fn_66431
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
ќ
ѓtrace_02н
@__inference_dense_layer_call_and_return_conditional_losses_66441
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
 zѓtrace_0
:2dense/kernel
:2
dense/bias
3:12!simple_rnn/simple_rnn_cell/kernel
=:;2+simple_rnn/simple_rnn_cell/recurrent_kernel
-:+2simple_rnn/simple_rnn_cell/bias
5:32#simple_rnn_1/simple_rnn_cell/kernel
?:=2-simple_rnn_1/simple_rnn_cell/recurrent_kernel
/:-2!simple_rnn_1/simple_rnn_cell/bias
5:32#simple_rnn_2/simple_rnn_cell/kernel
?:=2-simple_rnn_2/simple_rnn_cell/recurrent_kernel
/:-2!simple_rnn_2/simple_rnn_cell/bias
5:32#simple_rnn_3/simple_rnn_cell/kernel
?:=2-simple_rnn_3/simple_rnn_cell/recurrent_kernel
/:-2!simple_rnn_3/simple_rnn_cell/bias
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
є0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ђBя
*__inference_sequential_layer_call_fn_64126simple_rnn_input"Ќ
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
ђBя
*__inference_sequential_layer_call_fn_64159simple_rnn_input"Ќ
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
B
E__inference_sequential_layer_call_and_return_conditional_losses_63598simple_rnn_input"Ќ
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
B
E__inference_sequential_layer_call_and_return_conditional_losses_64093simple_rnn_input"Ќ
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
ѕ1
і2
ї3
ј4
љ5
њ6
ћ7
ќ8
§9
ў10
џ11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
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

і0
ј1
њ2
ќ3
ў4
5
6
7
8
9
10
11
12
13"
trackable_list_wrapper
: 2Nadam/Variable
Н
trace_0
trace_1
trace_2
trace_3
trace_4
trace_5
trace_6
trace_7
trace_8
trace_9
trace_10
trace_11
trace_12
trace_132Њ
"__inference__update_step_xla_64337
"__inference__update_step_xla_64342
"__inference__update_step_xla_64347
"__inference__update_step_xla_64352
"__inference__update_step_xla_64357
"__inference__update_step_xla_64362
"__inference__update_step_xla_64367
"__inference__update_step_xla_64372
"__inference__update_step_xla_64377
"__inference__update_step_xla_64382
"__inference__update_step_xla_64387
"__inference__update_step_xla_64392
"__inference__update_step_xla_64397
"__inference__update_step_xla_64402Џ
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
 0ztrace_0ztrace_1ztrace_2ztrace_3ztrace_4ztrace_5ztrace_6ztrace_7ztrace_8ztrace_9ztrace_10ztrace_11ztrace_12ztrace_13
сBо
#__inference_signature_wrapper_64332simple_rnn_input"Ђ
В
FullArgSpec
args 
varargs
 
varkw
 
defaults
 %

kwonlyargs
jsimple_rnn_input
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
ћBј
*__inference_simple_rnn_layer_call_fn_64413inputs_0"Н
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
ћBј
*__inference_simple_rnn_layer_call_fn_64424inputs_0"Н
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
љBі
*__inference_simple_rnn_layer_call_fn_64435inputs"Н
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
љBі
*__inference_simple_rnn_layer_call_fn_64446inputs"Н
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
B
E__inference_simple_rnn_layer_call_and_return_conditional_losses_64554inputs_0"Н
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
B
E__inference_simple_rnn_layer_call_and_return_conditional_losses_64662inputs_0"Н
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
B
E__inference_simple_rnn_layer_call_and_return_conditional_losses_64770inputs"Н
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
B
E__inference_simple_rnn_layer_call_and_return_conditional_losses_64878inputs"Н
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
non_trainable_variables
 layers
Ёmetrics
 Ђlayer_regularization_losses
Ѓlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
г
Єtrace_0
Ѕtrace_12
/__inference_simple_rnn_cell_layer_call_fn_66455
/__inference_simple_rnn_cell_layer_call_fn_66469Г
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
 zЄtrace_0zЅtrace_1

Іtrace_0
Їtrace_12Ю
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66486
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66503Г
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
 zІtrace_0zЇtrace_1
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
нBк
'__inference_dropout_layer_call_fn_64883inputs"Є
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
нBк
'__inference_dropout_layer_call_fn_64888inputs"Є
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
јBѕ
B__inference_dropout_layer_call_and_return_conditional_losses_64900inputs"Є
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
јBѕ
B__inference_dropout_layer_call_and_return_conditional_losses_64905inputs"Є
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
§Bњ
,__inference_simple_rnn_1_layer_call_fn_64916inputs_0"Н
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
§Bњ
,__inference_simple_rnn_1_layer_call_fn_64927inputs_0"Н
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
ћBј
,__inference_simple_rnn_1_layer_call_fn_64938inputs"Н
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
ћBј
,__inference_simple_rnn_1_layer_call_fn_64949inputs"Н
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
B
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_65057inputs_0"Н
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
B
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_65165inputs_0"Н
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
B
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_65273inputs"Н
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
B
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_65381inputs"Н
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
Јnon_trainable_variables
Љlayers
Њmetrics
 Ћlayer_regularization_losses
Ќlayer_metrics
Ё	variables
Ђtrainable_variables
Ѓregularization_losses
Ѕ__call__
+І&call_and_return_all_conditional_losses
'І"call_and_return_conditional_losses"
_generic_user_object
г
­trace_0
Ўtrace_12
/__inference_simple_rnn_cell_layer_call_fn_66517
/__inference_simple_rnn_cell_layer_call_fn_66531Г
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
 z­trace_0zЎtrace_1

Џtrace_0
Аtrace_12Ю
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66548
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66565Г
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
 zЏtrace_0zАtrace_1
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
пBм
)__inference_dropout_1_layer_call_fn_65386inputs"Є
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
пBм
)__inference_dropout_1_layer_call_fn_65391inputs"Є
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
њBї
D__inference_dropout_1_layer_call_and_return_conditional_losses_65403inputs"Є
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
њBї
D__inference_dropout_1_layer_call_and_return_conditional_losses_65408inputs"Є
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
§Bњ
,__inference_simple_rnn_2_layer_call_fn_65419inputs_0"Н
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
§Bњ
,__inference_simple_rnn_2_layer_call_fn_65430inputs_0"Н
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
ћBј
,__inference_simple_rnn_2_layer_call_fn_65441inputs"Н
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
ћBј
,__inference_simple_rnn_2_layer_call_fn_65452inputs"Н
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
B
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_65560inputs_0"Н
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
B
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_65668inputs_0"Н
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
B
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_65776inputs"Н
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
B
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_65884inputs"Н
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
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
П	variables
Рtrainable_variables
Сregularization_losses
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
г
Жtrace_0
Зtrace_12
/__inference_simple_rnn_cell_layer_call_fn_66579
/__inference_simple_rnn_cell_layer_call_fn_66593Г
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
 zЖtrace_0zЗtrace_1

Иtrace_0
Йtrace_12Ю
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66610
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66627Г
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
 zИtrace_0zЙtrace_1
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
пBм
)__inference_dropout_2_layer_call_fn_65889inputs"Є
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
пBм
)__inference_dropout_2_layer_call_fn_65894inputs"Є
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
њBї
D__inference_dropout_2_layer_call_and_return_conditional_losses_65906inputs"Є
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
њBї
D__inference_dropout_2_layer_call_and_return_conditional_losses_65911inputs"Є
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
§Bњ
,__inference_simple_rnn_3_layer_call_fn_65922inputs_0"Н
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
§Bњ
,__inference_simple_rnn_3_layer_call_fn_65933inputs_0"Н
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
ћBј
,__inference_simple_rnn_3_layer_call_fn_65944inputs"Н
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
ћBј
,__inference_simple_rnn_3_layer_call_fn_65955inputs"Н
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
B
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_66065inputs_0"Н
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
B
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_66175inputs_0"Н
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
B
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_66285inputs"Н
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
B
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_66395inputs"Н
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
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
н	variables
оtrainable_variables
пregularization_losses
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses"
_generic_user_object
г
Пtrace_0
Рtrace_12
/__inference_simple_rnn_cell_layer_call_fn_66641
/__inference_simple_rnn_cell_layer_call_fn_66655Г
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
 zПtrace_0zРtrace_1

Сtrace_0
Тtrace_12Ю
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66672
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66689Г
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
 zСtrace_0zТtrace_1
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
пBм
)__inference_dropout_3_layer_call_fn_66400inputs"Є
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
пBм
)__inference_dropout_3_layer_call_fn_66405inputs"Є
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
њBї
D__inference_dropout_3_layer_call_and_return_conditional_losses_66417inputs"Є
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
њBї
D__inference_dropout_3_layer_call_and_return_conditional_losses_66422inputs"Є
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
ЯBЬ
%__inference_dense_layer_call_fn_66431inputs"
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
ъBч
@__inference_dense_layer_call_and_return_conditional_losses_66441inputs"
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
У	variables
Ф	keras_api

Хtotal

Цcount"
_tf_keras_metric
9:72)Nadam/m/simple_rnn/simple_rnn_cell/kernel
9:72)Nadam/v/simple_rnn/simple_rnn_cell/kernel
C:A23Nadam/m/simple_rnn/simple_rnn_cell/recurrent_kernel
C:A23Nadam/v/simple_rnn/simple_rnn_cell/recurrent_kernel
3:12'Nadam/m/simple_rnn/simple_rnn_cell/bias
3:12'Nadam/v/simple_rnn/simple_rnn_cell/bias
;:92+Nadam/m/simple_rnn_1/simple_rnn_cell/kernel
;:92+Nadam/v/simple_rnn_1/simple_rnn_cell/kernel
E:C25Nadam/m/simple_rnn_1/simple_rnn_cell/recurrent_kernel
E:C25Nadam/v/simple_rnn_1/simple_rnn_cell/recurrent_kernel
5:32)Nadam/m/simple_rnn_1/simple_rnn_cell/bias
5:32)Nadam/v/simple_rnn_1/simple_rnn_cell/bias
;:92+Nadam/m/simple_rnn_2/simple_rnn_cell/kernel
;:92+Nadam/v/simple_rnn_2/simple_rnn_cell/kernel
E:C25Nadam/m/simple_rnn_2/simple_rnn_cell/recurrent_kernel
E:C25Nadam/v/simple_rnn_2/simple_rnn_cell/recurrent_kernel
5:32)Nadam/m/simple_rnn_2/simple_rnn_cell/bias
5:32)Nadam/v/simple_rnn_2/simple_rnn_cell/bias
;:92+Nadam/m/simple_rnn_3/simple_rnn_cell/kernel
;:92+Nadam/v/simple_rnn_3/simple_rnn_cell/kernel
E:C25Nadam/m/simple_rnn_3/simple_rnn_cell/recurrent_kernel
E:C25Nadam/v/simple_rnn_3/simple_rnn_cell/recurrent_kernel
5:32)Nadam/m/simple_rnn_3/simple_rnn_cell/bias
5:32)Nadam/v/simple_rnn_3/simple_rnn_cell/bias
$:"2Nadam/m/dense/kernel
$:"2Nadam/v/dense/kernel
:2Nadam/m/dense/bias
:2Nadam/v/dense/bias
эBъ
"__inference__update_step_xla_64337gradientvariable"­
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
эBъ
"__inference__update_step_xla_64342gradientvariable"­
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
эBъ
"__inference__update_step_xla_64347gradientvariable"­
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
эBъ
"__inference__update_step_xla_64352gradientvariable"­
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
эBъ
"__inference__update_step_xla_64357gradientvariable"­
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
эBъ
"__inference__update_step_xla_64362gradientvariable"­
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
эBъ
"__inference__update_step_xla_64367gradientvariable"­
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
эBъ
"__inference__update_step_xla_64372gradientvariable"­
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
эBъ
"__inference__update_step_xla_64377gradientvariable"­
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
эBъ
"__inference__update_step_xla_64382gradientvariable"­
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
эBъ
"__inference__update_step_xla_64387gradientvariable"­
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
эBъ
"__inference__update_step_xla_64392gradientvariable"­
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
эBъ
"__inference__update_step_xla_64397gradientvariable"­
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
эBъ
"__inference__update_step_xla_64402gradientvariable"­
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
љBі
/__inference_simple_rnn_cell_layer_call_fn_66455inputsstates_0"Ў
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
љBі
/__inference_simple_rnn_cell_layer_call_fn_66469inputsstates_0"Ў
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
B
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66486inputsstates_0"Ў
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
B
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66503inputsstates_0"Ў
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
љBі
/__inference_simple_rnn_cell_layer_call_fn_66517inputsstates_0"Ў
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
љBі
/__inference_simple_rnn_cell_layer_call_fn_66531inputsstates_0"Ў
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
B
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66548inputsstates_0"Ў
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
B
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66565inputsstates_0"Ў
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
љBі
/__inference_simple_rnn_cell_layer_call_fn_66579inputsstates_0"Ў
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
љBі
/__inference_simple_rnn_cell_layer_call_fn_66593inputsstates_0"Ў
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
B
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66610inputsstates_0"Ў
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
B
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66627inputsstates_0"Ў
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
љBі
/__inference_simple_rnn_cell_layer_call_fn_66641inputsstates_0"Ў
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
љBі
/__inference_simple_rnn_cell_layer_call_fn_66655inputsstates_0"Ў
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
B
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66672inputsstates_0"Ў
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
B
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66689inputsstates_0"Ў
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
Х0
Ц1"
trackable_list_wrapper
.
У	variables"
_generic_user_object
:  (2total
:  (2count
"__inference__update_step_xla_64337nhЂe
^Ђ[

gradient
41	Ђ
њ

p
` VariableSpec 
`рЬЅњ?
Њ "
 
"__inference__update_step_xla_64342nhЂe
^Ђ[

gradient
41	Ђ
њ

p
` VariableSpec 
` ЫЅњ?
Њ "
 
"__inference__update_step_xla_64347f`Ђ]
VЂS

gradient
0-	Ђ
њ

p
` VariableSpec 
` ЮЅњ?
Њ "
 
"__inference__update_step_xla_64352nhЂe
^Ђ[

gradient
41	Ђ
њ

p
` VariableSpec 
` Љрњ?
Њ "
 
"__inference__update_step_xla_64357nhЂe
^Ђ[

gradient
41	Ђ
њ

p
` VariableSpec 
`рлкњ?
Њ "
 
"__inference__update_step_xla_64362f`Ђ]
VЂS

gradient
0-	Ђ
њ

p
` VariableSpec 
` рњ?
Њ "
 
"__inference__update_step_xla_64367nhЂe
^Ђ[

gradient
41	Ђ
њ

p
` VariableSpec 
`рЗЧњ?
Њ "
 
"__inference__update_step_xla_64372nhЂe
^Ђ[

gradient
41	Ђ
њ

p
` VariableSpec 
`рЃњ?
Њ "
 
"__inference__update_step_xla_64377f`Ђ]
VЂS

gradient
0-	Ђ
њ

p
` VariableSpec 
`рлЧњ?
Њ "
 
"__inference__update_step_xla_64382nhЂe
^Ђ[

gradient
41	Ђ
њ

p
` VariableSpec 
` їњ?
Њ "
 
"__inference__update_step_xla_64387nhЂe
^Ђ[

gradient
41	Ђ
њ

p
` VariableSpec 
` пєњ?
Њ "
 
"__inference__update_step_xla_64392f`Ђ]
VЂS

gradient
0-	Ђ
њ

p
` VariableSpec 
`рїњ?
Њ "
 
"__inference__update_step_xla_64397nhЂe
^Ђ[

gradient
41	Ђ
њ

p
` VariableSpec 
`РГњ?
Њ "
 
"__inference__update_step_xla_64402f`Ђ]
VЂS

gradient
0-	Ђ
њ

p
` VariableSpec 
`рЬўњ?
Њ "
 Ђ
 __inference__wrapped_model_61909~WYXZ\[]_^`baUV=Ђ:
3Ђ0
.+
simple_rnn_inputџџџџџџџџџ

Њ "-Њ*
(
dense
denseџџџџџџџџџЇ
@__inference_dense_layer_call_and_return_conditional_losses_66441cUV/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
%__inference_dense_layer_call_fn_66431XUV/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "!
unknownџџџџџџџџџГ
D__inference_dropout_1_layer_call_and_return_conditional_losses_65403k7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ

p
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ

 Г
D__inference_dropout_1_layer_call_and_return_conditional_losses_65408k7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ

p 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ

 
)__inference_dropout_1_layer_call_fn_65386`7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ

p
Њ "%"
unknownџџџџџџџџџ

)__inference_dropout_1_layer_call_fn_65391`7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ

p 
Њ "%"
unknownџџџџџџџџџ
Г
D__inference_dropout_2_layer_call_and_return_conditional_losses_65906k7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ

p
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ

 Г
D__inference_dropout_2_layer_call_and_return_conditional_losses_65911k7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ

p 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ

 
)__inference_dropout_2_layer_call_fn_65889`7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ

p
Њ "%"
unknownџџџџџџџџџ

)__inference_dropout_2_layer_call_fn_65894`7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ

p 
Њ "%"
unknownџџџџџџџџџ
Ћ
D__inference_dropout_3_layer_call_and_return_conditional_losses_66417c3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Ћ
D__inference_dropout_3_layer_call_and_return_conditional_losses_66422c3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
)__inference_dropout_3_layer_call_fn_66400X3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p
Њ "!
unknownџџџџџџџџџ
)__inference_dropout_3_layer_call_fn_66405X3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p 
Њ "!
unknownџџџџџџџџџБ
B__inference_dropout_layer_call_and_return_conditional_losses_64900k7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ

p
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ

 Б
B__inference_dropout_layer_call_and_return_conditional_losses_64905k7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ

p 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ

 
'__inference_dropout_layer_call_fn_64883`7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ

p
Њ "%"
unknownџџџџџџџџџ

'__inference_dropout_layer_call_fn_64888`7Ђ4
-Ђ*
$!
inputsџџџџџџџџџ

p 
Њ "%"
unknownџџџџџџџџџ
Я
E__inference_sequential_layer_call_and_return_conditional_losses_63598WYXZ\[]_^`baUVEЂB
;Ђ8
.+
simple_rnn_inputџџџџџџџџџ

p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Я
E__inference_sequential_layer_call_and_return_conditional_losses_64093WYXZ\[]_^`baUVEЂB
;Ђ8
.+
simple_rnn_inputџџџџџџџџџ

p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Ј
*__inference_sequential_layer_call_fn_64126zWYXZ\[]_^`baUVEЂB
;Ђ8
.+
simple_rnn_inputџџџџџџџџџ

p

 
Њ "!
unknownџџџџџџџџџЈ
*__inference_sequential_layer_call_fn_64159zWYXZ\[]_^`baUVEЂB
;Ђ8
.+
simple_rnn_inputџџџџџџџџџ

p 

 
Њ "!
unknownџџџџџџџџџК
#__inference_signature_wrapper_64332WYXZ\[]_^`baUVQЂN
Ђ 
GЊD
B
simple_rnn_input.+
simple_rnn_inputџџџџџџџџџ
"-Њ*
(
dense
denseџџџџџџџџџн
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_65057Z\[OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ
 н
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_65165Z\[OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ
 У
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_65273xZ\[?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ


 
p

 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ

 У
G__inference_simple_rnn_1_layer_call_and_return_conditional_losses_65381xZ\[?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ


 
p 

 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ

 З
,__inference_simple_rnn_1_layer_call_fn_64916Z\[OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџЗ
,__inference_simple_rnn_1_layer_call_fn_64927Z\[OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџ
,__inference_simple_rnn_1_layer_call_fn_64938mZ\[?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ


 
p

 
Њ "%"
unknownџџџџџџџџџ

,__inference_simple_rnn_1_layer_call_fn_64949mZ\[?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ


 
p 

 
Њ "%"
unknownџџџџџџџџџ
н
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_65560]_^OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ
 н
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_65668]_^OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ
 У
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_65776x]_^?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ


 
p

 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ

 У
G__inference_simple_rnn_2_layer_call_and_return_conditional_losses_65884x]_^?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ


 
p 

 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ

 З
,__inference_simple_rnn_2_layer_call_fn_65419]_^OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџЗ
,__inference_simple_rnn_2_layer_call_fn_65430]_^OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџ
,__inference_simple_rnn_2_layer_call_fn_65441m]_^?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ


 
p

 
Њ "%"
unknownџџџџџџџџџ

,__inference_simple_rnn_2_layer_call_fn_65452m]_^?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ


 
p 

 
Њ "%"
unknownџџџџџџџџџ
а
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_66065`baOЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 а
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_66175`baOЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 П
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_66285t`ba?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ


 
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 П
G__inference_simple_rnn_3_layer_call_and_return_conditional_losses_66395t`ba?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ


 
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Љ
,__inference_simple_rnn_3_layer_call_fn_65922y`baOЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "!
unknownџџџџџџџџџЉ
,__inference_simple_rnn_3_layer_call_fn_65933y`baOЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "!
unknownџџџџџџџџџ
,__inference_simple_rnn_3_layer_call_fn_65944i`ba?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ


 
p

 
Њ "!
unknownџџџџџџџџџ
,__inference_simple_rnn_3_layer_call_fn_65955i`ba?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ


 
p 

 
Њ "!
unknownџџџџџџџџџ
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66486ХWYX\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states_0џџџџџџџџџ
p
Њ "`Ђ]
VЂS
$!

tensor_0_0џџџџџџџџџ
+(
&#
tensor_0_1_0џџџџџџџџџ
 
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66503ХWYX\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states_0џџџџџџџџџ
p 
Њ "`Ђ]
VЂS
$!

tensor_0_0џџџџџџџџџ
+(
&#
tensor_0_1_0џџџџџџџџџ
 
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66548ХZ\[\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states_0џџџџџџџџџ
p
Њ "`Ђ]
VЂS
$!

tensor_0_0џџџџџџџџџ
+(
&#
tensor_0_1_0џџџџџџџџџ
 
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66565ХZ\[\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states_0џџџџџџџџџ
p 
Њ "`Ђ]
VЂS
$!

tensor_0_0џџџџџџџџџ
+(
&#
tensor_0_1_0џџџџџџџџџ
 
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66610Х]_^\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states_0џџџџџџџџџ
p
Њ "`Ђ]
VЂS
$!

tensor_0_0џџџџџџџџџ
+(
&#
tensor_0_1_0џџџџџџџџџ
 
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66627Х]_^\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states_0џџџџџџџџџ
p 
Њ "`Ђ]
VЂS
$!

tensor_0_0џџџџџџџџџ
+(
&#
tensor_0_1_0џџџџџџџџџ
 
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66672Х`ba\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states_0џџџџџџџџџ
p
Њ "`Ђ]
VЂS
$!

tensor_0_0џџџџџџџџџ
+(
&#
tensor_0_1_0џџџџџџџџџ
 
J__inference_simple_rnn_cell_layer_call_and_return_conditional_losses_66689Х`ba\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states_0џџџџџџџџџ
p 
Њ "`Ђ]
VЂS
$!

tensor_0_0џџџџџџџџџ
+(
&#
tensor_0_1_0џџџџџџџџџ
 ы
/__inference_simple_rnn_cell_layer_call_fn_66455ЗWYX\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states_0џџџџџџџџџ
p
Њ "RЂO
"
tensor_0џџџџџџџџџ
)&
$!

tensor_1_0џџџџџџџџџы
/__inference_simple_rnn_cell_layer_call_fn_66469ЗWYX\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states_0џџџџџџџџџ
p 
Њ "RЂO
"
tensor_0џџџџџџџџџ
)&
$!

tensor_1_0џџџџџџџџџы
/__inference_simple_rnn_cell_layer_call_fn_66517ЗZ\[\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states_0џџџџџџџџџ
p
Њ "RЂO
"
tensor_0џџџџџџџџџ
)&
$!

tensor_1_0џџџџџџџџџы
/__inference_simple_rnn_cell_layer_call_fn_66531ЗZ\[\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states_0џџџџџџџџџ
p 
Њ "RЂO
"
tensor_0џџџџџџџџџ
)&
$!

tensor_1_0џџџџџџџџџы
/__inference_simple_rnn_cell_layer_call_fn_66579З]_^\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states_0џџџџџџџџџ
p
Њ "RЂO
"
tensor_0џџџџџџџџџ
)&
$!

tensor_1_0џџџџџџџџџы
/__inference_simple_rnn_cell_layer_call_fn_66593З]_^\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states_0џџџџџџџџџ
p 
Њ "RЂO
"
tensor_0џџџџџџџџџ
)&
$!

tensor_1_0џџџџџџџџџы
/__inference_simple_rnn_cell_layer_call_fn_66641З`ba\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states_0џџџџџџџџџ
p
Њ "RЂO
"
tensor_0џџџџџџџџџ
)&
$!

tensor_1_0џџџџџџџџџы
/__inference_simple_rnn_cell_layer_call_fn_66655З`ba\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states_0џџџџџџџџџ
p 
Њ "RЂO
"
tensor_0џџџџџџџџџ
)&
$!

tensor_1_0џџџџџџџџџл
E__inference_simple_rnn_layer_call_and_return_conditional_losses_64554WYXOЂL
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
tensor_0џџџџџџџџџџџџџџџџџџ
 л
E__inference_simple_rnn_layer_call_and_return_conditional_losses_64662WYXOЂL
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
tensor_0џџџџџџџџџџџџџџџџџџ
 С
E__inference_simple_rnn_layer_call_and_return_conditional_losses_64770xWYX?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ


 
p

 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ

 С
E__inference_simple_rnn_layer_call_and_return_conditional_losses_64878xWYX?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ


 
p 

 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ

 Е
*__inference_simple_rnn_layer_call_fn_64413WYXOЂL
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
unknownџџџџџџџџџџџџџџџџџџЕ
*__inference_simple_rnn_layer_call_fn_64424WYXOЂL
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
unknownџџџџџџџџџџџџџџџџџџ
*__inference_simple_rnn_layer_call_fn_64435mWYX?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ


 
p

 
Њ "%"
unknownџџџџџџџџџ

*__inference_simple_rnn_layer_call_fn_64446mWYX?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ


 
p 

 
Њ "%"
unknownџџџџџџџџџ
