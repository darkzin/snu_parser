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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 99 of <array 66 of <array 4 of <array 11 of <array 72 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 70 of <array 14 of <array 4 of <array 1 of <array 43 of <int>>>>>>> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $0, %eax                #   1:     if     0 = 1 goto 2_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
l_f0_6_while_cond:
    movl    $98, %eax               #   5:     if     98 > 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_7_while_body      
    jmp     l_f0_5                  #   6:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #   8:     goto   6_while_cond
l_f0_5:
l_f0_10_while_cond:
    movl    $100, %eax              #  11:     if     100 = 98 goto 11_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_11_while_body     
    jmp     l_f0_9                  #  12:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  14:     goto   10_while_cond
l_f0_9:
    movl    $99, %eax               #  16:     return 99
    jmp     l_f0_exit              
    jmp     l_f0_1                  #  17:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $97, %eax               #  20:     return 97
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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 70 of <array 21 of <array 14 of <array 73 of <array 32 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 66 of <array 23 of <array 71 of <array 74 of <array 71 of <bool>>>>>>> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    movl    $22396, %eax            #   2:     if     22396 >= 33937 goto 4_if_true
    movl    $33937, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_4_if_true         
    jmp     l_f1_5_if_false         #   3:     goto   5_if_false
l_f1_4_if_true:
    jmp     l_f1_3                  #   5:     goto   3
l_f1_5_if_false:
l_f1_3:
    movl    $8067, %eax             #   8:     param  0 <- 8067
    pushl   %eax                   
    call    WriteInt                #   9:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f1_1_while_cond       #  10:     goto   1_while_cond
l_f1_0:
    movl    $100, %eax              #  12:     return 100
    jmp     l_f1_exit              
    movl    $55123, %eax            #  13:     if     55123 < 77961 goto 10_if_true
    movl    $77961, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  14:     goto   11_if_false
l_f1_10_if_true:
    movl    $97, %eax               #  16:     return 97
    jmp     l_f1_exit              
    jmp     l_f1_9                  #  17:     goto   9
l_f1_11_if_false:
l_f1_9:

l_f1_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
    #    -40(%ebp)   4  [ $v0       <int> %ebp-40 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t10 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t11 <- t10, 93631
    movl    $93631, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t12 <- t11, 39961
    movl    $39961, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v0 <- t12
    movl    %eax, -40(%ebp)        
l_f2_2_while_cond:
    movl    $98, %eax               #   5:     if     98 >= 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_3_while_body      
    jmp     l_f2_1                  #   6:     goto   1
l_f2_3_while_body:
l_f2_6_while_cond:
    movl    $1897, %eax             #   9:     div    t13 <- 1897, 80211
    movl    $80211, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $59863, %eax            #  10:     if     59863 >= t13 goto 7_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_7_while_body      
    jmp     l_f2_5                  #  11:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  13:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_2_while_cond       #  15:     goto   2_while_cond
l_f2_1:
    movl    $20633, %eax            #  17:     add    t14 <- 20633, 3071
    movl    $3071, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  18:     sub    t15 <- t14, 20416
    movl    $20416, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  19:     return t15
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <ptr(4) to <array 70 of <array 14 of <array 4 of <array 1 of <array 43 of <int>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t7       <bool> %ebp-41 ]
    #    -48(%ebp)   4  [ $t8       <ptr(4) to <array 99 of <array 66 of <array 4 of <array 11 of <array 72 of <char>>>>>>> %ebp-48 ]
    #    -49(%ebp)   1  [ $t9       <char> %ebp-49 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
l_test_5_while_cond:
    movl    $13131, %eax            #   2:     if     13131 = 78882 goto 6_while_body
    movl    $78882, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_6_while_body    
    jmp     l_test_4                #   3:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   5:     goto   5_while_cond
l_test_4:
    jmp     l_test_10_if_false      #   7:     goto   10_if_false
    jmp     l_test_8                #   8:     goto   8
l_test_10_if_false:
l_test_8:
l_test_12_while_cond:
    movl    $99, %eax               #  12:     if     99 <= 97 goto 13_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_13_while_body   
    jmp     l_test_11               #  13:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  15:     goto   12_while_cond
l_test_11:
    jmp     l_test_0                #  17:     goto   0
l_test_0:
    call    WriteLn                 #  19:     call   WriteLn
    jmp     l_test_exit            
    movl    $13173, %eax            #  21:     mul    t0 <- 13173, 52165
    movl    $52165, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  22:     div    t1 <- t0, 28872
    movl    $28872, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     div    t2 <- t1, 88084
    movl    $88084, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     mul    t3 <- t2, 21021
    movl    $21021, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     div    t4 <- t3, 54286
    movl    $54286, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     add    t5 <- t4, 99742
    movl    $99742, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $62941, %eax            #  27:     if     62941 > t5 goto 18_if_true
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_18_if_true      
    jmp     l_test_19_if_false      #  28:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  30:     goto   17
l_test_19_if_false:
l_test_17:
l_test_22_while_cond:
    jmp     l_test_22_while_cond    #  34:     goto   22_while_cond
    leal    v2, %eax                #  35:     &()    t6 <- v2
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  36:     param  3 <- t6
    pushl   %eax                   
    movl    $1, %eax                #  37:     param  2 <- 1
    pushl   %eax                   
    movl    $99123, %eax            #  38:     if     99123 <= 17167 goto 30
    movl    $17167, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_30              
    jmp     l_test_31               #  39:     goto   31
l_test_30:
    movl    $1, %eax                #  41:     assign t7 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_test_32               #  42:     goto   32
l_test_31:
    movl    $0, %eax                #  44:     assign t7 <- 0
    movb    %al, -41(%ebp)         
l_test_32:
    movzbl  -41(%ebp), %eax         #  46:     param  1 <- t7
    pushl   %eax                   
    leal    v1, %eax                #  47:     &()    t8 <- v1
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  48:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  49:     call   t9 <- f0
    addl    $16, %esp              
    movb    %al, -49(%ebp)         
    movl    $99, %eax               #  50:     if     99 = t9 goto 27_if_true
    movzbl  -49(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_27_if_true      
    jmp     l_test_28_if_false      #  51:     goto   28_if_false
l_test_27_if_true:
    movl    $99, %eax               #  53:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_26               #  54:     goto   26
l_test_28_if_false:
l_test_26:

l_test_exit:
    # epilogue
    addl    $40, %esp               # remove locals
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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 99 of <array 66 of <array 4 of <array 11 of <array 72 of <char>>>>>>
    .long    5
    .long   99
    .long   66
    .long    4
    .long   11
    .long   72
    .skip 20699712
v2:                                 # <array 70 of <array 14 of <array 4 of <array 1 of <array 43 of <int>>>>>>
    .long    5
    .long   70
    .long   14
    .long    4
    .long    1
    .long   43
    .skip 674240








    # end of global data section
    #-----------------------------------------

    .end
##################################################
