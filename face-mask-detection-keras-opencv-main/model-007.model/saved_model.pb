░є
М▌
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
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
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
В
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
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
E
Relu
features"T
activations"T"
Ttype:
2	
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
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
┴
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
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68Ж▒

conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*
shared_nameconv2d/kernel
x
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*'
_output_shapes
:╚*
dtype0
o
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*
shared_nameconv2d/bias
h
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes	
:╚*
dtype0
Г
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚d* 
shared_nameconv2d_1/kernel
|
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*'
_output_shapes
:╚d*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:d*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
дЭ2*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
дЭ2*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:2*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:2*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
Н
Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*%
shared_nameAdam/conv2d/kernel/m
Ж
(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*'
_output_shapes
:╚*
dtype0
}
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*#
shared_nameAdam/conv2d/bias/m
v
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes	
:╚*
dtype0
С
Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚d*'
shared_nameAdam/conv2d_1/kernel/m
К
*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*'
_output_shapes
:╚d*
dtype0
А
Adam/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/conv2d_1/bias/m
y
(Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/m*
_output_shapes
:d*
dtype0
Д
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
дЭ2*$
shared_nameAdam/dense/kernel/m
}
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m* 
_output_shapes
:
дЭ2*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:2*
dtype0
Ж
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:2*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
Н
Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*%
shared_nameAdam/conv2d/kernel/v
Ж
(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*'
_output_shapes
:╚*
dtype0
}
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*#
shared_nameAdam/conv2d/bias/v
v
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes	
:╚*
dtype0
С
Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚d*'
shared_nameAdam/conv2d_1/kernel/v
К
*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*'
_output_shapes
:╚d*
dtype0
А
Adam/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/conv2d_1/bias/v
y
(Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/v*
_output_shapes
:d*
dtype0
Д
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
дЭ2*$
shared_nameAdam/dense/kernel/v
}
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v* 
_output_shapes
:
дЭ2*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:2*
dtype0
Ж
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:2*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
╗N
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ЎM
valueьMBщM BтM
╢
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer_with_weights-3

layer-9
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
ж

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
О
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses* 
О
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses* 
ж

(kernel
)bias
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses*
О
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses* 
О
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses* 
О
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses* 
е
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F_random_generator
G__call__
*H&call_and_return_all_conditional_losses* 
ж

Ikernel
Jbias
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses*
ж

Qkernel
Rbias
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses*
ф
Yiter

Zbeta_1

[beta_2
	\decay
]learning_ratemбmв(mг)mдImеJmжQmзRmиvйvк(vл)vмIvнJvоQvпRv░*
<
0
1
(2
)3
I4
J5
Q6
R7*
<
0
1
(2
)3
I4
J5
Q6
R7*
* 
░
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

cserving_default* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
У
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
С
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
С
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

(0
)1*

(0
)1*
* 
У
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
С
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
У
}non_trainable_variables

~layers
metrics
 Аlayer_regularization_losses
Бlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Ц
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Ц
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses* 
* 
* 
* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

I0
J1*

I0
J1*
* 
Ш
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

Q0
R1*

Q0
R1*
* 
Ш
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
J
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
9*

Ц0
Ч1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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

Шtotal

Щcount
Ъ	variables
Ы	keras_api*
M

Ьtotal

Эcount
Ю
_fn_kwargs
Я	variables
а	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Ш0
Щ1*

Ъ	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

Ь0
Э1*

