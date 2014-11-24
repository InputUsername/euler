#with explanation:

# 101		push 101								=> 101
# ,			create array of 0-100					=> [0 ... 100]
# (			remove 1st element (0) and push it		=> [1 ... 100] 0
# ;			pop the pushed 0						=> [1 ... 100]
#
# .			duplicate stack							=> [1 ... 100] [1 ... 100]
#
# {2?}%		raise all elements to the power 2		=> [1 ... 100] [1^2 ... 100^2]
#
# {+}*		add together							=> [1 ... 100] (1^2 + ... + 100^2) < call it 'a'
#
# \			swap elements (array is now on top)		=> a [1 ... 100]
#
# {+}*		add array elements together				=> a (1 + ... + 100)
# 2?		calculate 2nd power of result			=> a (1 + ... + 100)^2 < call it 'b'
#
# \			swap elements again						=> b a
#
# -			subtract								=> a - b

#short version:

101,(;.{2?}%{+}*\{+}*2?\-