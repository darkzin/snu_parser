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
    #    -16(%ebp)   4  [ $t11      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t12      <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_f0_1_while_cond:
    call    ReadInt                 #   1:     call   t11 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $77803, %eax            #   2:     if     77803 <= t11 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    movl    $89696, %eax            #   5:     assign v1 <- 89696
    movl    %eax, -24(%ebp)        
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
    leal    _str_1, %eax            #   8:     &()    t12 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     param  0 <- t12
    pushl   %eax                   
    call    WriteStr                #  10:     call   WriteStr
    addl    $4, %esp               
    movl    $61948, %eax            #  11:     if     61948 <= 94123 goto 7_if_true
    movl    $94123, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #  12:     goto   8_if_false
l_f0_7_if_true:
    movl    $98, %eax               #  14:     return 98
    jmp     l_f0_exit              
    movl    $100, %eax              #  15:     return 100
    jmp     l_f0_exit              
    movl    $99, %eax               #  16:     if     99 >= 97 goto 13_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  17:     goto   14_if_false
l_f0_13_if_true:
    jmp     l_f0_12                 #  19:     goto   12
l_f0_14_if_false:
l_f0_12:
    movl    $44320, %eax            #  22:     assign v1 <- 44320
    movl    %eax, -24(%ebp)        
    jmp     l_f0_6                  #  23:     goto   6
l_f0_8_if_false:
l_f0_6:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t11      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t12      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t13      <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 10 of <array 4 of <array 1 of <array 2 of <int>>>>>>> %ebp+12 ]

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
    call    f0                      #   0:     call   t11 <- f0
    movb    %al, -13(%ebp)         
    call    f0                      #   1:     call   t12 <- f0
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   2:     return t12
    jmp     l_f1_exit              
    call    f0                      #   3:     call   t13 <- f0
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   4:     return t13
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t12      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t13      <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #    -16(%ebp)   1  [ $v2       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $v3       <char> %ebp-17 ]

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
    movl    $100, %eax              #   0:     return 100
    jmp     l_f2_exit              
    jmp     l_f2_3_if_false         #   1:     goto   3_if_false
    movl    $77270, %eax            #   2:     assign v1 <- 77270
    movl    %eax, 8(%ebp)          
    movl    $52690, %eax            #   3:     if     52690 >= 46285 goto 6
    movl    $46285, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_6                 
    jmp     l_f2_7                  #   4:     goto   7
l_f2_6:
    movl    $1, %eax                #   6:     assign t11 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_8                  #   7:     goto   8
l_f2_7:
    movl    $0, %eax                #   9:     assign t11 <- 0
    movb    %al, -13(%ebp)         
l_f2_8:
    movzbl  -13(%ebp), %eax         #  11:     assign v2 <- t11
    movb    %al, -16(%ebp)         
    movl    $98, %eax               #  12:     assign v3 <- 98
    movb    %al, -17(%ebp)         
    call    dummyBOOLfunc           #  13:     call   t12 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f2_1                  #  14:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_13_while_cond:
    jmp     l_f2_12                 #  18:     goto   12
    movl    $0, %eax                #  19:     if     0 = 0 goto 19_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_19_if_true        
    jmp     l_f2_20_if_false        #  20:     goto   20_if_false
l_f2_19_if_true:
    jmp     l_f2_18                 #  22:     goto   18
l_f2_20_if_false:
l_f2_18:
    jmp     l_f2_24_if_false        #  25:     goto   24_if_false
    jmp     l_f2_22                 #  26:     goto   22
l_f2_24_if_false:
l_f2_22:
    call    dummyProcedure          #  29:     call   dummyProcedure
    movl    $99, %eax               #  30:     if     99 >= 98 goto 27
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_27                
    jmp     l_f2_28                 #  31:     goto   28
l_f2_27:
    movl    $1, %eax                #  33:     assign t13 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_29                 #  34:     goto   29
l_f2_28:
    movl    $0, %eax                #  36:     assign t13 <- 0
    movb    %al, -15(%ebp)         
l_f2_29:
    movzbl  -15(%ebp), %eax         #  38:     assign v2 <- t13
    movb    %al, -16(%ebp)         
    jmp     l_f2_15                 #  39:     goto   15
l_f2_15:
    jmp     l_f2_13_while_cond      #  41:     goto   13_while_cond
l_f2_12:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t10      <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t2       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t3       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t4       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t5       <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $t6       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t7       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t9       <int> %ebp-56 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 >= 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_2_if_true       
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_2_if_true:
l_test_6_while_cond:
    movl    $68965, %eax            #   6:     if     68965 # 20854 goto 7_while_body
    movl    $20854, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_7_while_body    
    jmp     l_test_5                #   7:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   9:     goto   6_while_cond
l_test_5:
    call    dummyINTfunc            #  11:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_1                #  13:     goto   1
l_test_3_if_false:
l_test_1:
    call    ReadInt                 #  16:     call   t2 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     mul    t3 <- t2, 48222
    movl    $48222, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  18:     div    t4 <- t3, 30600
    movl    $30600, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  19:     assign v0 <- t4
    movl    %eax, v0               
l_test_13_while_cond:
    movl    $48752, %eax            #  21:     if     48752 = 269 goto 14_while_body
    movl    $269, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_14_while_body   
    jmp     l_test_12               #  22:     goto   12
l_test_14_while_body:
    call    dummyBOOLfunc           #  24:     call   t5 <- dummyBOOLfunc
    movb    %al, -37(%ebp)         
    call    ReadInt                 #  25:     call   t6 <- ReadInt
    movl    %eax, -44(%ebp)        
l_test_19_while_cond:
    jmp     l_test_19_while_cond    #  27:     goto   19_while_cond
    jmp     l_test_13_while_cond    #  28:     goto   13_while_cond
l_test_12:
    movl    $68522, %eax            #  30:     div    t7 <- 68522, 84787
    movl    $84787, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    call    dummyINTfunc            #  31:     call   t8 <- dummyINTfunc
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  32:     div    t9 <- t7, t8
    movl    -52(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  33:     param  0 <- t9
    pushl   %eax                   
    call    f2                      #  34:     call   t10 <- f2
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
l_test_23_while_cond:
    jmp     l_test_24_while_body    #  36:     goto   24_while_body
    jmp     l_test_24_while_body    #  37:     goto   24_while_body
    jmp     l_test_22               #  38:     goto   22
l_test_24_while_body:
    jmp     l_test_23_while_cond    #  40:     goto   23_while_cond
l_test_22:

l_test_exit:
    # epilogue
    addl    $44, %esp               # remove locals
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
    .align   4
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