Я	variables*
Аz
VARIABLE_VALUEAdam/conv2d/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv2d/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/conv2d_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/conv2d/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/conv2d/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/conv2d_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
П
serving_default_conv2d_inputPlaceholder*/
_output_shapes
:         dd*
dtype0*$
shape:         dd
╣
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_inputconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference_signature_wrapper_8377
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
 
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp&Adam/conv2d/bias/m/Read/ReadVariableOp*Adam/conv2d_1/kernel/m/Read/ReadVariableOp(Adam/conv2d_1/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp&Adam/conv2d/bias/v/Read/ReadVariableOp*Adam/conv2d_1/kernel/v/Read/ReadVariableOp(Adam/conv2d_1/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *&
f!R
__inference__traced_save_8655
ц
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d/kernel/mAdam/conv2d/bias/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__traced_restore_8764ўМ
╝
У
&__inference_dense_1_layer_call_fn_8522

inputs
unknown:2
	unknown_0:
identityИвStatefulPartitionedCall╓
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_7965o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
ъ
b
F__inference_activation_1_layer_call_and_return_conditional_losses_7919

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:         //db
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         //d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         //d:W S
/
_output_shapes
:         //d
 
_user_specified_nameinputs
ї	
╙
)__inference_sequential_layer_call_fn_8165
conv2d_input"
unknown:╚
	unknown_0:	╚$
	unknown_1:╚d
	unknown_2:d
	unknown_3:
дЭ2
	unknown_4:2
	unknown_5:2
	unknown_6:
identityИвStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_8125o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         dd: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:         dd
&
_user_specified_nameconv2d_input
┬*
╕
D__inference_sequential_layer_call_and_return_conditional_losses_8310

inputs@
%conv2d_conv2d_readvariableop_resource:╚5
&conv2d_biasadd_readvariableop_resource:	╚B
'conv2d_1_conv2d_readvariableop_resource:╚d6
(conv2d_1_biasadd_readvariableop_resource:d8
$dense_matmul_readvariableop_resource:
дЭ23
%dense_biasadd_readvariableop_resource:28
&dense_1_matmul_readvariableop_resource:25
'dense_1_biasadd_readvariableop_resource:
identityИвconv2d/BiasAdd/ReadVariableOpвconv2d/Conv2D/ReadVariableOpвconv2d_1/BiasAdd/ReadVariableOpвconv2d_1/Conv2D/ReadVariableOpвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpЛ
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*'
_output_shapes
:╚*
dtype0й
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         bb╚*
paddingVALID*
strides
Б
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0У
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         bb╚k
activation/ReluReluconv2d/BiasAdd:output:0*
T0*0
_output_shapes
:         bb╚н
max_pooling2d/MaxPoolMaxPoolactivation/Relu:activations:0*0
_output_shapes
:         11╚*
ksize
*
paddingVALID*
strides
П
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:╚d*
dtype0─
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         //d*
paddingVALID*
strides
Д
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0Ш
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         //dn
activation_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         //d░
max_pooling2d_1/MaxPoolMaxPoolactivation_1/Relu:activations:0*/
_output_shapes
:         d*
ksize
*
paddingVALID*
strides
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    д╬  И
flatten/ReshapeReshape max_pooling2d_1/MaxPool:output:0flatten/Const:output:0*
T0*)
_output_shapes
:         дЭj
dropout/IdentityIdentityflatten/Reshape:output:0*
T0*)
_output_shapes
:         дЭВ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
дЭ2*
dtype0И
dense/MatMulMatMuldropout/Identity:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0И
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:         2Д
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0Л
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ╞
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         dd: : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:         dd
 
