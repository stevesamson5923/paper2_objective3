��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
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
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
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
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.15.02v2.15.0-2-g0b15fdfcb3f8��
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
�
Adam/v/dense_17/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/dense_17/bias/*
dtype0*
shape:*%
shared_nameAdam/v/dense_17/bias
y
(Adam/v/dense_17/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_17/bias*
_output_shapes
:*
dtype0
�
Adam/m/dense_17/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/dense_17/bias/*
dtype0*
shape:*%
shared_nameAdam/m/dense_17/bias
y
(Adam/m/dense_17/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_17/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense_17/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/dense_17/kernel/*
dtype0*
shape
:*'
shared_nameAdam/v/dense_17/kernel
�
*Adam/v/dense_17/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_17/kernel*
_output_shapes

:*
dtype0
�
Adam/m/dense_17/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/dense_17/kernel/*
dtype0*
shape
:*'
shared_nameAdam/m/dense_17/kernel
�
*Adam/m/dense_17/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_17/kernel*
_output_shapes

:*
dtype0
�
Adam/v/dense_16/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/dense_16/bias/*
dtype0*
shape:*%
shared_nameAdam/v/dense_16/bias
y
(Adam/v/dense_16/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_16/bias*
_output_shapes
:*
dtype0
�
Adam/m/dense_16/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/dense_16/bias/*
dtype0*
shape:*%
shared_nameAdam/m/dense_16/bias
y
(Adam/m/dense_16/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_16/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense_16/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/dense_16/kernel/*
dtype0*
shape:	�*'
shared_nameAdam/v/dense_16/kernel
�
*Adam/v/dense_16/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_16/kernel*
_output_shapes
:	�*
dtype0
�
Adam/m/dense_16/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/dense_16/kernel/*
dtype0*
shape:	�*'
shared_nameAdam/m/dense_16/kernel
�
*Adam/m/dense_16/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_16/kernel*
_output_shapes
:	�*
dtype0
�
"Adam/v/batch_normalization_17/betaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_17/beta/*
dtype0*
shape:*3
shared_name$"Adam/v/batch_normalization_17/beta
�
6Adam/v/batch_normalization_17/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_17/beta*
_output_shapes
:*
dtype0
�
"Adam/m/batch_normalization_17/betaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_17/beta/*
dtype0*
shape:*3
shared_name$"Adam/m/batch_normalization_17/beta
�
6Adam/m/batch_normalization_17/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_17/beta*
_output_shapes
:*
dtype0
�
#Adam/v/batch_normalization_17/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/v/batch_normalization_17/gamma/*
dtype0*
shape:*4
shared_name%#Adam/v/batch_normalization_17/gamma
�
7Adam/v/batch_normalization_17/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_17/gamma*
_output_shapes
:*
dtype0
�
#Adam/m/batch_normalization_17/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/m/batch_normalization_17/gamma/*
dtype0*
shape:*4
shared_name%#Adam/m/batch_normalization_17/gamma
�
7Adam/m/batch_normalization_17/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_17/gamma*
_output_shapes
:*
dtype0
�
Adam/v/conv1d_17/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv1d_17/bias/*
dtype0*
shape:*&
shared_nameAdam/v/conv1d_17/bias
{
)Adam/v/conv1d_17/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv1d_17/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv1d_17/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv1d_17/bias/*
dtype0*
shape:*&
shared_nameAdam/m/conv1d_17/bias
{
)Adam/m/conv1d_17/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv1d_17/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv1d_17/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv1d_17/kernel/*
dtype0*
shape:*(
shared_nameAdam/v/conv1d_17/kernel
�
+Adam/v/conv1d_17/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv1d_17/kernel*"
_output_shapes
:*
dtype0
�
Adam/m/conv1d_17/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv1d_17/kernel/*
dtype0*
shape:*(
shared_nameAdam/m/conv1d_17/kernel
�
+Adam/m/conv1d_17/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv1d_17/kernel*"
_output_shapes
:*
dtype0
�
"Adam/v/batch_normalization_16/betaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_16/beta/*
dtype0*
shape:*3
shared_name$"Adam/v/batch_normalization_16/beta
�
6Adam/v/batch_normalization_16/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_16/beta*
_output_shapes
:*
dtype0
�
"Adam/m/batch_normalization_16/betaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_16/beta/*
dtype0*
shape:*3
shared_name$"Adam/m/batch_normalization_16/beta
�
6Adam/m/batch_normalization_16/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_16/beta*
_output_shapes
:*
dtype0
�
#Adam/v/batch_normalization_16/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/v/batch_normalization_16/gamma/*
dtype0*
shape:*4
shared_name%#Adam/v/batch_normalization_16/gamma
�
7Adam/v/batch_normalization_16/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_16/gamma*
_output_shapes
:*
dtype0
�
#Adam/m/batch_normalization_16/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/m/batch_normalization_16/gamma/*
dtype0*
shape:*4
shared_name%#Adam/m/batch_normalization_16/gamma
�
7Adam/m/batch_normalization_16/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_16/gamma*
_output_shapes
:*
dtype0
�
Adam/v/conv1d_16/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv1d_16/bias/*
dtype0*
shape:*&
shared_nameAdam/v/conv1d_16/bias
{
)Adam/v/conv1d_16/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv1d_16/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv1d_16/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv1d_16/bias/*
dtype0*
shape:*&
shared_nameAdam/m/conv1d_16/bias
{
)Adam/m/conv1d_16/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv1d_16/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv1d_16/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv1d_16/kernel/*
dtype0*
shape:*(
shared_nameAdam/v/conv1d_16/kernel
�
+Adam/v/conv1d_16/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv1d_16/kernel*"
_output_shapes
:*
dtype0
�
Adam/m/conv1d_16/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv1d_16/kernel/*
dtype0*
shape:*(
shared_nameAdam/m/conv1d_16/kernel
�
+Adam/m/conv1d_16/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv1d_16/kernel*"
_output_shapes
:*
dtype0
�
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
�
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
�
dense_17/biasVarHandleOp*
_output_shapes
: *

debug_namedense_17/bias/*
dtype0*
shape:*
shared_namedense_17/bias
k
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias*
_output_shapes
:*
dtype0
�
dense_17/kernelVarHandleOp*
_output_shapes
: * 

debug_namedense_17/kernel/*
dtype0*
shape
:* 
shared_namedense_17/kernel
s
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel*
_output_shapes

:*
dtype0
�
dense_16/biasVarHandleOp*
_output_shapes
: *

debug_namedense_16/bias/*
dtype0*
shape:*
shared_namedense_16/bias
k
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias*
_output_shapes
:*
dtype0
�
dense_16/kernelVarHandleOp*
_output_shapes
: * 

debug_namedense_16/kernel/*
dtype0*
shape:	�* 
shared_namedense_16/kernel
t
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel*
_output_shapes
:	�*
dtype0
�
&batch_normalization_17/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_17/moving_variance/*
dtype0*
shape:*7
shared_name(&batch_normalization_17/moving_variance
�
:batch_normalization_17/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_17/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_17/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_17/moving_mean/*
dtype0*
shape:*3
shared_name$"batch_normalization_17/moving_mean
�
6batch_normalization_17/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_17/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_17/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_17/beta/*
dtype0*
shape:*,
shared_namebatch_normalization_17/beta
�
/batch_normalization_17/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_17/beta*
_output_shapes
:*
dtype0
�
batch_normalization_17/gammaVarHandleOp*
_output_shapes
: *-

debug_namebatch_normalization_17/gamma/*
dtype0*
shape:*-
shared_namebatch_normalization_17/gamma
�
0batch_normalization_17/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_17/gamma*
_output_shapes
:*
dtype0
�
conv1d_17/biasVarHandleOp*
_output_shapes
: *

debug_nameconv1d_17/bias/*
dtype0*
shape:*
shared_nameconv1d_17/bias
m
"conv1d_17/bias/Read/ReadVariableOpReadVariableOpconv1d_17/bias*
_output_shapes
:*
dtype0
�
conv1d_17/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv1d_17/kernel/*
dtype0*
shape:*!
shared_nameconv1d_17/kernel
y
$conv1d_17/kernel/Read/ReadVariableOpReadVariableOpconv1d_17/kernel*"
_output_shapes
:*
dtype0
�
&batch_normalization_16/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_16/moving_variance/*
dtype0*
shape:*7
shared_name(&batch_normalization_16/moving_variance
�
:batch_normalization_16/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_16/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_16/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_16/moving_mean/*
dtype0*
shape:*3
shared_name$"batch_normalization_16/moving_mean
�
6batch_normalization_16/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_16/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_16/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_16/beta/*
dtype0*
shape:*,
shared_namebatch_normalization_16/beta
�
/batch_normalization_16/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_16/beta*
_output_shapes
:*
dtype0
�
batch_normalization_16/gammaVarHandleOp*
_output_shapes
: *-

debug_namebatch_normalization_16/gamma/*
dtype0*
shape:*-
shared_namebatch_normalization_16/gamma
�
0batch_normalization_16/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_16/gamma*
_output_shapes
:*
dtype0
�
conv1d_16/biasVarHandleOp*
_output_shapes
: *

debug_nameconv1d_16/bias/*
dtype0*
shape:*
shared_nameconv1d_16/bias
m
"conv1d_16/bias/Read/ReadVariableOpReadVariableOpconv1d_16/bias*
_output_shapes
:*
dtype0
�
conv1d_16/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv1d_16/kernel/*
dtype0*
shape:*!
shared_nameconv1d_16/kernel
y
$conv1d_16/kernel/Read/ReadVariableOpReadVariableOpconv1d_16/kernel*"
_output_shapes
:*
dtype0
�
serving_default_conv1d_16_inputPlaceholder*+
_output_shapes
:���������2*
dtype0* 
shape:���������2
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv1d_16_inputconv1d_16/kernelconv1d_16/bias&batch_normalization_16/moving_variancebatch_normalization_16/gamma"batch_normalization_16/moving_meanbatch_normalization_16/betaconv1d_17/kernelconv1d_17/bias&batch_normalization_17/moving_variancebatch_normalization_17/gamma"batch_normalization_17/moving_meanbatch_normalization_17/betadense_16/kerneldense_16/biasdense_17/kerneldense_17/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_681538

NoOpNoOp
�f
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�f
value�fB�f B�f
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses
$axis
	%gamma
&beta
'moving_mean
(moving_variance*
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses
/_random_generator* 
�
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

6kernel
7bias
 8_jit_compiled_convolution_op*
�
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses
?_random_generator* 
�
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses
Faxis
	Ggamma
Hbeta
Imoving_mean
Jmoving_variance*
�
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses* 
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses* 
�
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses

]kernel
^bias*
�
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses
e_random_generator* 
�
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses

lkernel
mbias*
z
0
1
%2
&3
'4
(5
66
77
G8
H9
I10
J11
]12
^13
l14
m15*
Z
0
1
%2
&3
64
75
G6
H7
]8
^9
l10
m11*
* 
�
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

strace_0
ttrace_1* 

utrace_0
vtrace_1* 
* 
�
w
_variables
x_iterations
y_learning_rate
z_index_dict
{
_momentums
|_velocities
}_update_step_xla*

~serving_default* 

0
1*

0
1*
* 
�
non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv1d_16/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_16/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
%0
&1
'2
(3*

%0
&1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_16/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_16/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_16/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_16/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

60
71*

60
71*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv1d_17/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_17/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
 
G0
H1
I2
J3*

G0
H1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_17/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_17/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_17/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_17/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

]0
^1*

]0
^1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_16/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_16/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

l0
m1*

l0
m1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_17/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_17/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
 
'0
(1
I2
J3*
R
0
1
2
3
4
5
6
7
	8

9
10*

�0*
* 
* 
* 
* 
* 
* 
�
x0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
f
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11*
f
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11*
�
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5
�trace_6
�trace_7
�trace_8
�trace_9
�trace_10
�trace_11* 
* 
* 
* 
* 
* 
* 
* 
* 

'0
(1*
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

I0
J1*
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
<
�	variables
�	keras_api

�total

�count*
b\
VARIABLE_VALUEAdam/m/conv1d_16/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv1d_16/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv1d_16/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv1d_16/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE#Adam/m/batch_normalization_16/gamma1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE#Adam/v/batch_normalization_16/gamma1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/m/batch_normalization_16/beta1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/v/batch_normalization_16/beta1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv1d_17/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv1d_17/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv1d_17/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv1d_17/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_17/gamma2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_17/gamma2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_17/beta2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_17/beta2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_16/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_16/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_16/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_16/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_17/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_17/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_17/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_17/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
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
�0
�1*

�	variables*
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
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv1d_16/kernelconv1d_16/biasbatch_normalization_16/gammabatch_normalization_16/beta"batch_normalization_16/moving_mean&batch_normalization_16/moving_varianceconv1d_17/kernelconv1d_17/biasbatch_normalization_17/gammabatch_normalization_17/beta"batch_normalization_17/moving_mean&batch_normalization_17/moving_variancedense_16/kerneldense_16/biasdense_17/kerneldense_17/bias	iterationlearning_rateAdam/m/conv1d_16/kernelAdam/v/conv1d_16/kernelAdam/m/conv1d_16/biasAdam/v/conv1d_16/bias#Adam/m/batch_normalization_16/gamma#Adam/v/batch_normalization_16/gamma"Adam/m/batch_normalization_16/beta"Adam/v/batch_normalization_16/betaAdam/m/conv1d_17/kernelAdam/v/conv1d_17/kernelAdam/m/conv1d_17/biasAdam/v/conv1d_17/bias#Adam/m/batch_normalization_17/gamma#Adam/v/batch_normalization_17/gamma"Adam/m/batch_normalization_17/beta"Adam/v/batch_normalization_17/betaAdam/m/dense_16/kernelAdam/v/dense_16/kernelAdam/m/dense_16/biasAdam/v/dense_16/biasAdam/m/dense_17/kernelAdam/v/dense_17/kernelAdam/m/dense_17/biasAdam/v/dense_17/biastotalcountConst*9
Tin2
02.*
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
GPU2*0J 8� *(
f#R!
__inference__traced_save_682235
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_16/kernelconv1d_16/biasbatch_normalization_16/gammabatch_normalization_16/beta"batch_normalization_16/moving_mean&batch_normalization_16/moving_varianceconv1d_17/kernelconv1d_17/biasbatch_normalization_17/gammabatch_normalization_17/beta"batch_normalization_17/moving_mean&batch_normalization_17/moving_variancedense_16/kerneldense_16/biasdense_17/kerneldense_17/bias	iterationlearning_rateAdam/m/conv1d_16/kernelAdam/v/conv1d_16/kernelAdam/m/conv1d_16/biasAdam/v/conv1d_16/bias#Adam/m/batch_normalization_16/gamma#Adam/v/batch_normalization_16/gamma"Adam/m/batch_normalization_16/beta"Adam/v/batch_normalization_16/betaAdam/m/conv1d_17/kernelAdam/v/conv1d_17/kernelAdam/m/conv1d_17/biasAdam/v/conv1d_17/bias#Adam/m/batch_normalization_17/gamma#Adam/v/batch_normalization_17/gamma"Adam/m/batch_normalization_17/beta"Adam/v/batch_normalization_17/betaAdam/m/dense_16/kernelAdam/v/dense_16/kernelAdam/m/dense_16/biasAdam/v/dense_16/biasAdam/m/dense_17/kernelAdam/v/dense_17/kernelAdam/m/dense_17/biasAdam/v/dense_17/biastotalcount*8
Tin1
/2-*
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
GPU2*0J 8� *+
f&R$
"__inference__traced_restore_682376��
�
a
E__inference_flatten_8_layer_call_and_return_conditional_losses_681245

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
F__inference_dropout_26_layer_call_and_return_conditional_losses_681345

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
E__inference_conv1d_17_layer_call_and_return_conditional_losses_681211

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������2�
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������2*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:���������2*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������2c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:���������2`
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
��
�)
__inference__traced_save_682235
file_prefix=
'read_disablecopyonread_conv1d_16_kernel:5
'read_1_disablecopyonread_conv1d_16_bias:C
5read_2_disablecopyonread_batch_normalization_16_gamma:B
4read_3_disablecopyonread_batch_normalization_16_beta:I
;read_4_disablecopyonread_batch_normalization_16_moving_mean:M
?read_5_disablecopyonread_batch_normalization_16_moving_variance:?
)read_6_disablecopyonread_conv1d_17_kernel:5
'read_7_disablecopyonread_conv1d_17_bias:C
5read_8_disablecopyonread_batch_normalization_17_gamma:B
4read_9_disablecopyonread_batch_normalization_17_beta:J
<read_10_disablecopyonread_batch_normalization_17_moving_mean:N
@read_11_disablecopyonread_batch_normalization_17_moving_variance:<
)read_12_disablecopyonread_dense_16_kernel:	�5
'read_13_disablecopyonread_dense_16_bias:;
)read_14_disablecopyonread_dense_17_kernel:5
'read_15_disablecopyonread_dense_17_bias:-
#read_16_disablecopyonread_iteration:	 1
'read_17_disablecopyonread_learning_rate: G
1read_18_disablecopyonread_adam_m_conv1d_16_kernel:G
1read_19_disablecopyonread_adam_v_conv1d_16_kernel:=
/read_20_disablecopyonread_adam_m_conv1d_16_bias:=
/read_21_disablecopyonread_adam_v_conv1d_16_bias:K
=read_22_disablecopyonread_adam_m_batch_normalization_16_gamma:K
=read_23_disablecopyonread_adam_v_batch_normalization_16_gamma:J
<read_24_disablecopyonread_adam_m_batch_normalization_16_beta:J
<read_25_disablecopyonread_adam_v_batch_normalization_16_beta:G
1read_26_disablecopyonread_adam_m_conv1d_17_kernel:G
1read_27_disablecopyonread_adam_v_conv1d_17_kernel:=
/read_28_disablecopyonread_adam_m_conv1d_17_bias:=
/read_29_disablecopyonread_adam_v_conv1d_17_bias:K
=read_30_disablecopyonread_adam_m_batch_normalization_17_gamma:K
=read_31_disablecopyonread_adam_v_batch_normalization_17_gamma:J
<read_32_disablecopyonread_adam_m_batch_normalization_17_beta:J
<read_33_disablecopyonread_adam_v_batch_normalization_17_beta:C
0read_34_disablecopyonread_adam_m_dense_16_kernel:	�C
0read_35_disablecopyonread_adam_v_dense_16_kernel:	�<
.read_36_disablecopyonread_adam_m_dense_16_bias:<
.read_37_disablecopyonread_adam_v_dense_16_bias:B
0read_38_disablecopyonread_adam_m_dense_17_kernel:B
0read_39_disablecopyonread_adam_v_dense_17_kernel:<
.read_40_disablecopyonread_adam_m_dense_17_bias:<
.read_41_disablecopyonread_adam_v_dense_17_bias:)
read_42_disablecopyonread_total: )
read_43_disablecopyonread_count: 
savev2_const
identity_89��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_conv1d_16_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_conv1d_16_kernel^Read/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0m
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:e

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*"
_output_shapes
:{
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_conv1d_16_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_conv1d_16_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_2/DisableCopyOnReadDisableCopyOnRead5read_2_disablecopyonread_batch_normalization_16_gamma"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp5read_2_disablecopyonread_batch_normalization_16_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_3/DisableCopyOnReadDisableCopyOnRead4read_3_disablecopyonread_batch_normalization_16_beta"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp4read_3_disablecopyonread_batch_normalization_16_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_4/DisableCopyOnReadDisableCopyOnRead;read_4_disablecopyonread_batch_normalization_16_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp;read_4_disablecopyonread_batch_normalization_16_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_5/DisableCopyOnReadDisableCopyOnRead?read_5_disablecopyonread_batch_normalization_16_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp?read_5_disablecopyonread_batch_normalization_16_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_6/DisableCopyOnReadDisableCopyOnRead)read_6_disablecopyonread_conv1d_17_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp)read_6_disablecopyonread_conv1d_17_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0r
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*"
_output_shapes
:{
Read_7/DisableCopyOnReadDisableCopyOnRead'read_7_disablecopyonread_conv1d_17_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp'read_7_disablecopyonread_conv1d_17_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_8/DisableCopyOnReadDisableCopyOnRead5read_8_disablecopyonread_batch_normalization_17_gamma"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp5read_8_disablecopyonread_batch_normalization_17_gamma^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_9/DisableCopyOnReadDisableCopyOnRead4read_9_disablecopyonread_batch_normalization_17_beta"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp4read_9_disablecopyonread_batch_normalization_17_beta^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_10/DisableCopyOnReadDisableCopyOnRead<read_10_disablecopyonread_batch_normalization_17_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp<read_10_disablecopyonread_batch_normalization_17_moving_mean^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_11/DisableCopyOnReadDisableCopyOnRead@read_11_disablecopyonread_batch_normalization_17_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp@read_11_disablecopyonread_batch_normalization_17_moving_variance^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_12/DisableCopyOnReadDisableCopyOnRead)read_12_disablecopyonread_dense_16_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp)read_12_disablecopyonread_dense_16_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:	�|
Read_13/DisableCopyOnReadDisableCopyOnRead'read_13_disablecopyonread_dense_16_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp'read_13_disablecopyonread_dense_16_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
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
:~
Read_14/DisableCopyOnReadDisableCopyOnRead)read_14_disablecopyonread_dense_17_kernel"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp)read_14_disablecopyonread_dense_17_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:|
Read_15/DisableCopyOnReadDisableCopyOnRead'read_15_disablecopyonread_dense_17_bias"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp'read_15_disablecopyonread_dense_17_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_16/DisableCopyOnReadDisableCopyOnRead#read_16_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp#read_16_disablecopyonread_iteration^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_17/DisableCopyOnReadDisableCopyOnRead'read_17_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp'read_17_disablecopyonread_learning_rate^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_18/DisableCopyOnReadDisableCopyOnRead1read_18_disablecopyonread_adam_m_conv1d_16_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp1read_18_disablecopyonread_adam_m_conv1d_16_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0s
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_19/DisableCopyOnReadDisableCopyOnRead1read_19_disablecopyonread_adam_v_conv1d_16_kernel"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp1read_19_disablecopyonread_adam_v_conv1d_16_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0s
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_20/DisableCopyOnReadDisableCopyOnRead/read_20_disablecopyonread_adam_m_conv1d_16_bias"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp/read_20_disablecopyonread_adam_m_conv1d_16_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_21/DisableCopyOnReadDisableCopyOnRead/read_21_disablecopyonread_adam_v_conv1d_16_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp/read_21_disablecopyonread_adam_v_conv1d_16_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_22/DisableCopyOnReadDisableCopyOnRead=read_22_disablecopyonread_adam_m_batch_normalization_16_gamma"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp=read_22_disablecopyonread_adam_m_batch_normalization_16_gamma^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_23/DisableCopyOnReadDisableCopyOnRead=read_23_disablecopyonread_adam_v_batch_normalization_16_gamma"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp=read_23_disablecopyonread_adam_v_batch_normalization_16_gamma^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_24/DisableCopyOnReadDisableCopyOnRead<read_24_disablecopyonread_adam_m_batch_normalization_16_beta"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp<read_24_disablecopyonread_adam_m_batch_normalization_16_beta^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_25/DisableCopyOnReadDisableCopyOnRead<read_25_disablecopyonread_adam_v_batch_normalization_16_beta"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp<read_25_disablecopyonread_adam_v_batch_normalization_16_beta^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_26/DisableCopyOnReadDisableCopyOnRead1read_26_disablecopyonread_adam_m_conv1d_17_kernel"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp1read_26_disablecopyonread_adam_m_conv1d_17_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0s
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_27/DisableCopyOnReadDisableCopyOnRead1read_27_disablecopyonread_adam_v_conv1d_17_kernel"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp1read_27_disablecopyonread_adam_v_conv1d_17_kernel^Read_27/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0s
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*"
_output_shapes
:�
Read_28/DisableCopyOnReadDisableCopyOnRead/read_28_disablecopyonread_adam_m_conv1d_17_bias"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp/read_28_disablecopyonread_adam_m_conv1d_17_bias^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_29/DisableCopyOnReadDisableCopyOnRead/read_29_disablecopyonread_adam_v_conv1d_17_bias"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp/read_29_disablecopyonread_adam_v_conv1d_17_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_30/DisableCopyOnReadDisableCopyOnRead=read_30_disablecopyonread_adam_m_batch_normalization_17_gamma"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp=read_30_disablecopyonread_adam_m_batch_normalization_17_gamma^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_31/DisableCopyOnReadDisableCopyOnRead=read_31_disablecopyonread_adam_v_batch_normalization_17_gamma"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp=read_31_disablecopyonread_adam_v_batch_normalization_17_gamma^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_32/DisableCopyOnReadDisableCopyOnRead<read_32_disablecopyonread_adam_m_batch_normalization_17_beta"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp<read_32_disablecopyonread_adam_m_batch_normalization_17_beta^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_33/DisableCopyOnReadDisableCopyOnRead<read_33_disablecopyonread_adam_v_batch_normalization_17_beta"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp<read_33_disablecopyonread_adam_v_batch_normalization_17_beta^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_34/DisableCopyOnReadDisableCopyOnRead0read_34_disablecopyonread_adam_m_dense_16_kernel"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp0read_34_disablecopyonread_adam_m_dense_16_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_35/DisableCopyOnReadDisableCopyOnRead0read_35_disablecopyonread_adam_v_dense_16_kernel"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp0read_35_disablecopyonread_adam_v_dense_16_kernel^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_36/DisableCopyOnReadDisableCopyOnRead.read_36_disablecopyonread_adam_m_dense_16_bias"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp.read_36_disablecopyonread_adam_m_dense_16_bias^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_37/DisableCopyOnReadDisableCopyOnRead.read_37_disablecopyonread_adam_v_dense_16_bias"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp.read_37_disablecopyonread_adam_v_dense_16_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_38/DisableCopyOnReadDisableCopyOnRead0read_38_disablecopyonread_adam_m_dense_17_kernel"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp0read_38_disablecopyonread_adam_m_dense_17_kernel^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_39/DisableCopyOnReadDisableCopyOnRead0read_39_disablecopyonread_adam_v_dense_17_kernel"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp0read_39_disablecopyonread_adam_v_dense_17_kernel^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_40/DisableCopyOnReadDisableCopyOnRead.read_40_disablecopyonread_adam_m_dense_17_bias"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp.read_40_disablecopyonread_adam_m_dense_17_bias^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_41/DisableCopyOnReadDisableCopyOnRead.read_41_disablecopyonread_adam_v_dense_17_bias"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp.read_41_disablecopyonread_adam_v_dense_17_bias^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
:t
Read_42/DisableCopyOnReadDisableCopyOnReadread_42_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOpread_42_disablecopyonread_total^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_43/DisableCopyOnReadDisableCopyOnReadread_43_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOpread_43_disablecopyonread_count^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*�
value�B�-B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*m
valuedBb-B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *;
dtypes1
/2-	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_88Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_89IdentityIdentity_88:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_89Identity_89:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
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
Read_43/ReadVariableOpRead_43/ReadVariableOp24
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
_user_specified_namefile_prefix:0,
*
_user_specified_nameconv1d_16/kernel:.*
(
_user_specified_nameconv1d_16/bias:<8
6
_user_specified_namebatch_normalization_16/gamma:;7
5
_user_specified_namebatch_normalization_16/beta:B>
<
_user_specified_name$"batch_normalization_16/moving_mean:FB
@
_user_specified_name(&batch_normalization_16/moving_variance:0,
*
_user_specified_nameconv1d_17/kernel:.*
(
_user_specified_nameconv1d_17/bias:<	8
6
_user_specified_namebatch_normalization_17/gamma:;
7
5
_user_specified_namebatch_normalization_17/beta:B>
<
_user_specified_name$"batch_normalization_17/moving_mean:FB
@
_user_specified_name(&batch_normalization_17/moving_variance:/+
)
_user_specified_namedense_16/kernel:-)
'
_user_specified_namedense_16/bias:/+
)
_user_specified_namedense_17/kernel:-)
'
_user_specified_namedense_17/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:73
1
_user_specified_nameAdam/m/conv1d_16/kernel:73
1
_user_specified_nameAdam/v/conv1d_16/kernel:51
/
_user_specified_nameAdam/m/conv1d_16/bias:51
/
_user_specified_nameAdam/v/conv1d_16/bias:C?
=
_user_specified_name%#Adam/m/batch_normalization_16/gamma:C?
=
_user_specified_name%#Adam/v/batch_normalization_16/gamma:B>
<
_user_specified_name$"Adam/m/batch_normalization_16/beta:B>
<
_user_specified_name$"Adam/v/batch_normalization_16/beta:73
1
_user_specified_nameAdam/m/conv1d_17/kernel:73
1
_user_specified_nameAdam/v/conv1d_17/kernel:51
/
_user_specified_nameAdam/m/conv1d_17/bias:51
/
_user_specified_nameAdam/v/conv1d_17/bias:C?
=
_user_specified_name%#Adam/m/batch_normalization_17/gamma:C ?
=
_user_specified_name%#Adam/v/batch_normalization_17/gamma:B!>
<
_user_specified_name$"Adam/m/batch_normalization_17/beta:B">
<
_user_specified_name$"Adam/v/batch_normalization_17/beta:6#2
0
_user_specified_nameAdam/m/dense_16/kernel:6$2
0
_user_specified_nameAdam/v/dense_16/kernel:4%0
.
_user_specified_nameAdam/m/dense_16/bias:4&0
.
_user_specified_nameAdam/v/dense_16/bias:6'2
0
_user_specified_nameAdam/m/dense_17/kernel:6(2
0
_user_specified_nameAdam/v/dense_17/kernel:4)0
.
_user_specified_nameAdam/m/dense_17/bias:4*0
.
_user_specified_nameAdam/v/dense_17/bias:%+!

_user_specified_nametotal:%,!

_user_specified_namecount:=-9

_output_shapes
: 

_user_specified_nameConst
�
S
#__inference__update_step_xla_681543
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*#
_input_shapes
:: *
	_noinline(:L H
"
_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
*__inference_conv1d_16_layer_call_fn_681607

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv1d_16_layer_call_and_return_conditional_losses_681169s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������2: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs:&"
 
_user_specified_name681601:&"
 
_user_specified_name681603
�	
�
7__inference_batch_normalization_17_layer_call_fn_681806

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_681113|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs:&"
 
_user_specified_name681796:&"
 
_user_specified_name681798:&"
 
_user_specified_name681800:&"
 
_user_specified_name681802
�
S
#__inference__update_step_xla_681563
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*#
_input_shapes
:: *
	_noinline(:L H
"
_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
K
#__inference__update_step_xla_681558
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�'
�
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_681840

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :������������������s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs:($
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
resource
�
K
#__inference__update_step_xla_681588
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
�
d
+__inference_dropout_26_layer_call_fn_681908

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_681273o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
K
#__inference__update_step_xla_681553
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�

e
F__inference_dropout_26_layer_call_and_return_conditional_losses_681273

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

e
F__inference_dropout_25_layer_call_and_return_conditional_losses_681775

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������2Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:���������2e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�'
�
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_681093

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :������������������s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs:($
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
resource
�
�
-__inference_sequential_8_layer_call_fn_681427
conv1d_16_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:	�

unknown_12:

unknown_13:

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv1d_16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_8_layer_call_and_return_conditional_losses_681353o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������2: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:���������2
)
_user_specified_nameconv1d_16_input:&"
 
_user_specified_name681393:&"
 
_user_specified_name681395:&"
 
_user_specified_name681397:&"
 
_user_specified_name681399:&"
 
_user_specified_name681401:&"
 
_user_specified_name681403:&"
 
_user_specified_name681405:&"
 
_user_specified_name681407:&	"
 
_user_specified_name681409:&
"
 
_user_specified_name681411:&"
 
_user_specified_name681413:&"
 
_user_specified_name681415:&"
 
_user_specified_name681417:&"
 
_user_specified_name681419:&"
 
_user_specified_name681421:&"
 
_user_specified_name681423
�
P
#__inference__update_step_xla_681583
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	�: *
	_noinline(:I E

_output_shapes
:	�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
d
F__inference_dropout_24_layer_call_and_return_conditional_losses_681312

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:���������2_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
)__inference_dense_17_layer_call_fn_681939

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_681284o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:&"
 
_user_specified_name681933:&"
 
_user_specified_name681935
�
�
$__inference_signature_wrapper_681538
conv1d_16_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:	�

unknown_12:

unknown_13:

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv1d_16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__wrapped_model_680979o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������2: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:���������2
)
_user_specified_nameconv1d_16_input:&"
 
_user_specified_name681504:&"
 
_user_specified_name681506:&"
 
_user_specified_name681508:&"
 
_user_specified_name681510:&"
 
_user_specified_name681512:&"
 
_user_specified_name681514:&"
 
_user_specified_name681516:&"
 
_user_specified_name681518:&	"
 
_user_specified_name681520:&
"
 
_user_specified_name681522:&"
 
_user_specified_name681524:&"
 
_user_specified_name681526:&"
 
_user_specified_name681528:&"
 
_user_specified_name681530:&"
 
_user_specified_name681532:&"
 
_user_specified_name681534
�
g
K__inference_max_pooling1d_8_layer_call_and_return_conditional_losses_681147

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+����������������������������
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+���������������������������*
ksize
*
paddingVALID*
strides
�
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'���������������������������*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'���������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
K
#__inference__update_step_xla_681568
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
υ
�
!__inference__wrapped_model_680979
conv1d_16_inputX
Bsequential_8_conv1d_16_conv1d_expanddims_1_readvariableop_resource:D
6sequential_8_conv1d_16_biasadd_readvariableop_resource:S
Esequential_8_batch_normalization_16_batchnorm_readvariableop_resource:W
Isequential_8_batch_normalization_16_batchnorm_mul_readvariableop_resource:U
Gsequential_8_batch_normalization_16_batchnorm_readvariableop_1_resource:U
Gsequential_8_batch_normalization_16_batchnorm_readvariableop_2_resource:X
Bsequential_8_conv1d_17_conv1d_expanddims_1_readvariableop_resource:D
6sequential_8_conv1d_17_biasadd_readvariableop_resource:S
Esequential_8_batch_normalization_17_batchnorm_readvariableop_resource:W
Isequential_8_batch_normalization_17_batchnorm_mul_readvariableop_resource:U
Gsequential_8_batch_normalization_17_batchnorm_readvariableop_1_resource:U
Gsequential_8_batch_normalization_17_batchnorm_readvariableop_2_resource:G
4sequential_8_dense_16_matmul_readvariableop_resource:	�C
5sequential_8_dense_16_biasadd_readvariableop_resource:F
4sequential_8_dense_17_matmul_readvariableop_resource:C
5sequential_8_dense_17_biasadd_readvariableop_resource:
identity��<sequential_8/batch_normalization_16/batchnorm/ReadVariableOp�>sequential_8/batch_normalization_16/batchnorm/ReadVariableOp_1�>sequential_8/batch_normalization_16/batchnorm/ReadVariableOp_2�@sequential_8/batch_normalization_16/batchnorm/mul/ReadVariableOp�<sequential_8/batch_normalization_17/batchnorm/ReadVariableOp�>sequential_8/batch_normalization_17/batchnorm/ReadVariableOp_1�>sequential_8/batch_normalization_17/batchnorm/ReadVariableOp_2�@sequential_8/batch_normalization_17/batchnorm/mul/ReadVariableOp�-sequential_8/conv1d_16/BiasAdd/ReadVariableOp�9sequential_8/conv1d_16/Conv1D/ExpandDims_1/ReadVariableOp�-sequential_8/conv1d_17/BiasAdd/ReadVariableOp�9sequential_8/conv1d_17/Conv1D/ExpandDims_1/ReadVariableOp�,sequential_8/dense_16/BiasAdd/ReadVariableOp�+sequential_8/dense_16/MatMul/ReadVariableOp�,sequential_8/dense_17/BiasAdd/ReadVariableOp�+sequential_8/dense_17/MatMul/ReadVariableOpw
,sequential_8/conv1d_16/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
(sequential_8/conv1d_16/Conv1D/ExpandDims
ExpandDimsconv1d_16_input5sequential_8/conv1d_16/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������2�
9sequential_8/conv1d_16/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpBsequential_8_conv1d_16_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0p
.sequential_8/conv1d_16/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
*sequential_8/conv1d_16/Conv1D/ExpandDims_1
ExpandDimsAsequential_8/conv1d_16/Conv1D/ExpandDims_1/ReadVariableOp:value:07sequential_8/conv1d_16/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
sequential_8/conv1d_16/Conv1DConv2D1sequential_8/conv1d_16/Conv1D/ExpandDims:output:03sequential_8/conv1d_16/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������2*
paddingSAME*
strides
�
%sequential_8/conv1d_16/Conv1D/SqueezeSqueeze&sequential_8/conv1d_16/Conv1D:output:0*
T0*+
_output_shapes
:���������2*
squeeze_dims

����������
-sequential_8/conv1d_16/BiasAdd/ReadVariableOpReadVariableOp6sequential_8_conv1d_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_8/conv1d_16/BiasAddBiasAdd.sequential_8/conv1d_16/Conv1D/Squeeze:output:05sequential_8/conv1d_16/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������2�
<sequential_8/batch_normalization_16/batchnorm/ReadVariableOpReadVariableOpEsequential_8_batch_normalization_16_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0x
3sequential_8/batch_normalization_16/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
1sequential_8/batch_normalization_16/batchnorm/addAddV2Dsequential_8/batch_normalization_16/batchnorm/ReadVariableOp:value:0<sequential_8/batch_normalization_16/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
3sequential_8/batch_normalization_16/batchnorm/RsqrtRsqrt5sequential_8/batch_normalization_16/batchnorm/add:z:0*
T0*
_output_shapes
:�
@sequential_8/batch_normalization_16/batchnorm/mul/ReadVariableOpReadVariableOpIsequential_8_batch_normalization_16_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
1sequential_8/batch_normalization_16/batchnorm/mulMul7sequential_8/batch_normalization_16/batchnorm/Rsqrt:y:0Hsequential_8/batch_normalization_16/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
3sequential_8/batch_normalization_16/batchnorm/mul_1Mul'sequential_8/conv1d_16/BiasAdd:output:05sequential_8/batch_normalization_16/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������2�
>sequential_8/batch_normalization_16/batchnorm/ReadVariableOp_1ReadVariableOpGsequential_8_batch_normalization_16_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
3sequential_8/batch_normalization_16/batchnorm/mul_2MulFsequential_8/batch_normalization_16/batchnorm/ReadVariableOp_1:value:05sequential_8/batch_normalization_16/batchnorm/mul:z:0*
T0*
_output_shapes
:�
>sequential_8/batch_normalization_16/batchnorm/ReadVariableOp_2ReadVariableOpGsequential_8_batch_normalization_16_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
1sequential_8/batch_normalization_16/batchnorm/subSubFsequential_8/batch_normalization_16/batchnorm/ReadVariableOp_2:value:07sequential_8/batch_normalization_16/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
3sequential_8/batch_normalization_16/batchnorm/add_1AddV27sequential_8/batch_normalization_16/batchnorm/mul_1:z:05sequential_8/batch_normalization_16/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������2�
 sequential_8/dropout_24/IdentityIdentity7sequential_8/batch_normalization_16/batchnorm/add_1:z:0*
T0*+
_output_shapes
:���������2w
,sequential_8/conv1d_17/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
(sequential_8/conv1d_17/Conv1D/ExpandDims
ExpandDims)sequential_8/dropout_24/Identity:output:05sequential_8/conv1d_17/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������2�
9sequential_8/conv1d_17/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpBsequential_8_conv1d_17_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0p
.sequential_8/conv1d_17/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
*sequential_8/conv1d_17/Conv1D/ExpandDims_1
ExpandDimsAsequential_8/conv1d_17/Conv1D/ExpandDims_1/ReadVariableOp:value:07sequential_8/conv1d_17/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
sequential_8/conv1d_17/Conv1DConv2D1sequential_8/conv1d_17/Conv1D/ExpandDims:output:03sequential_8/conv1d_17/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������2*
paddingSAME*
strides
�
%sequential_8/conv1d_17/Conv1D/SqueezeSqueeze&sequential_8/conv1d_17/Conv1D:output:0*
T0*+
_output_shapes
:���������2*
squeeze_dims

����������
-sequential_8/conv1d_17/BiasAdd/ReadVariableOpReadVariableOp6sequential_8_conv1d_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_8/conv1d_17/BiasAddBiasAdd.sequential_8/conv1d_17/Conv1D/Squeeze:output:05sequential_8/conv1d_17/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������2�
 sequential_8/dropout_25/IdentityIdentity'sequential_8/conv1d_17/BiasAdd:output:0*
T0*+
_output_shapes
:���������2�
<sequential_8/batch_normalization_17/batchnorm/ReadVariableOpReadVariableOpEsequential_8_batch_normalization_17_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0x
3sequential_8/batch_normalization_17/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
1sequential_8/batch_normalization_17/batchnorm/addAddV2Dsequential_8/batch_normalization_17/batchnorm/ReadVariableOp:value:0<sequential_8/batch_normalization_17/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
3sequential_8/batch_normalization_17/batchnorm/RsqrtRsqrt5sequential_8/batch_normalization_17/batchnorm/add:z:0*
T0*
_output_shapes
:�
@sequential_8/batch_normalization_17/batchnorm/mul/ReadVariableOpReadVariableOpIsequential_8_batch_normalization_17_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
1sequential_8/batch_normalization_17/batchnorm/mulMul7sequential_8/batch_normalization_17/batchnorm/Rsqrt:y:0Hsequential_8/batch_normalization_17/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
3sequential_8/batch_normalization_17/batchnorm/mul_1Mul)sequential_8/dropout_25/Identity:output:05sequential_8/batch_normalization_17/batchnorm/mul:z:0*
T0*+
_output_shapes
:���������2�
>sequential_8/batch_normalization_17/batchnorm/ReadVariableOp_1ReadVariableOpGsequential_8_batch_normalization_17_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
3sequential_8/batch_normalization_17/batchnorm/mul_2MulFsequential_8/batch_normalization_17/batchnorm/ReadVariableOp_1:value:05sequential_8/batch_normalization_17/batchnorm/mul:z:0*
T0*
_output_shapes
:�
>sequential_8/batch_normalization_17/batchnorm/ReadVariableOp_2ReadVariableOpGsequential_8_batch_normalization_17_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
1sequential_8/batch_normalization_17/batchnorm/subSubFsequential_8/batch_normalization_17/batchnorm/ReadVariableOp_2:value:07sequential_8/batch_normalization_17/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
3sequential_8/batch_normalization_17/batchnorm/add_1AddV27sequential_8/batch_normalization_17/batchnorm/mul_1:z:05sequential_8/batch_normalization_17/batchnorm/sub:z:0*
T0*+
_output_shapes
:���������2m
+sequential_8/max_pooling1d_8/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
'sequential_8/max_pooling1d_8/ExpandDims
ExpandDims7sequential_8/batch_normalization_17/batchnorm/add_1:z:04sequential_8/max_pooling1d_8/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������2�
$sequential_8/max_pooling1d_8/MaxPoolMaxPool0sequential_8/max_pooling1d_8/ExpandDims:output:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
$sequential_8/max_pooling1d_8/SqueezeSqueeze-sequential_8/max_pooling1d_8/MaxPool:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims
m
sequential_8/flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
sequential_8/flatten_8/ReshapeReshape-sequential_8/max_pooling1d_8/Squeeze:output:0%sequential_8/flatten_8/Const:output:0*
T0*(
_output_shapes
:�����������
+sequential_8/dense_16/MatMul/ReadVariableOpReadVariableOp4sequential_8_dense_16_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
sequential_8/dense_16/MatMulMatMul'sequential_8/flatten_8/Reshape:output:03sequential_8/dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,sequential_8/dense_16/BiasAdd/ReadVariableOpReadVariableOp5sequential_8_dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_8/dense_16/BiasAddBiasAdd&sequential_8/dense_16/MatMul:product:04sequential_8/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 sequential_8/dropout_26/IdentityIdentity&sequential_8/dense_16/BiasAdd:output:0*
T0*'
_output_shapes
:����������
+sequential_8/dense_17/MatMul/ReadVariableOpReadVariableOp4sequential_8_dense_17_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
sequential_8/dense_17/MatMulMatMul)sequential_8/dropout_26/Identity:output:03sequential_8/dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,sequential_8/dense_17/BiasAdd/ReadVariableOpReadVariableOp5sequential_8_dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_8/dense_17/BiasAddBiasAdd&sequential_8/dense_17/MatMul:product:04sequential_8/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������u
IdentityIdentity&sequential_8/dense_17/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp=^sequential_8/batch_normalization_16/batchnorm/ReadVariableOp?^sequential_8/batch_normalization_16/batchnorm/ReadVariableOp_1?^sequential_8/batch_normalization_16/batchnorm/ReadVariableOp_2A^sequential_8/batch_normalization_16/batchnorm/mul/ReadVariableOp=^sequential_8/batch_normalization_17/batchnorm/ReadVariableOp?^sequential_8/batch_normalization_17/batchnorm/ReadVariableOp_1?^sequential_8/batch_normalization_17/batchnorm/ReadVariableOp_2A^sequential_8/batch_normalization_17/batchnorm/mul/ReadVariableOp.^sequential_8/conv1d_16/BiasAdd/ReadVariableOp:^sequential_8/conv1d_16/Conv1D/ExpandDims_1/ReadVariableOp.^sequential_8/conv1d_17/BiasAdd/ReadVariableOp:^sequential_8/conv1d_17/Conv1D/ExpandDims_1/ReadVariableOp-^sequential_8/dense_16/BiasAdd/ReadVariableOp,^sequential_8/dense_16/MatMul/ReadVariableOp-^sequential_8/dense_17/BiasAdd/ReadVariableOp,^sequential_8/dense_17/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������2: : : : : : : : : : : : : : : : 2|
<sequential_8/batch_normalization_16/batchnorm/ReadVariableOp<sequential_8/batch_normalization_16/batchnorm/ReadVariableOp2�
>sequential_8/batch_normalization_16/batchnorm/ReadVariableOp_1>sequential_8/batch_normalization_16/batchnorm/ReadVariableOp_12�
>sequential_8/batch_normalization_16/batchnorm/ReadVariableOp_2>sequential_8/batch_normalization_16/batchnorm/ReadVariableOp_22�
@sequential_8/batch_normalization_16/batchnorm/mul/ReadVariableOp@sequential_8/batch_normalization_16/batchnorm/mul/ReadVariableOp2|
<sequential_8/batch_normalization_17/batchnorm/ReadVariableOp<sequential_8/batch_normalization_17/batchnorm/ReadVariableOp2�
>sequential_8/batch_normalization_17/batchnorm/ReadVariableOp_1>sequential_8/batch_normalization_17/batchnorm/ReadVariableOp_12�
>sequential_8/batch_normalization_17/batchnorm/ReadVariableOp_2>sequential_8/batch_normalization_17/batchnorm/ReadVariableOp_22�
@sequential_8/batch_normalization_17/batchnorm/mul/ReadVariableOp@sequential_8/batch_normalization_17/batchnorm/mul/ReadVariableOp2^
-sequential_8/conv1d_16/BiasAdd/ReadVariableOp-sequential_8/conv1d_16/BiasAdd/ReadVariableOp2v
9sequential_8/conv1d_16/Conv1D/ExpandDims_1/ReadVariableOp9sequential_8/conv1d_16/Conv1D/ExpandDims_1/ReadVariableOp2^
-sequential_8/conv1d_17/BiasAdd/ReadVariableOp-sequential_8/conv1d_17/BiasAdd/ReadVariableOp2v
9sequential_8/conv1d_17/Conv1D/ExpandDims_1/ReadVariableOp9sequential_8/conv1d_17/Conv1D/ExpandDims_1/ReadVariableOp2\
,sequential_8/dense_16/BiasAdd/ReadVariableOp,sequential_8/dense_16/BiasAdd/ReadVariableOp2Z
+sequential_8/dense_16/MatMul/ReadVariableOp+sequential_8/dense_16/MatMul/ReadVariableOp2\
,sequential_8/dense_17/BiasAdd/ReadVariableOp,sequential_8/dense_17/BiasAdd/ReadVariableOp2Z
+sequential_8/dense_17/MatMul/ReadVariableOp+sequential_8/dense_17/MatMul/ReadVariableOp:\ X
+
_output_shapes
:���������2
)
_user_specified_nameconv1d_16_input:($
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
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

e
F__inference_dropout_24_layer_call_and_return_conditional_losses_681724

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������2Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:���������2e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
d
F__inference_dropout_26_layer_call_and_return_conditional_losses_681930

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

e
F__inference_dropout_25_layer_call_and_return_conditional_losses_681228

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������2Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:���������2e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
L
0__inference_max_pooling1d_8_layer_call_fn_681865

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'���������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_max_pooling1d_8_layer_call_and_return_conditional_losses_681147v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'���������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_681702

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs:($
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
resource
�
d
F__inference_dropout_25_layer_call_and_return_conditional_losses_681780

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:���������2_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�=
�
H__inference_sequential_8_layer_call_and_return_conditional_losses_681291
conv1d_16_input&
conv1d_16_681170:
conv1d_16_681172:+
batch_normalization_16_681175:+
batch_normalization_16_681177:+
batch_normalization_16_681179:+
batch_normalization_16_681181:&
conv1d_17_681212:
conv1d_17_681214:+
batch_normalization_17_681230:+
batch_normalization_17_681232:+
batch_normalization_17_681234:+
batch_normalization_17_681236:"
dense_16_681257:	�
dense_16_681259:!
dense_17_681285:
dense_17_681287:
identity��.batch_normalization_16/StatefulPartitionedCall�.batch_normalization_17/StatefulPartitionedCall�!conv1d_16/StatefulPartitionedCall�!conv1d_17/StatefulPartitionedCall� dense_16/StatefulPartitionedCall� dense_17/StatefulPartitionedCall�"dropout_24/StatefulPartitionedCall�"dropout_25/StatefulPartitionedCall�"dropout_26/StatefulPartitionedCall�
!conv1d_16/StatefulPartitionedCallStatefulPartitionedCallconv1d_16_inputconv1d_16_681170conv1d_16_681172*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv1d_16_layer_call_and_return_conditional_losses_681169�
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall*conv1d_16/StatefulPartitionedCall:output:0batch_normalization_16_681175batch_normalization_16_681177batch_normalization_16_681179batch_normalization_16_681181*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_681013�
"dropout_24/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_24_layer_call_and_return_conditional_losses_681195�
!conv1d_17/StatefulPartitionedCallStatefulPartitionedCall+dropout_24/StatefulPartitionedCall:output:0conv1d_17_681212conv1d_17_681214*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv1d_17_layer_call_and_return_conditional_losses_681211�
"dropout_25/StatefulPartitionedCallStatefulPartitionedCall*conv1d_17/StatefulPartitionedCall:output:0#^dropout_24/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_681228�
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall+dropout_25/StatefulPartitionedCall:output:0batch_normalization_17_681230batch_normalization_17_681232batch_normalization_17_681234batch_normalization_17_681236*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_681093�
max_pooling1d_8/PartitionedCallPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_max_pooling1d_8_layer_call_and_return_conditional_losses_681147�
flatten_8/PartitionedCallPartitionedCall(max_pooling1d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_681245�
 dense_16/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0dense_16_681257dense_16_681259*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_681256�
"dropout_26/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0#^dropout_25/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_681273�
 dense_17/StatefulPartitionedCallStatefulPartitionedCall+dropout_26/StatefulPartitionedCall:output:0dense_17_681285dense_17_681287*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_681284x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall"^conv1d_16/StatefulPartitionedCall"^conv1d_17/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall#^dropout_24/StatefulPartitionedCall#^dropout_25/StatefulPartitionedCall#^dropout_26/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������2: : : : : : : : : : : : : : : : 2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2F
!conv1d_16/StatefulPartitionedCall!conv1d_16/StatefulPartitionedCall2F
!conv1d_17/StatefulPartitionedCall!conv1d_17/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2H
"dropout_24/StatefulPartitionedCall"dropout_24/StatefulPartitionedCall2H
"dropout_25/StatefulPartitionedCall"dropout_25/StatefulPartitionedCall2H
"dropout_26/StatefulPartitionedCall"dropout_26/StatefulPartitionedCall:\ X
+
_output_shapes
:���������2
)
_user_specified_nameconv1d_16_input:&"
 
_user_specified_name681170:&"
 
_user_specified_name681172:&"
 
_user_specified_name681175:&"
 
_user_specified_name681177:&"
 
_user_specified_name681179:&"
 
_user_specified_name681181:&"
 
_user_specified_name681212:&"
 
_user_specified_name681214:&	"
 
_user_specified_name681230:&
"
 
_user_specified_name681232:&"
 
_user_specified_name681234:&"
 
_user_specified_name681236:&"
 
_user_specified_name681257:&"
 
_user_specified_name681259:&"
 
_user_specified_name681285:&"
 
_user_specified_name681287
�
�
E__inference_conv1d_17_layer_call_and_return_conditional_losses_681753

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������2�
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������2*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:���������2*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������2c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:���������2`
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
K
#__inference__update_step_xla_681598
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
�	
�
D__inference_dense_17_layer_call_and_return_conditional_losses_681949

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
7__inference_batch_normalization_17_layer_call_fn_681793

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_681093|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs:&"
 
_user_specified_name681783:&"
 
_user_specified_name681785:&"
 
_user_specified_name681787:&"
 
_user_specified_name681789
�
O
#__inference__update_step_xla_681593
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
�

e
F__inference_dropout_24_layer_call_and_return_conditional_losses_681195

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������2Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:���������2e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�

e
F__inference_dropout_26_layer_call_and_return_conditional_losses_681925

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
F__inference_dropout_25_layer_call_and_return_conditional_losses_681323

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:���������2_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�	
�
D__inference_dense_17_layer_call_and_return_conditional_losses_681284

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
*__inference_conv1d_17_layer_call_fn_681738

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv1d_17_layer_call_and_return_conditional_losses_681211s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������2: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs:&"
 
_user_specified_name681732:&"
 
_user_specified_name681734
�
K
#__inference__update_step_xla_681578
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
-__inference_sequential_8_layer_call_fn_681390
conv1d_16_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:	�

unknown_12:

unknown_13:

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv1d_16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_sequential_8_layer_call_and_return_conditional_losses_681291o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������2: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:���������2
)
_user_specified_nameconv1d_16_input:&"
 
_user_specified_name681356:&"
 
_user_specified_name681358:&"
 
_user_specified_name681360:&"
 
_user_specified_name681362:&"
 
_user_specified_name681364:&"
 
_user_specified_name681366:&"
 
_user_specified_name681368:&"
 
_user_specified_name681370:&	"
 
_user_specified_name681372:&
"
 
_user_specified_name681374:&"
 
_user_specified_name681376:&"
 
_user_specified_name681378:&"
 
_user_specified_name681380:&"
 
_user_specified_name681382:&"
 
_user_specified_name681384:&"
 
_user_specified_name681386
�	
�
D__inference_dense_16_layer_call_and_return_conditional_losses_681256

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�'
�
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_681013

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :������������������s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs:($
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
resource
�
�
E__inference_conv1d_16_layer_call_and_return_conditional_losses_681622

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������2�
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������2*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:���������2*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������2c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:���������2`
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
G
+__inference_dropout_24_layer_call_fn_681712

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_24_layer_call_and_return_conditional_losses_681312d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_681860

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs:($
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
resource
�
g
K__inference_max_pooling1d_8_layer_call_and_return_conditional_losses_681873

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+����������������������������
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+���������������������������*
ksize
*
paddingVALID*
strides
�
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'���������������������������*
squeeze_dims
n
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'���������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
F
*__inference_flatten_8_layer_call_fn_681878

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_681245a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
K
#__inference__update_step_xla_681548
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
E__inference_conv1d_16_layer_call_and_return_conditional_losses_681169

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������2�
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:�
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������2*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:���������2*
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������2c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:���������2`
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
d
+__inference_dropout_24_layer_call_fn_681707

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_24_layer_call_and_return_conditional_losses_681195s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������222
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
��
�
"__inference__traced_restore_682376
file_prefix7
!assignvariableop_conv1d_16_kernel:/
!assignvariableop_1_conv1d_16_bias:=
/assignvariableop_2_batch_normalization_16_gamma:<
.assignvariableop_3_batch_normalization_16_beta:C
5assignvariableop_4_batch_normalization_16_moving_mean:G
9assignvariableop_5_batch_normalization_16_moving_variance:9
#assignvariableop_6_conv1d_17_kernel:/
!assignvariableop_7_conv1d_17_bias:=
/assignvariableop_8_batch_normalization_17_gamma:<
.assignvariableop_9_batch_normalization_17_beta:D
6assignvariableop_10_batch_normalization_17_moving_mean:H
:assignvariableop_11_batch_normalization_17_moving_variance:6
#assignvariableop_12_dense_16_kernel:	�/
!assignvariableop_13_dense_16_bias:5
#assignvariableop_14_dense_17_kernel:/
!assignvariableop_15_dense_17_bias:'
assignvariableop_16_iteration:	 +
!assignvariableop_17_learning_rate: A
+assignvariableop_18_adam_m_conv1d_16_kernel:A
+assignvariableop_19_adam_v_conv1d_16_kernel:7
)assignvariableop_20_adam_m_conv1d_16_bias:7
)assignvariableop_21_adam_v_conv1d_16_bias:E
7assignvariableop_22_adam_m_batch_normalization_16_gamma:E
7assignvariableop_23_adam_v_batch_normalization_16_gamma:D
6assignvariableop_24_adam_m_batch_normalization_16_beta:D
6assignvariableop_25_adam_v_batch_normalization_16_beta:A
+assignvariableop_26_adam_m_conv1d_17_kernel:A
+assignvariableop_27_adam_v_conv1d_17_kernel:7
)assignvariableop_28_adam_m_conv1d_17_bias:7
)assignvariableop_29_adam_v_conv1d_17_bias:E
7assignvariableop_30_adam_m_batch_normalization_17_gamma:E
7assignvariableop_31_adam_v_batch_normalization_17_gamma:D
6assignvariableop_32_adam_m_batch_normalization_17_beta:D
6assignvariableop_33_adam_v_batch_normalization_17_beta:=
*assignvariableop_34_adam_m_dense_16_kernel:	�=
*assignvariableop_35_adam_v_dense_16_kernel:	�6
(assignvariableop_36_adam_m_dense_16_bias:6
(assignvariableop_37_adam_v_dense_16_bias:<
*assignvariableop_38_adam_m_dense_17_kernel:<
*assignvariableop_39_adam_v_dense_17_kernel:6
(assignvariableop_40_adam_m_dense_17_bias:6
(assignvariableop_41_adam_v_dense_17_bias:#
assignvariableop_42_total: #
assignvariableop_43_count: 
identity_45��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*�
value�B�-B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*m
valuedBb-B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::*;
dtypes1
/2-	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv1d_16_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv1d_16_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_16_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_16_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_16_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_16_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv1d_17_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv1d_17_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_17_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_17_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_17_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_17_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_16_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_16_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_17_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_17_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_iterationIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp!assignvariableop_17_learning_rateIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_m_conv1d_16_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_v_conv1d_16_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_m_conv1d_16_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_v_conv1d_16_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp7assignvariableop_22_adam_m_batch_normalization_16_gammaIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp7assignvariableop_23_adam_v_batch_normalization_16_gammaIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp6assignvariableop_24_adam_m_batch_normalization_16_betaIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_v_batch_normalization_16_betaIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_m_conv1d_17_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_v_conv1d_17_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_m_conv1d_17_biasIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_v_conv1d_17_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp7assignvariableop_30_adam_m_batch_normalization_17_gammaIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp7assignvariableop_31_adam_v_batch_normalization_17_gammaIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp6assignvariableop_32_adam_m_batch_normalization_17_betaIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_v_batch_normalization_17_betaIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_m_dense_16_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_v_dense_16_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_m_dense_16_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_v_dense_16_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_m_dense_17_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_v_dense_17_kernelIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_m_dense_17_biasIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp(assignvariableop_41_adam_v_dense_17_biasIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOpassignvariableop_42_totalIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOpassignvariableop_43_countIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_44Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_45IdentityIdentity_44:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_45Identity_45:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_43AssignVariableOp_432(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_user_specified_nameconv1d_16/kernel:.*
(
_user_specified_nameconv1d_16/bias:<8
6
_user_specified_namebatch_normalization_16/gamma:;7
5
_user_specified_namebatch_normalization_16/beta:B>
<
_user_specified_name$"batch_normalization_16/moving_mean:FB
@
_user_specified_name(&batch_normalization_16/moving_variance:0,
*
_user_specified_nameconv1d_17/kernel:.*
(
_user_specified_nameconv1d_17/bias:<	8
6
_user_specified_namebatch_normalization_17/gamma:;
7
5
_user_specified_namebatch_normalization_17/beta:B>
<
_user_specified_name$"batch_normalization_17/moving_mean:FB
@
_user_specified_name(&batch_normalization_17/moving_variance:/+
)
_user_specified_namedense_16/kernel:-)
'
_user_specified_namedense_16/bias:/+
)
_user_specified_namedense_17/kernel:-)
'
_user_specified_namedense_17/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:73
1
_user_specified_nameAdam/m/conv1d_16/kernel:73
1
_user_specified_nameAdam/v/conv1d_16/kernel:51
/
_user_specified_nameAdam/m/conv1d_16/bias:51
/
_user_specified_nameAdam/v/conv1d_16/bias:C?
=
_user_specified_name%#Adam/m/batch_normalization_16/gamma:C?
=
_user_specified_name%#Adam/v/batch_normalization_16/gamma:B>
<
_user_specified_name$"Adam/m/batch_normalization_16/beta:B>
<
_user_specified_name$"Adam/v/batch_normalization_16/beta:73
1
_user_specified_nameAdam/m/conv1d_17/kernel:73
1
_user_specified_nameAdam/v/conv1d_17/kernel:51
/
_user_specified_nameAdam/m/conv1d_17/bias:51
/
_user_specified_nameAdam/v/conv1d_17/bias:C?
=
_user_specified_name%#Adam/m/batch_normalization_17/gamma:C ?
=
_user_specified_name%#Adam/v/batch_normalization_17/gamma:B!>
<
_user_specified_name$"Adam/m/batch_normalization_17/beta:B">
<
_user_specified_name$"Adam/v/batch_normalization_17/beta:6#2
0
_user_specified_nameAdam/m/dense_16/kernel:6$2
0
_user_specified_nameAdam/v/dense_16/kernel:4%0
.
_user_specified_nameAdam/m/dense_16/bias:4&0
.
_user_specified_nameAdam/v/dense_16/bias:6'2
0
_user_specified_nameAdam/m/dense_17/kernel:6(2
0
_user_specified_nameAdam/v/dense_17/kernel:4)0
.
_user_specified_nameAdam/m/dense_17/bias:4*0
.
_user_specified_nameAdam/v/dense_17/bias:%+!

_user_specified_nametotal:%,!

_user_specified_namecount
�
G
+__inference_dropout_26_layer_call_fn_681913

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_681345`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
D__inference_dense_16_layer_call_and_return_conditional_losses_681903

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
d
+__inference_dropout_25_layer_call_fn_681758

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_681228s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������222
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
d
F__inference_dropout_24_layer_call_and_return_conditional_losses_681729

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:���������2_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�	
�
7__inference_batch_normalization_16_layer_call_fn_681635

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_681013|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs:&"
 
_user_specified_name681625:&"
 
_user_specified_name681627:&"
 
_user_specified_name681629:&"
 
_user_specified_name681631
�
�
)__inference_dense_16_layer_call_fn_681893

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_681256o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name681887:&"
 
_user_specified_name681889
�8
�
H__inference_sequential_8_layer_call_and_return_conditional_losses_681353
conv1d_16_input&
conv1d_16_681294:
conv1d_16_681296:+
batch_normalization_16_681299:+
batch_normalization_16_681301:+
batch_normalization_16_681303:+
batch_normalization_16_681305:&
conv1d_17_681314:
conv1d_17_681316:+
batch_normalization_17_681325:+
batch_normalization_17_681327:+
batch_normalization_17_681329:+
batch_normalization_17_681331:"
dense_16_681336:	�
dense_16_681338:!
dense_17_681347:
dense_17_681349:
identity��.batch_normalization_16/StatefulPartitionedCall�.batch_normalization_17/StatefulPartitionedCall�!conv1d_16/StatefulPartitionedCall�!conv1d_17/StatefulPartitionedCall� dense_16/StatefulPartitionedCall� dense_17/StatefulPartitionedCall�
!conv1d_16/StatefulPartitionedCallStatefulPartitionedCallconv1d_16_inputconv1d_16_681294conv1d_16_681296*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv1d_16_layer_call_and_return_conditional_losses_681169�
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall*conv1d_16/StatefulPartitionedCall:output:0batch_normalization_16_681299batch_normalization_16_681301batch_normalization_16_681303batch_normalization_16_681305*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_681033�
dropout_24/PartitionedCallPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_24_layer_call_and_return_conditional_losses_681312�
!conv1d_17/StatefulPartitionedCallStatefulPartitionedCall#dropout_24/PartitionedCall:output:0conv1d_17_681314conv1d_17_681316*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv1d_17_layer_call_and_return_conditional_losses_681211�
dropout_25/PartitionedCallPartitionedCall*conv1d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_681323�
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall#dropout_25/PartitionedCall:output:0batch_normalization_17_681325batch_normalization_17_681327batch_normalization_17_681329batch_normalization_17_681331*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_681113�
max_pooling1d_8/PartitionedCallPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_max_pooling1d_8_layer_call_and_return_conditional_losses_681147�
flatten_8/PartitionedCallPartitionedCall(max_pooling1d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_681245�
 dense_16/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0dense_16_681336dense_16_681338*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_681256�
dropout_26/PartitionedCallPartitionedCall)dense_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_26_layer_call_and_return_conditional_losses_681345�
 dense_17/StatefulPartitionedCallStatefulPartitionedCall#dropout_26/PartitionedCall:output:0dense_17_681347dense_17_681349*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_681284x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall"^conv1d_16/StatefulPartitionedCall"^conv1d_17/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:���������2: : : : : : : : : : : : : : : : 2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2F
!conv1d_16/StatefulPartitionedCall!conv1d_16/StatefulPartitionedCall2F
!conv1d_17/StatefulPartitionedCall!conv1d_17/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall:\ X
+
_output_shapes
:���������2
)
_user_specified_nameconv1d_16_input:&"
 
_user_specified_name681294:&"
 
_user_specified_name681296:&"
 
_user_specified_name681299:&"
 
_user_specified_name681301:&"
 
_user_specified_name681303:&"
 
_user_specified_name681305:&"
 
_user_specified_name681314:&"
 
_user_specified_name681316:&	"
 
_user_specified_name681325:&
"
 
_user_specified_name681327:&"
 
_user_specified_name681329:&"
 
_user_specified_name681331:&"
 
_user_specified_name681336:&"
 
_user_specified_name681338:&"
 
_user_specified_name681347:&"
 
_user_specified_name681349
�
a
E__inference_flatten_8_layer_call_and_return_conditional_losses_681884

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�'
�
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_681682

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :������������������s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs:($
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
resource
�
K
#__inference__update_step_xla_681573
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�	
�
7__inference_batch_normalization_16_layer_call_fn_681648

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_681033|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs:&"
 
_user_specified_name681638:&"
 
_user_specified_name681640:&"
 
_user_specified_name681642:&"
 
_user_specified_name681644
�
�
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_681033

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs:($
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
resource
�
G
+__inference_dropout_25_layer_call_fn_681763

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_25_layer_call_and_return_conditional_losses_681323d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2:S O
+
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_681113

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :������������������z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :������������������o
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :�������������������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:������������������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs:($
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
resource"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
O
conv1d_16_input<
!serving_default_conv1d_16_input:0���������2<
dense_170
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses
$axis
	%gamma
&beta
'moving_mean
(moving_variance"
_tf_keras_layer
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses
/_random_generator"
_tf_keras_layer
�
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

6kernel
7bias
 8_jit_compiled_convolution_op"
_tf_keras_layer
�
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses
?_random_generator"
_tf_keras_layer
�
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses
Faxis
	Ggamma
Hbeta
Imoving_mean
Jmoving_variance"
_tf_keras_layer
�
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
�
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses

]kernel
^bias"
_tf_keras_layer
�
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses
e_random_generator"
_tf_keras_layer
�
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses

lkernel
mbias"
_tf_keras_layer
�
0
1
%2
&3
'4
(5
66
77
G8
H9
I10
J11
]12
^13
l14
m15"
trackable_list_wrapper
v
0
1
%2
&3
64
75
G6
H7
]8
^9
l10
m11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
strace_0
ttrace_12�
-__inference_sequential_8_layer_call_fn_681390
-__inference_sequential_8_layer_call_fn_681427�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zstrace_0zttrace_1
�
utrace_0
vtrace_12�
H__inference_sequential_8_layer_call_and_return_conditional_losses_681291
H__inference_sequential_8_layer_call_and_return_conditional_losses_681353�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zutrace_0zvtrace_1
�B�
!__inference__wrapped_model_680979conv1d_16_input"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
w
_variables
x_iterations
y_learning_rate
z_index_dict
{
_momentums
|_velocities
}_update_step_xla"
experimentalOptimizer
,
~serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv1d_16_layer_call_fn_681607�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv1d_16_layer_call_and_return_conditional_losses_681622�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
&:$2conv1d_16/kernel
:2conv1d_16/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
%0
&1
'2
(3"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_16_layer_call_fn_681635
7__inference_batch_normalization_16_layer_call_fn_681648�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_681682
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_681702�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(2batch_normalization_16/gamma
):'2batch_normalization_16/beta
2:0 (2"batch_normalization_16/moving_mean
6:4 (2&batch_normalization_16/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_dropout_24_layer_call_fn_681707
+__inference_dropout_24_layer_call_fn_681712�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_dropout_24_layer_call_and_return_conditional_losses_681724
F__inference_dropout_24_layer_call_and_return_conditional_losses_681729�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv1d_17_layer_call_fn_681738�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv1d_17_layer_call_and_return_conditional_losses_681753�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
&:$2conv1d_17/kernel
:2conv1d_17/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_dropout_25_layer_call_fn_681758
+__inference_dropout_25_layer_call_fn_681763�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_dropout_25_layer_call_and_return_conditional_losses_681775
F__inference_dropout_25_layer_call_and_return_conditional_losses_681780�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
<
G0
H1
I2
J3"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_17_layer_call_fn_681793
7__inference_batch_normalization_17_layer_call_fn_681806�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_681840
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_681860�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(2batch_normalization_17/gamma
):'2batch_normalization_17/beta
2:0 (2"batch_normalization_17/moving_mean
6:4 (2&batch_normalization_17/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_max_pooling1d_8_layer_call_fn_681865�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
K__inference_max_pooling1d_8_layer_call_and_return_conditional_losses_681873�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_flatten_8_layer_call_fn_681878�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_flatten_8_layer_call_and_return_conditional_losses_681884�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
]0
^1"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_16_layer_call_fn_681893�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_16_layer_call_and_return_conditional_losses_681903�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
": 	�2dense_16/kernel
:2dense_16/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_dropout_26_layer_call_fn_681908
+__inference_dropout_26_layer_call_fn_681913�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_dropout_26_layer_call_and_return_conditional_losses_681925
F__inference_dropout_26_layer_call_and_return_conditional_losses_681930�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
l0
m1"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_17_layer_call_fn_681939�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_17_layer_call_and_return_conditional_losses_681949�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
!:2dense_17/kernel
:2dense_17/bias
<
'0
(1
I2
J3"
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
-__inference_sequential_8_layer_call_fn_681390conv1d_16_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
-__inference_sequential_8_layer_call_fn_681427conv1d_16_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_sequential_8_layer_call_and_return_conditional_losses_681291conv1d_16_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_sequential_8_layer_call_and_return_conditional_losses_681353conv1d_16_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
x0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11"
trackable_list_wrapper
�
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5
�trace_6
�trace_7
�trace_8
�trace_9
�trace_10
�trace_112�
#__inference__update_step_xla_681543
#__inference__update_step_xla_681548
#__inference__update_step_xla_681553
#__inference__update_step_xla_681558
#__inference__update_step_xla_681563
#__inference__update_step_xla_681568
#__inference__update_step_xla_681573
#__inference__update_step_xla_681578
#__inference__update_step_xla_681583
#__inference__update_step_xla_681588
#__inference__update_step_xla_681593
#__inference__update_step_xla_681598�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0z�trace_0z�trace_1z�trace_2z�trace_3z�trace_4z�trace_5z�trace_6z�trace_7z�trace_8z�trace_9z�trace_10z�trace_11
�B�
$__inference_signature_wrapper_681538conv1d_16_input"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 $

kwonlyargs�
jconv1d_16_input
kwonlydefaults
 
annotations� *
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
�B�
*__inference_conv1d_16_layer_call_fn_681607inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv1d_16_layer_call_and_return_conditional_losses_681622inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_batch_normalization_16_layer_call_fn_681635inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_batch_normalization_16_layer_call_fn_681648inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_681682inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_681702inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
+__inference_dropout_24_layer_call_fn_681707inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_dropout_24_layer_call_fn_681712inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_24_layer_call_and_return_conditional_losses_681724inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_24_layer_call_and_return_conditional_losses_681729inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
*__inference_conv1d_17_layer_call_fn_681738inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv1d_17_layer_call_and_return_conditional_losses_681753inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
+__inference_dropout_25_layer_call_fn_681758inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_dropout_25_layer_call_fn_681763inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_25_layer_call_and_return_conditional_losses_681775inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_25_layer_call_and_return_conditional_losses_681780inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_batch_normalization_17_layer_call_fn_681793inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_batch_normalization_17_layer_call_fn_681806inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_681840inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_681860inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
0__inference_max_pooling1d_8_layer_call_fn_681865inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_max_pooling1d_8_layer_call_and_return_conditional_losses_681873inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
*__inference_flatten_8_layer_call_fn_681878inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_flatten_8_layer_call_and_return_conditional_losses_681884inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
)__inference_dense_16_layer_call_fn_681893inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_16_layer_call_and_return_conditional_losses_681903inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
+__inference_dropout_26_layer_call_fn_681908inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_dropout_26_layer_call_fn_681913inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_26_layer_call_and_return_conditional_losses_681925inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_26_layer_call_and_return_conditional_losses_681930inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
)__inference_dense_17_layer_call_fn_681939inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_17_layer_call_and_return_conditional_losses_681949inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
+:)2Adam/m/conv1d_16/kernel
+:)2Adam/v/conv1d_16/kernel
!:2Adam/m/conv1d_16/bias
!:2Adam/v/conv1d_16/bias
/:-2#Adam/m/batch_normalization_16/gamma
/:-2#Adam/v/batch_normalization_16/gamma
.:,2"Adam/m/batch_normalization_16/beta
.:,2"Adam/v/batch_normalization_16/beta
+:)2Adam/m/conv1d_17/kernel
+:)2Adam/v/conv1d_17/kernel
!:2Adam/m/conv1d_17/bias
!:2Adam/v/conv1d_17/bias
/:-2#Adam/m/batch_normalization_17/gamma
/:-2#Adam/v/batch_normalization_17/gamma
.:,2"Adam/m/batch_normalization_17/beta
.:,2"Adam/v/batch_normalization_17/beta
':%	�2Adam/m/dense_16/kernel
':%	�2Adam/v/dense_16/kernel
 :2Adam/m/dense_16/bias
 :2Adam/v/dense_16/bias
&:$2Adam/m/dense_17/kernel
&:$2Adam/v/dense_17/kernel
 :2Adam/m/dense_17/bias
 :2Adam/v/dense_17/bias
�B�
#__inference__update_step_xla_681543gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_681548gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_681553gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_681558gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_681563gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_681568gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_681573gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_681578gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_681583gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_681588gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_681593gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_681598gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count�
#__inference__update_step_xla_681543vp�m
f�c
�
gradient
8�5	!�
�
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_681548f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_681553f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��˹��?
� "
 �
#__inference__update_step_xla_681558f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`�ʹ��?
� "
 �
#__inference__update_step_xla_681563vp�m
f�c
�
gradient
8�5	!�
�
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_681568f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_681573f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`�����?
� "
 �
#__inference__update_step_xla_681578f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_681583pj�g
`�]
�
gradient	�
5�2	�
�	�
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_681588f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_681593nh�e
^�[
�
gradient
4�1	�
�
�
p
` VariableSpec 
`������?
� "
 �
#__inference__update_step_xla_681598f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`������?
� "
 �
!__inference__wrapped_model_680979�(%'&67JGIH]^lm<�9
2�/
-�*
conv1d_16_input���������2
� "3�0
.
dense_17"�
dense_17����������
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_681682�'(%&D�A
:�7
-�*
inputs������������������
p

 
� "9�6
/�,
tensor_0������������������
� �
R__inference_batch_normalization_16_layer_call_and_return_conditional_losses_681702�(%'&D�A
:�7
-�*
inputs������������������
p 

 
� "9�6
/�,
tensor_0������������������
� �
7__inference_batch_normalization_16_layer_call_fn_681635|'(%&D�A
:�7
-�*
inputs������������������
p

 
� ".�+
unknown�������������������
7__inference_batch_normalization_16_layer_call_fn_681648|(%'&D�A
:�7
-�*
inputs������������������
p 

 
� ".�+
unknown�������������������
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_681840�IJGHD�A
:�7
-�*
inputs������������������
p

 
� "9�6
/�,
tensor_0������������������
� �
R__inference_batch_normalization_17_layer_call_and_return_conditional_losses_681860�JGIHD�A
:�7
-�*
inputs������������������
p 

 
� "9�6
/�,
tensor_0������������������
� �
7__inference_batch_normalization_17_layer_call_fn_681793|IJGHD�A
:�7
-�*
inputs������������������
p

 
� ".�+
unknown�������������������
7__inference_batch_normalization_17_layer_call_fn_681806|JGIHD�A
:�7
-�*
inputs������������������
p 

 
� ".�+
unknown�������������������
E__inference_conv1d_16_layer_call_and_return_conditional_losses_681622k3�0
)�&
$�!
inputs���������2
� "0�-
&�#
tensor_0���������2
� �
*__inference_conv1d_16_layer_call_fn_681607`3�0
)�&
$�!
inputs���������2
� "%�"
unknown���������2�
E__inference_conv1d_17_layer_call_and_return_conditional_losses_681753k673�0
)�&
$�!
inputs���������2
� "0�-
&�#
tensor_0���������2
� �
*__inference_conv1d_17_layer_call_fn_681738`673�0
)�&
$�!
inputs���������2
� "%�"
unknown���������2�
D__inference_dense_16_layer_call_and_return_conditional_losses_681903d]^0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������
� �
)__inference_dense_16_layer_call_fn_681893Y]^0�-
&�#
!�
inputs����������
� "!�
unknown����������
D__inference_dense_17_layer_call_and_return_conditional_losses_681949clm/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� �
)__inference_dense_17_layer_call_fn_681939Xlm/�,
%�"
 �
inputs���������
� "!�
unknown����������
F__inference_dropout_24_layer_call_and_return_conditional_losses_681724k7�4
-�*
$�!
inputs���������2
p
� "0�-
&�#
tensor_0���������2
� �
F__inference_dropout_24_layer_call_and_return_conditional_losses_681729k7�4
-�*
$�!
inputs���������2
p 
� "0�-
&�#
tensor_0���������2
� �
+__inference_dropout_24_layer_call_fn_681707`7�4
-�*
$�!
inputs���������2
p
� "%�"
unknown���������2�
+__inference_dropout_24_layer_call_fn_681712`7�4
-�*
$�!
inputs���������2
p 
� "%�"
unknown���������2�
F__inference_dropout_25_layer_call_and_return_conditional_losses_681775k7�4
-�*
$�!
inputs���������2
p
� "0�-
&�#
tensor_0���������2
� �
F__inference_dropout_25_layer_call_and_return_conditional_losses_681780k7�4
-�*
$�!
inputs���������2
p 
� "0�-
&�#
tensor_0���������2
� �
+__inference_dropout_25_layer_call_fn_681758`7�4
-�*
$�!
inputs���������2
p
� "%�"
unknown���������2�
+__inference_dropout_25_layer_call_fn_681763`7�4
-�*
$�!
inputs���������2
p 
� "%�"
unknown���������2�
F__inference_dropout_26_layer_call_and_return_conditional_losses_681925c3�0
)�&
 �
inputs���������
p
� ",�)
"�
tensor_0���������
� �
F__inference_dropout_26_layer_call_and_return_conditional_losses_681930c3�0
)�&
 �
inputs���������
p 
� ",�)
"�
tensor_0���������
� �
+__inference_dropout_26_layer_call_fn_681908X3�0
)�&
 �
inputs���������
p
� "!�
unknown����������
+__inference_dropout_26_layer_call_fn_681913X3�0
)�&
 �
inputs���������
p 
� "!�
unknown����������
E__inference_flatten_8_layer_call_and_return_conditional_losses_681884d3�0
)�&
$�!
inputs���������
� "-�*
#� 
tensor_0����������
� �
*__inference_flatten_8_layer_call_fn_681878Y3�0
)�&
$�!
inputs���������
� ""�
unknown�����������
K__inference_max_pooling1d_8_layer_call_and_return_conditional_losses_681873�E�B
;�8
6�3
inputs'���������������������������
� "B�?
8�5
tensor_0'���������������������������
� �
0__inference_max_pooling1d_8_layer_call_fn_681865�E�B
;�8
6�3
inputs'���������������������������
� "7�4
unknown'����������������������������
H__inference_sequential_8_layer_call_and_return_conditional_losses_681291�'(%&67IJGH]^lmD�A
:�7
-�*
conv1d_16_input���������2
p

 
� ",�)
"�
tensor_0���������
� �
H__inference_sequential_8_layer_call_and_return_conditional_losses_681353�(%'&67JGIH]^lmD�A
:�7
-�*
conv1d_16_input���������2
p 

 
� ",�)
"�
tensor_0���������
� �
-__inference_sequential_8_layer_call_fn_681390{'(%&67IJGH]^lmD�A
:�7
-�*
conv1d_16_input���������2
p

 
� "!�
unknown����������
-__inference_sequential_8_layer_call_fn_681427{(%'&67JGIH]^lmD�A
:�7
-�*
conv1d_16_input���������2
p 

 
� "!�
unknown����������
$__inference_signature_wrapper_681538�(%'&67JGIH]^lmO�L
� 
E�B
@
conv1d_16_input-�*
conv1d_16_input���������2"3�0
.
dense_17"�
dense_17���������