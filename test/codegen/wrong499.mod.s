##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -13(%ebp)   1  [ $t13      <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 3 of <array 4 of <array 1 of <array 9 of <int>>>>>>> %ebp+8 ]
    #    -14(%ebp)   1  [ $v2       <char> %ebp-14 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
l_f0_1_while_cond:
    movl    $99, %eax               #   1:     return 99
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #   2:     goto   1_while_cond
l_f0_5_while_cond:
    jmp     l_f0_4                  #   4:     goto   4
    call    dummyProcedure          #   5:     call   dummyProcedure
    movl    $99, %eax               #   6:     return 99
    jmp     l_f0_exit              
l_f0_10_while_cond:
    jmp     l_f0_10_while_cond      #   8:     goto   10_while_cond
    movl    $3558, %eax             #   9:     if     3558 < 38608 goto 13_if_true
    movl    $38608, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  10:     goto   14_if_false
l_f0_13_if_true:
    movl    $97, %eax               #  12:     assign v2 <- 97
    movb    %al, -14(%ebp)         
    movl    $97, %eax               #  13:     return 97
    jmp     l_f0_exit              
    jmp     l_f0_12                 #  14:     goto   12
l_f0_14_if_false:
l_f0_12:
    jmp     l_f0_5_while_cond       #  17:     goto   5_while_cond
l_f0_4:
    call    dummyCHARfunc           #  19:     call   t13 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  20:     return t13
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t13      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t14      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t15      <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    call    dummyBOOLfunc           #   0:     call   t13 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   1:     if     99 >= 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
    call    dummyBOOLfunc           #   4:     call   t14 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $27787, %eax            #   5:     assign v1 <- 27787
    movl    %eax, 8(%ebp)          
    movl    $100, %eax              #   6:     assign v2 <- 100
    movb    %al, 12(%ebp)          
    jmp     l_f1_1                  #   7:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyCHARfunc           #  10:     call   t15 <- dummyCHARfunc
    movb    %al, -15(%ebp)         

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t13      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t14      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t15      <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t16      <ptr(4) to <array 2 of <array 3 of <array 4 of <array 1 of <array 9 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t17      <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t18      <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #   -916(%ebp)  888  [ $v4       <array 2 of <array 3 of <array 4 of <array 1 of <array 9 of <int>>>>>> %ebp-916 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $904, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $226, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-916(%ebp)           # local array 'v4': 5 dimensions
    movl    $2,-912(%ebp)           #   dimension 1: 2 elements
    movl    $3,-908(%ebp)           #   dimension 2: 3 elements
    movl    $4,-904(%ebp)           #   dimension 3: 4 elements
    movl    $1,-900(%ebp)           #   dimension 4: 1 elements
    movl    $9,-896(%ebp)           #   dimension 5: 9 elements

    # function body
    call    dummyBOOLfunc           #   0:     call   t13 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_0                  #   1:     goto   0
l_f2_0:
    jmp     l_f2_6_if_false         #   3:     goto   6_if_false
    call    dummyCHARfunc           #   4:     call   t14 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   5:     call   t15 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_f2_9                  #   6:     goto   9
l_f2_9:
    movl    $14135, %eax            #   8:     assign v1 <- 14135
    movl    %eax, 8(%ebp)          
l_f2_14_while_cond:
    jmp     l_f2_14_while_cond      #  10:     goto   14_while_cond
    jmp     l_f2_16                 #  11:     goto   16
l_f2_16:
    leal    -916(%ebp), %eax        #  13:     &()    t16 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     param  0 <- t16
    pushl   %eax                   
    call    f0                      #  15:     call   t17 <- f0
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    jmp     l_f2_4                  #  16:     goto   4
l_f2_6_if_false:
l_f2_4:
    call    dummyINTfunc            #  19:     call   t18 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    movl    $64847, %eax            #  20:     if     64847 >= t18 goto 21_if_true
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_21_if_true        
    jmp     l_f2_22_if_false        #  21:     goto   22_if_false
l_f2_21_if_true:
    movl    $68260, %eax            #  23:     if     68260 >= 11312 goto 25_if_true
    movl    $11312, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_25_if_true        
    jmp     l_f2_26_if_false        #  24:     goto   26_if_false
l_f2_25_if_true:
    jmp     l_f2_24                 #  26:     goto   24
l_f2_26_if_false:
l_f2_24:
    jmp     l_f2_20                 #  29:     goto   20
l_f2_22_if_false:
l_f2_20:

l_f2_exit:
    # epilogue
    addl    $904, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t2       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t3       <ptr(4) to <array 2 of <array 3 of <array 4 of <array 1 of <array 9 of <int>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t4       <char> %ebp-41 ]
    #    -48(%ebp)   4  [ $t5       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t6       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t7       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t8       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t9       <int> %ebp-64 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $52, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $13, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    jmp     l_test_2_while_body     #   2:     goto   2_while_body
    jmp     l_test_2_while_body     #   3:     goto   2_while_body
    jmp     l_test_2_while_body     #   4:     goto   2_while_body
    jmp     l_test_2_while_body     #   5:     goto   2_while_body
l_test_2_while_body:
    movl    $10546, %eax            #   7:     assign v0 <- 10546
    movl    %eax, v0               
l_test_12_while_cond:
    movl    $97, %eax               #   9:     if     97 > 97 goto 13_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_13_while_body   
    jmp     l_test_11               #  10:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  12:     goto   12_while_cond
l_test_11:
    jmp     l_test_1_while_cond     #  14:     goto   1_while_cond
    call    dummyBOOLfunc           #  15:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_17_while_cond:
    movl    $30763, %eax            #  17:     add    t1 <- 30763, 7353
    movl    $7353, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     sub    t2 <- t1, 19931
    movl    $19931, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $22702, %eax            #  19:     if     22702 >= t2 goto 18_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_18_while_body   
    jmp     l_test_16               #  20:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  22:     goto   17_while_cond
l_test_16:
    leal    v1, %eax                #  24:     &()    t3 <- v1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  25:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  26:     call   t4 <- f0
    addl    $4, %esp               
    movb    %al, -41(%ebp)         
    movl    $0, %eax                #  27:     assign v2 <- 0
    movb    %al, v2                
l_test_23_while_cond:
    movl    $69453, %eax            #  29:     div    t5 <- 69453, 3496
    movl    $3496, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  30:     mul    t6 <- t5, 33018
    movl    $33018, %ebx           
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  31:     div    t7 <- t6, 76533
    movl    $76533, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  32:     div    t8 <- t7, 84250
    movl    $84250, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  33:     div    t9 <- t8, 33169
    movl    $33169, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  34:     div    t10 <- t9, 30106
    movl    $30106, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  35:     mul    t11 <- t10, 23877
    movl    $23877, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  36:     div    t12 <- t11, 47671
    movl    $47671, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    $56341, %eax            #  37:     if     56341 <= t12 goto 24_while_body
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_24_while_body   
    jmp     l_test_22               #  38:     goto   22
l_test_24_while_body:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_23_while_cond    #  42:     goto   23_while_cond
l_test_22:

l_test_exit:
    # epilogue
    addl    $52, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <int>
    .skip    4
v1:                                 # <array 2 of <array 3 of <array 4 of <array 1 of <array 9 of <int>>>>>>
    .long    5
    .long    2
    .long    3
    .long    4
    .long    1
    .long    9
    .skip  864
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