_user_specified_nameinputs
ь
`
D__inference_activation_layer_call_and_return_conditional_losses_7895

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:         bb╚c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         bb╚"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         bb╚:X T
0
_output_shapes
:         bb╚
 
_user_specified_nameinputs
ё
_
&__inference_dropout_layer_call_fn_8476

inputs
identityИвStatefulPartitionedCall╛
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         дЭ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_8031q
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*)
_output_shapes
:         дЭ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         дЭ22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:         дЭ
 
_user_specified_nameinputs
С
e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_7864

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
л
B
&__inference_flatten_layer_call_fn_8460

inputs
identityо
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         дЭ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_7928b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:         дЭ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         d:W S
/
_output_shapes
:         d
 
_user_specified_nameinputs
щ2
╔
__inference__wrapped_model_7843
conv2d_inputK
0sequential_conv2d_conv2d_readvariableop_resource:╚@
1sequential_conv2d_biasadd_readvariableop_resource:	╚M
2sequential_conv2d_1_conv2d_readvariableop_resource:╚dA
3sequential_conv2d_1_biasadd_readvariableop_resource:dC
/sequential_dense_matmul_readvariableop_resource:
дЭ2>
0sequential_dense_biasadd_readvariableop_resource:2C
1sequential_dense_1_matmul_readvariableop_resource:2@
2sequential_dense_1_biasadd_readvariableop_resource:
identityИв(sequential/conv2d/BiasAdd/ReadVariableOpв'sequential/conv2d/Conv2D/ReadVariableOpв*sequential/conv2d_1/BiasAdd/ReadVariableOpв)sequential/conv2d_1/Conv2D/ReadVariableOpв'sequential/dense/BiasAdd/ReadVariableOpв&sequential/dense/MatMul/ReadVariableOpв)sequential/dense_1/BiasAdd/ReadVariableOpв(sequential/dense_1/MatMul/ReadVariableOpб
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*'
_output_shapes
:╚*
dtype0┼
sequential/conv2d/Conv2DConv2Dconv2d_input/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         bb╚*
paddingVALID*
strides
Ч
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0┤
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         bb╚Б
sequential/activation/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*0
_output_shapes
:         bb╚├
 sequential/max_pooling2d/MaxPoolMaxPool(sequential/activation/Relu:activations:0*0
_output_shapes
:         11╚*
ksize
*
paddingVALID*
strides
е
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:╚d*
dtype0х
sequential/conv2d_1/Conv2DConv2D)sequential/max_pooling2d/MaxPool:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         //d*
paddingVALID*
strides
Ъ
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0╣
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         //dД
sequential/activation_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         //d╞
"sequential/max_pooling2d_1/MaxPoolMaxPool*sequential/activation_1/Relu:activations:0*/
_output_shapes
:         d*
ksize
*
paddingVALID*
strides
i
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    д╬  й
sequential/flatten/ReshapeReshape+sequential/max_pooling2d_1/MaxPool:output:0!sequential/flatten/Const:output:0*
T0*)
_output_shapes
:         дЭА
sequential/dropout/IdentityIdentity#sequential/flatten/Reshape:output:0*
T0*)
_output_shapes
:         дЭШ
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
дЭ2*
dtype0й
sequential/dense/MatMulMatMul$sequential/dropout/Identity:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2Ф
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0й
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2r
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:         2Ъ
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0м
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ш
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0п
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         |
sequential/dense_1/SoftmaxSoftmax#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         s
IdentityIdentity$sequential/dense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         Ю
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         dd: : : : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp:] Y
/
_output_shapes
:         dd
&
_user_specified_nameconv2d_input
▄
_
A__inference_dropout_layer_call_and_return_conditional_losses_7935

inputs

identity_1P
IdentityIdentityinputs*
T0*)
_output_shapes
:         дЭ]

Identity_1IdentityIdentity:output:0*
T0*)
_output_shapes
:         дЭ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         дЭ:Q M
)
_output_shapes
:         дЭ
 
_user_specified_nameinputs
■Г
у
 __inference__traced_restore_8764
file_prefix9
assignvariableop_conv2d_kernel:╚-
assignvariableop_1_conv2d_bias:	╚=
"assignvariableop_2_conv2d_1_kernel:╚d.
 assignvariableop_3_conv2d_1_bias:d3
assignvariableop_4_dense_kernel:
дЭ2+
assignvariableop_5_dense_bias:23
!assignvariableop_6_dense_1_kernel:2-
assignvariableop_7_dense_1_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: C
(assignvariableop_17_adam_conv2d_kernel_m:╚5
&assignvariableop_18_adam_conv2d_bias_m:	╚E
*assignvariableop_19_adam_conv2d_1_kernel_m:╚d6
(assignvariableop_20_adam_conv2d_1_bias_m:d;
'assignvariableop_21_adam_dense_kernel_m:
дЭ23
%assignvariableop_22_adam_dense_bias_m:2;
)assignvariableop_23_adam_dense_1_kernel_m:25
'assignvariableop_24_adam_dense_1_bias_m:C
(assignvariableop_25_adam_conv2d_kernel_v:╚5
&assignvariableop_26_adam_conv2d_bias_v:	╚E
*assignvariableop_27_adam_conv2d_1_kernel_v:╚d6
(assignvariableop_28_adam_conv2d_1_bias_v:d;
'assignvariableop_29_adam_dense_kernel_v:
дЭ23
%assignvariableop_30_adam_dense_bias_v:2;
)assignvariableop_31_adam_dense_1_kernel_v:25
'assignvariableop_32_adam_dense_1_bias_v:
identity_34ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9▓
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*╪
value╬B╦"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH┤
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ╦
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ю
_output_shapesЛ
И::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:Л
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_conv2d_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_conv2d_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_conv2d_1_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_conv2d_1_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_21AssignVariableOp'assignvariableop_21_adam_dense_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_22AssignVariableOp%assignvariableop_22_adam_dense_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_1_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_1_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_conv2d_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_26AssignVariableOp&assignvariableop_26_adam_conv2d_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_conv2d_1_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_conv2d_1_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_dense_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_30AssignVariableOp%assignvariableop_30_adam_dense_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_dense_1_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_dense_1_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 е
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: Т
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_32AssignVariableOp_322(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Э

Є
A__inference_dense_1_layer_call_and_return_conditional_losses_8533

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
 	
`
A__inference_dropout_layer_call_and_return_conditional_losses_8031

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @f
dropout/MulMulinputsdropout/Const:output:0*
T0*)
_output_shapes
:         дЭC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:О
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*)
_output_shapes
:         дЭ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?и
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:         дЭq
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*)
_output_shapes
:         дЭk
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*)
_output_shapes
:         дЭ[
IdentityIdentitydropout/Mul_1:z:0*
T0*)
_output_shapes
:         дЭ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         дЭ:Q M
)
_output_shapes
:         дЭ
 
_user_specified_nameinputs
л

√
@__inference_conv2d_layer_call_and_return_conditional_losses_8396

inputs9
conv2d_readvariableop_resource:╚.
biasadd_readvariableop_resource:	╚
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:╚*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         bb╚*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         bb╚h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         bb╚w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         dd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         dd
 
