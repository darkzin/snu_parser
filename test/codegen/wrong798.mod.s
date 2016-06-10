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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t2
    movb    %al, 8(%ebp)           
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
    movl    $100, %eax              #   3:     if     100 < 99 goto 5_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   4:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   6:     goto   4
l_f0_6_if_false:
l_f0_4:
l_f0_9_while_cond:
    jmp     l_f0_8                  #  10:     goto   8
    jmp     l_f0_9_while_cond       #  11:     goto   9_while_cond
l_f0_8:
    movl    $47908, %eax            #  13:     if     47908 > 44746 goto 12_if_true
    movl    $44746, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  14:     goto   13_if_false
l_f0_12_if_true:
    jmp     l_f0_11                 #  16:     goto   11
l_f0_13_if_false:
l_f0_11:
    movl    $20144, %eax            #  19:     assign v1 <- 20144
    movl    %eax, -20(%ebp)        
    movl    $99, %eax               #  20:     if     99 = 98 goto 17
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_17                
    jmp     l_f0_18                 #  21:     goto   18
l_f0_17:
    movl    $1, %eax                #  23:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_19                 #  24:     goto   19
l_f0_18:
    movl    $0, %eax                #  26:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f0_19:
    movzbl  -14(%ebp), %eax         #  28:     return t3
    jmp     l_f0_exit              
    jmp     l_f0_1                  #  29:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $1, %eax                #  32:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_27                 #  33:     goto   27
    movl    $0, %eax                #  34:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f0_27:
    movzbl  -15(%ebp), %eax         #  36:     if     t4 # 0 goto 22_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_22_if_true        
    jmp     l_f0_23_if_false        #  37:     goto   23_if_false
l_f0_22_if_true:
    jmp     l_f0_21                 #  39:     goto   21
l_f0_23_if_false:
l_f0_21:

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 1 of <array 2 of <array 6 of <array 9 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 3 of <array 1 of <array 2 of <array 10 of <int>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    WriteLn                 #   0:     call   WriteLn
    leal    _str_1, %eax            #   1:     &()    t2 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #   3:     call   WriteStr
    addl    $4, %esp               
    movl    $97, %eax               #   4:     if     97 # 99 goto 3_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   5:     goto   4_if_false
l_f1_3_if_true:
    movl    $97, %eax               #   7:     if     97 <= 99 goto 7
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_7                 
    jmp     l_f1_8                  #   8:     goto   8
l_f1_7:
    movl    $1, %eax                #  10:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_9                  #  11:     goto   9
l_f1_8:
    movl    $0, %eax                #  13:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f1_9:
    movzbl  -17(%ebp), %eax         #  15:     assign v0 <- t3
    movb    %al, 8(%ebp)           
    movl    $4797, %eax             #  16:     if     4797 < 51057 goto 12
    movl    $51057, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_12                
    jmp     l_f1_13                 #  17:     goto   13
l_f1_12:
    movl    $1, %eax                #  19:     assign t4 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_14                 #  20:     goto   14
l_f1_13:
    movl    $0, %eax                #  22:     assign t4 <- 0
    movb    %al, -18(%ebp)         
l_f1_14:
    movzbl  -18(%ebp), %eax         #  24:     assign v0 <- t4
    movb    %al, 8(%ebp)           
    jmp     l_f1_2                  #  25:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t2       <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t3       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t4       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t5       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 4 of <array 1 of <array 5 of <array 7 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 2 of <array 2 of <array 2 of <array 1 of <char>>>>>>> %ebp+12 ]
    #    -97(%ebp)   1  [ $v2       <char> %ebp-97 ]
    #    -98(%ebp)   1  [ $v3       <bool> %ebp-98 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $88, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $22, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f2_1_if_true          #   0:     goto   1_if_true
    call    dummyBOOLfunc           #   1:     call   t2 <- dummyBOOLfunc
    movb    %al, -53(%ebp)         
    movzbl  -53(%ebp), %eax         #   2:     if     t2 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   3:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $14797, %eax            #   8:     add    t3 <- 14797, 81241
    movl    $81241, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   9:     sub    t4 <- t3, 60915
    movl    $60915, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  10:     add    t5 <- t4, 66999
    movl    $66999, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  11:     sub    t6 <- t5, 37545
    movl    $37545, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $2, %eax                #  12:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  13:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  14:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  15:     mul    t8 <- t6, t7
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  16:     add    t9 <- t8, 54285
    movl    $54285, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $3, %eax                #  17:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -96(%ebp), %eax         #  20:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     add    t12 <- t11, 42600
    movl    $42600, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  22:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  23:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  24:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  25:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     add    t15 <- t14, 71430
    movl    $71430, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  27:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  28:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  29:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  30:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  31:     add    t18 <- t17, 90157
    movl    $90157, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  32:     mul    t19 <- t18, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  33:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  34:     call   t20 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  35:     add    t21 <- t19, t20
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  36:     add    t22 <- v1, t21
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $97, %eax               #  37:     assign @t22 <- 97
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $0, %eax                #  38:     assign v3 <- 0
    movb    %al, -98(%ebp)         

l_f2_exit:
    # epilogue
    addl    $88, %esp               # remove locals
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

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_2_if_true        #   1:     goto   2_if_true
    jmp     l_test_2_if_true        #   2:     goto   2_if_true
    jmp     l_test_2_if_true        #   3:     goto   2_if_true
    jmp     l_test_2_if_true        #   4:     goto   2_if_true
    jmp     l_test_2_if_true        #   5:     goto   2_if_true
l_test_2_if_true:
    jmp     l_test_1                #   7:     goto   1
l_test_1:
    jmp     l_test_14_if_false      #   9:     goto   14_if_false
    jmp     l_test_14_if_false      #  10:     goto   14_if_false
    jmp     l_test_12               #  11:     goto   12
l_test_14_if_false:
l_test_12:
l_test_20_while_cond:
    jmp     l_test_19               #  15:     goto   19
    call    ReadInt                 #  16:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_20_while_cond    #  17:     goto   20_while_cond
l_test_19:

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"








    # end of global data section
    #-----------------------------------------

    .end
##################################################