_user_specified_nameinputs
╢F
Ъ
__inference__traced_save_8655
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableop5
1savev2_adam_conv2d_1_kernel_m_read_readvariableop3
/savev2_adam_conv2d_1_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableop5
1savev2_adam_conv2d_1_kernel_v_read_readvariableop3
/savev2_adam_conv2d_1_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
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
: п
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*╪
value╬B╦"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH▒
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ¤
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop1savev2_adam_conv2d_1_kernel_m_read_readvariableop/savev2_adam_conv2d_1_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop1savev2_adam_conv2d_1_kernel_v_read_readvariableop/savev2_adam_conv2d_1_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*к
_input_shapesШ
Х: :╚:╚:╚d:d:
дЭ2:2:2:: : : : : : : : : :╚:╚:╚d:d:
дЭ2:2:2::╚:╚:╚d:d:
дЭ2:2:2:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:-)
'
_output_shapes
:╚:!

_output_shapes	
:╚:-)
'
_output_shapes
:╚d: 

_output_shapes
:d:&"
 
_output_shapes
:
дЭ2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:╚:!

_output_shapes	
:╚:-)
'
_output_shapes
:╚d: 

_output_shapes
:d:&"
 
_output_shapes
:
дЭ2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::-)
'
_output_shapes
:╚:!

_output_shapes	
:╚:-)
'
_output_shapes
:╚d: 

_output_shapes
:d:&"
 
_output_shapes
:
дЭ2: 

_output_shapes
:2:$  

_output_shapes

:2: !

_output_shapes
::"

_output_shapes
: 
▄
_
A__inference_dropout_layer_call_and_return_conditional_losses_8481

inputs

identity_1P
IdentityIdentityinputs*
T0*)
_output_shapes
:         дЭ]

Identity_1IdentityIdentity:output:0*
T0*)
_output_shapes
:         дЭ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         дЭ:Q M
)
_output_shapes
:         дЭ
 
_user_specified_nameinputs
П
c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_8416

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┼
]
A__inference_flatten_layer_call_and_return_conditional_losses_8466

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    д╬  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         дЭZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         дЭ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         d:W S
/
_output_shapes
:         d
 
_user_specified_nameinputs
В'
ъ
D__inference_sequential_layer_call_and_return_conditional_losses_7972

inputs&
conv2d_7885:╚
conv2d_7887:	╚(
conv2d_1_7909:╚d
conv2d_1_7911:d

dense_7949:
дЭ2

dense_7951:2
dense_1_7966:2
dense_1_7968:
identityИвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallы
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_7885conv2d_7887*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         bb╚*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_7884ф
activation/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         bb╚* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_7895ц
max_pooling2d/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         11╚* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_7852Т
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_7909conv2d_1_7911*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         //d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_7908щ
activation_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         //d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_7919ы
max_pooling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_7864╪
flatten/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         дЭ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_7928╨
dropout/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         дЭ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_7935°
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0
dense_7949
dense_7951*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_7948Ж
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_7966dense_1_7968*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_7965w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╠
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         dd: : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:W S
/
_output_shapes
:         dd
 
_user_specified_nameinputs
╛
У
$__inference_dense_layer_call_fn_8502

inputs
unknown:
дЭ2
	unknown_0:2
identityИвStatefulPartitionedCall╘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_7948o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         дЭ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:         дЭ
 
_user_specified_nameinputs
С
e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_8455

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ц
Ь
%__inference_conv2d_layer_call_fn_8386

inputs"
unknown:╚
	unknown_0:	╚
identityИвStatefulPartitionedCall▐
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         bb╚*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_7884x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         bb╚`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         dd: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         dd
 
_user_specified_nameinputs
Э

Є
A__inference_dense_1_layer_call_and_return_conditional_losses_7965

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
Я
B
&__inference_dropout_layer_call_fn_8471

inputs
identityо
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         дЭ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_7935b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:         дЭ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         дЭ:Q M
)
_output_shapes
:         дЭ
 
_user_specified_nameinputs
щ
Э
'__inference_conv2d_1_layer_call_fn_8425

inputs"
unknown:╚d
	unknown_0:d
identityИвStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         //d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_7908w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         //d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         11╚: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         11╚
 
_user_specified_nameinputs
ь
`
D__inference_activation_layer_call_and_return_conditional_losses_8406

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:         bb╚c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         bb╚"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         bb╚:X T
0
_output_shapes
:         bb╚
 
_user_specified_nameinputs
ї	
╙
)__inference_sequential_layer_call_fn_7991
conv2d_input"
unknown:╚
	unknown_0:	╚$
	unknown_1:╚d
	unknown_2:d
	unknown_3:
дЭ2
	unknown_4:2
	unknown_5:2
	unknown_6:
identityИвStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_7972o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         dd: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:         dd
&
_user_specified_nameconv2d_input
л

√
@__inference_conv2d_layer_call_and_return_conditional_losses_7884

inputs9
conv2d_readvariableop_resource:╚.
biasadd_readvariableop_resource:	╚
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:╚*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         bb╚*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         bb╚h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         bb╚w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         dd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         dd
 
_user_specified_nameinputs
к

№
B__inference_conv2d_1_layer_call_and_return_conditional_losses_7908

inputs9
conv2d_readvariableop_resource:╚d-
biasadd_readvariableop_resource:d
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:╚d*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         //d*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         //dg
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         //dw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         11╚: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         11╚
 
_user_specified_nameinputs
 	
`
A__inference_dropout_layer_call_and_return_conditional_losses_8493

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @f
dropout/MulMulinputsdropout/Const:output:0*
T0*)
_output_shapes
:         дЭC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:О
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*)
_output_shapes
:         дЭ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?и
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:         дЭq
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*)
_output_shapes
:         дЭk
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*)
_output_shapes
:         дЭ[
IdentityIdentitydropout/Mul_1:z:0*
T0*)
_output_shapes
:         дЭ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         дЭ:Q M
)
_output_shapes
:         дЭ
 
_user_specified_nameinputs
╔	
╠
"__inference_signature_wrapper_8377
conv2d_input"
unknown:╚
	unknown_0:	╚$
	unknown_1:╚d
	unknown_2:d
	unknown_3:
дЭ2
	unknown_4:2
	unknown_5:2
	unknown_6:
identityИвStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__wrapped_model_7843o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         dd: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:         dd
&
_user_specified_nameconv2d_input
я1
╕
D__inference_sequential_layer_call_and_return_conditional_losses_8354

inputs@
%conv2d_conv2d_readvariableop_resource:╚5
&conv2d_biasadd_readvariableop_resource:	╚B
'conv2d_1_conv2d_readvariableop_resource:╚d6
(conv2d_1_biasadd_readvariableop_resource:d8
$dense_matmul_readvariableop_resource:
дЭ23
%dense_biasadd_readvariableop_resource:28
&dense_1_matmul_readvariableop_resource:25
'dense_1_biasadd_readvariableop_resource:
identityИвconv2d/BiasAdd/ReadVariableOpвconv2d/Conv2D/ReadVariableOpвconv2d_1/BiasAdd/ReadVariableOpвconv2d_1/Conv2D/ReadVariableOpвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpЛ
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*'
_output_shapes
:╚*
dtype0й
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         bb╚*
paddingVALID*
strides
Б
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0У
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         bb╚k
activation/ReluReluconv2d/BiasAdd:output:0*
T0*0
_output_shapes
:         bb╚н
max_pooling2d/MaxPoolMaxPoolactivation/Relu:activations:0*0
_output_shapes
:         11╚*
ksize
*
paddingVALID*
strides
П
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:╚d*
dtype0─
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         //d*
paddingVALID*
strides
Д
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0Ш
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         //dn
activation_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         //d░
max_pooling2d_1/MaxPoolMaxPoolactivation_1/Relu:activations:0*/
_output_shapes
:         d*
ksize
*
paddingVALID*
strides
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    д╬  И
flatten/ReshapeReshape max_pooling2d_1/MaxPool:output:0flatten/Const:output:0*
T0*)
_output_shapes
:         дЭZ
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @И
dropout/dropout/MulMulflatten/Reshape:output:0dropout/dropout/Const:output:0*
T0*)
_output_shapes
:         дЭ]
dropout/dropout/ShapeShapeflatten/Reshape:output:0*
T0*
_output_shapes
:Ю
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*)
_output_shapes
:         дЭ*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?└
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:         дЭБ
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*)
_output_shapes
:         дЭГ
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*)
_output_shapes
:         дЭВ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
дЭ2*
dtype0И
dense/MatMulMatMuldropout/dropout/Mul_1:z:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0И
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:         2Д
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0Л
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ╞
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         dd: : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:         dd
 
_user_specified_nameinputs
П
c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_7852

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
у	
═
)__inference_sequential_layer_call_fn_8252

inputs"
unknown:╚
	unknown_0:	╚$
	unknown_1:╚d
	unknown_2:d
	unknown_3:
дЭ2
	unknown_4:2
	unknown_5:2
	unknown_6:
identityИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_7972o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         dd: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         dd
 
_user_specified_nameinputs
у	
═
)__inference_sequential_layer_call_fn_8273

inputs"
unknown:╚
	unknown_0:	╚$
	unknown_1:╚d
	unknown_2:d
	unknown_3:
дЭ2
	unknown_4:2
	unknown_5:2
	unknown_6:
identityИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_8125o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         dd: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         dd
 
_user_specified_nameinputs
Ю

Є
?__inference_dense_layer_call_and_return_conditional_losses_7948

inputs2
matmul_readvariableop_resource:
дЭ2-
biasadd_readvariableop_resource:2
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
дЭ2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         дЭ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         дЭ
 
_user_specified_nameinputs
в(
М
D__inference_sequential_layer_call_and_return_conditional_losses_8125

inputs&
conv2d_8098:╚
conv2d_8100:	╚(
conv2d_1_8105:╚d
conv2d_1_8107:d

dense_8114:
дЭ2

dense_8116:2
dense_1_8119:2
dense_1_8121:
identityИвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdropout/StatefulPartitionedCallы
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_8098conv2d_8100*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         bb╚*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_7884ф
activation/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         bb╚* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_7895ц
max_pooling2d/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         11╚* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_7852Т
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_8105conv2d_1_8107*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         //d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_7908щ
activation_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         //d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_7919ы
max_pooling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_7864╪
flatten/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         дЭ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_7928р
dropout/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         дЭ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_8031А
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0
dense_8114
dense_8116*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_7948Ж
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_8119dense_1_8121*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_7965w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ю
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         dd: : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:W S
/
_output_shapes
:         dd
 
_user_specified_nameinputs
┴
E
)__inference_activation_layer_call_fn_8401

inputs
identity╕
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         bb╚* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_7895i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         bb╚"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         bb╚:X T
0
_output_shapes
:         bb╚
 
_user_specified_nameinputs
к

№
B__inference_conv2d_1_layer_call_and_return_conditional_losses_8435

inputs9
conv2d_readvariableop_resource:╚d-
biasadd_readvariableop_resource:d
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:╚d*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         //d*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         //dg
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         //dw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         11╚: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         11╚
 
_user_specified_nameinputs
┴
G
+__inference_activation_1_layer_call_fn_8440

inputs
identity╣
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         //d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_7919h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         //d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         //d:W S
/
_output_shapes
:         //d
 
_user_specified_nameinputs
Ф'
Ё
D__inference_sequential_layer_call_and_return_conditional_losses_8195
conv2d_input&
conv2d_8168:╚
conv2d_8170:	╚(
conv2d_1_8175:╚d
conv2d_1_8177:d

dense_8184:
дЭ2

dense_8186:2
dense_1_8189:2
dense_1_8191:
identityИвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallё
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_8168conv2d_8170*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         bb╚*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_7884ф
activation/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         bb╚* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_7895ц
max_pooling2d/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         11╚* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_7852Т
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_8175conv2d_1_8177*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         //d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_7908щ
activation_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         //d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_7919ы
max_pooling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_7864╪
flatten/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         дЭ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_7928╨
dropout/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         дЭ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_7935°
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0
dense_8184
dense_8186*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_7948Ж
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_8189dense_1_8191*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_7965w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╠
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         dd: : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:] Y
/
_output_shapes
:         dd
&
_user_specified_nameconv2d_input
┼
]
A__inference_flatten_layer_call_and_return_conditional_losses_7928

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    д╬  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         дЭZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         дЭ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         d:W S
/
_output_shapes
:         d
 
_user_specified_nameinputs
┤(
Т
D__inference_sequential_layer_call_and_return_conditional_losses_8225
conv2d_input&
conv2d_8198:╚
conv2d_8200:	╚(
conv2d_1_8205:╚d
conv2d_1_8207:d

dense_8214:
дЭ2

dense_8216:2
dense_1_8219:2
dense_1_8221:
identityИвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdropout/StatefulPartitionedCallё
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_8198conv2d_8200*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         bb╚*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_7884ф
activation/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         bb╚* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_7895ц
max_pooling2d/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         11╚* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_7852Т
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_8205conv2d_1_8207*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         //d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_7908щ
activation_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         //d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_activation_1_layer_call_and_return_conditional_losses_7919ы
max_pooling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_7864╪
flatten/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         дЭ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_7928р
dropout/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         дЭ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_8031А
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0
dense_8214
dense_8216*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_7948Ж
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_8219dense_1_8221*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_7965w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ю
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         dd: : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:] Y
/
_output_shapes
:         dd
&
_user_specified_nameconv2d_input
░
H
,__inference_max_pooling2d_layer_call_fn_8411

inputs
identity╒
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_7852Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ъ
b
F__inference_activation_1_layer_call_and_return_conditional_losses_8445

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:         //db
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         //d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         //d:W S
/
_output_shapes
:         //d
 
_user_specified_nameinputs
Ю

Є
?__inference_dense_layer_call_and_return_conditional_losses_8513

inputs2
matmul_readvariableop_resource:
дЭ2-
biasadd_readvariableop_resource:2
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
дЭ2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         дЭ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         дЭ
 
_user_specified_nameinputs
┤
J
.__inference_max_pooling2d_1_layer_call_fn_8450

inputs
identity╫
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_7864Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs"█L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╝
serving_defaultи
M
conv2d_input=
serving_default_conv2d_input:0         dd;
dense_10
StatefulPartitionedCall:0         tensorflow/serving/predict:ем
╨
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer_with_weights-3

layer-9
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
╗

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
е
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_layer
е
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

(kernel
)bias
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses"
_tf_keras_layer
е
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses"
_tf_keras_layer
е
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses"
_tf_keras_layer
е
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses"
_tf_keras_layer
╝
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F_random_generator
G__call__
*H&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

Ikernel
Jbias
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

Qkernel
Rbias
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses"
_tf_keras_layer
є
Yiter

Zbeta_1

[beta_2
	\decay
]learning_ratemбmв(mг)mдImеJmжQmзRmиvйvк(vл)vмIvнJvоQvпRv░"
	optimizer
X
0
1
(2
)3
I4
J5
Q6
R7"
trackable_list_wrapper
X
0
1
(2
)3
I4
J5
Q6
R7"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Є2я
)__inference_sequential_layer_call_fn_7991
)__inference_sequential_layer_call_fn_8252
)__inference_sequential_layer_call_fn_8273
)__inference_sequential_layer_call_fn_8165└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
▐2█
D__inference_sequential_layer_call_and_return_conditional_losses_8310
D__inference_sequential_layer_call_and_return_conditional_losses_8354
D__inference_sequential_layer_call_and_return_conditional_losses_8195
D__inference_sequential_layer_call_and_return_conditional_losses_8225└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╧B╠
__inference__wrapped_model_7843conv2d_input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
,
cserving_default"
signature_map
(:&╚2conv2d/kernel
:╚2conv2d/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╧2╠
%__inference_conv2d_layer_call_fn_8386в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
ъ2ч
@__inference_conv2d_layer_call_and_return_conditional_losses_8396в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
╙2╨
)__inference_activation_layer_call_fn_8401в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
ю2ы
D__inference_activation_layer_call_and_return_conditional_losses_8406в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
╓2╙
,__inference_max_pooling2d_layer_call_fn_8411в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
ё2ю
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_8416в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
*:(╚d2conv2d_1/kernel
:d2conv2d_1/bias
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
╤2╬
'__inference_conv2d_1_layer_call_fn_8425в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
ь2щ
B__inference_conv2d_1_layer_call_and_return_conditional_losses_8435в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
╒2╥
+__inference_activation_1_layer_call_fn_8440в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
Ё2э
F__inference_activation_1_layer_call_and_return_conditional_losses_8445в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
п
}non_trainable_variables

~layers
metrics
 Аlayer_regularization_losses
Бlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
╪2╒
.__inference_max_pooling2d_1_layer_call_fn_8450в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
є2Ё
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_8455в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
╨2═
&__inference_flatten_layer_call_fn_8460в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
ы2ш
A__inference_flatten_layer_call_and_return_conditional_losses_8466в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
К2З
&__inference_dropout_layer_call_fn_8471
&__inference_dropout_layer_call_fn_8476┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
└2╜
A__inference_dropout_layer_call_and_return_conditional_losses_8481
A__inference_dropout_layer_call_and_return_conditional_losses_8493┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
 :
дЭ22dense/kernel
:22
dense/bias
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
╬2╦
$__inference_dense_layer_call_fn_8502в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
щ2ц
?__inference_dense_layer_call_and_return_conditional_losses_8513в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
 :22dense_1/kernel
:2dense_1/bias
.
Q0
R1"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
╨2═
&__inference_dense_1_layer_call_fn_8522в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
ы2ш
A__inference_dense_1_layer_call_and_return_conditional_losses_8533в
Щ▓Х
FullArgSpec
argsЪ
jself
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
annotationsк *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
f
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
9"
trackable_list_wrapper
0
Ц0
Ч1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╬B╦
"__inference_signature_wrapper_8377conv2d_input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
R

Шtotal

Щcount
Ъ	variables
Ы	keras_api"
_tf_keras_metric
c

Ьtotal

Эcount
Ю
_fn_kwargs
Я	variables
а	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
Ш0
Щ1"
trackable_list_wrapper
.
Ъ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Ь0
Э1"
trackable_list_wrapper
.
Я	variables"
_generic_user_object
-:+╚2Adam/conv2d/kernel/m
:╚2Adam/conv2d/bias/m
/:-╚d2Adam/conv2d_1/kernel/m
 :d2Adam/conv2d_1/bias/m
%:#
дЭ22Adam/dense/kernel/m
:22Adam/dense/bias/m
%:#22Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
-:+╚2Adam/conv2d/kernel/v
:╚2Adam/conv2d/bias/v
/:-╚d2Adam/conv2d_1/kernel/v
 :d2Adam/conv2d_1/bias/v
%:#
дЭ22Adam/dense/kernel/v
:22Adam/dense/bias/v
%:#22Adam/dense_1/kernel/v
:2Adam/dense_1/bias/vЯ
__inference__wrapped_model_7843|()IJQR=в:
3в0
.К+
conv2d_input         dd
к "1к.
,
dense_1!К
dense_1         ▓
F__inference_activation_1_layer_call_and_return_conditional_losses_8445h7в4
-в*
(К%
inputs         //d
к "-в*
#К 
0         //d
Ъ К
+__inference_activation_1_layer_call_fn_8440[7в4
-в*
(К%
inputs         //d
к " К         //d▓
D__inference_activation_layer_call_and_return_conditional_losses_8406j8в5
.в+
)К&
inputs         bb╚
к ".в+
$К!
0         bb╚
Ъ К
)__inference_activation_layer_call_fn_8401]8в5
.в+
)К&
inputs         bb╚
к "!К         bb╚│
B__inference_conv2d_1_layer_call_and_return_conditional_losses_8435m()8в5
.в+
)К&
inputs         11╚
к "-в*
#К 
0         //d
Ъ Л
'__inference_conv2d_1_layer_call_fn_8425`()8в5
.в+
)К&
inputs         11╚
к " К         //d▒
@__inference_conv2d_layer_call_and_return_conditional_losses_8396m7в4
-в*
(К%
inputs         dd
к ".в+
$К!
0         bb╚
Ъ Й
%__inference_conv2d_layer_call_fn_8386`7в4
-в*
(К%
inputs         dd
к "!К         bb╚б
A__inference_dense_1_layer_call_and_return_conditional_losses_8533\QR/в,
%в"
 К
inputs         2
к "%в"
К
0         
Ъ y
&__inference_dense_1_layer_call_fn_8522OQR/в,
%в"
 К
inputs         2
к "К         б
?__inference_dense_layer_call_and_return_conditional_losses_8513^IJ1в.
'в$
"К
inputs         дЭ
к "%в"
К
0         2
Ъ y
$__inference_dense_layer_call_fn_8502QIJ1в.
'в$
"К
inputs         дЭ
к "К         2е
A__inference_dropout_layer_call_and_return_conditional_losses_8481`5в2
+в(
"К
inputs         дЭ
p 
к "'в$
К
0         дЭ
Ъ е
A__inference_dropout_layer_call_and_return_conditional_losses_8493`5в2
+в(
"К
inputs         дЭ
p
к "'в$
К
0         дЭ
Ъ }
&__inference_dropout_layer_call_fn_8471S5в2
+в(
"К
inputs         дЭ
p 
к "К         дЭ}
&__inference_dropout_layer_call_fn_8476S5в2
+в(
"К
inputs         дЭ
p
к "К         дЭз
A__inference_flatten_layer_call_and_return_conditional_losses_8466b7в4
-в*
(К%
inputs         d
к "'в$
К
0         дЭ
Ъ 
&__inference_flatten_layer_call_fn_8460U7в4
-в*
(К%
inputs         d
к "К         дЭь
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_8455ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ─
.__inference_max_pooling2d_1_layer_call_fn_8450СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ъ
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_8416ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ┬
,__inference_max_pooling2d_layer_call_fn_8411СRвO
HвE
CК@
inputs4                                    
к ";К84                                    └
D__inference_sequential_layer_call_and_return_conditional_losses_8195x()IJQREвB
;в8
.К+
conv2d_input         dd
p 

 
к "%в"
К
0         
Ъ └
D__inference_sequential_layer_call_and_return_conditional_losses_8225x()IJQREвB
;в8
.К+
conv2d_input         dd
p

 
к "%в"
К
0         
Ъ ║
D__inference_sequential_layer_call_and_return_conditional_losses_8310r()IJQR?в<
5в2
(К%
inputs         dd
p 

 
к "%в"
К
0         
Ъ ║
D__inference_sequential_layer_call_and_return_conditional_losses_8354r()IJQR?в<
5в2
(К%
inputs         dd
p

 
к "%в"
К
0         
Ъ Ш
)__inference_sequential_layer_call_fn_7991k()IJQREвB
;в8
.К+
conv2d_input         dd
p 

 
к "К         Ш
)__inference_sequential_layer_call_fn_8165k()IJQREвB
;в8
.К+
conv2d_input         dd
p

 
к "К         Т
)__inference_sequential_layer_call_fn_8252e()IJQR?в<
5в2
(К%
inputs         dd
p 

 
к "К         Т
)__inference_sequential_layer_call_fn_8273e()IJQR?в<
5в2
(К%
inputs         dd
p

 
к "К         │
"__inference_signature_wrapper_8377М()IJQRMвJ
в 
Cк@
>
conv2d_input.К+
conv2d_input         dd"1к.
,
dense_1!К
dense_1         