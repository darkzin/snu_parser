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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 66 of <array 30 of <array 23 of <array 25 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $75820, %eax            #   0:     add    t8 <- 75820, 69914
    movl    $69914, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   1:     add    t9 <- t8, 17940
    movl    $17940, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   2:     return t9
    jmp     l_f0_exit              
l_f0_2_while_cond:
    jmp     l_f0_1                  #   4:     goto   1
    movl    $97078, %eax            #   5:     return 97078
    jmp     l_f0_exit              
    jmp     l_f0_2_while_cond       #   6:     goto   2_while_cond
l_f0_1:
    movl    $11873, %eax            #   8:     sub    t10 <- 11873, 94876
    movl    $94876, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     add    t11 <- t10, 52728
    movl    $52728, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     add    t12 <- t11, 40262
    movl    $40262, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     sub    t13 <- t12, 80471
    movl    $80471, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     return t13
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t8       <char> %ebp-13 ]

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
l_f1_4_while_cond:
l_f1_7_while_cond:
    movl    $98, %eax               #   2:     if     98 > 97 goto 8_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_8_while_body      
    jmp     l_f1_6                  #   3:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #   5:     goto   7_while_cond
l_f1_6:
    jmp     l_f1_4_while_cond       #   7:     goto   4_while_cond
    jmp     l_f1_0                  #   8:     goto   0
l_f1_0:
l_f1_11_while_cond:
    call    dummyCHARfunc           #  11:     call   t8 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #  12:     if     97 >= t8 goto 12_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_12_while_body     
    jmp     l_f1_10                 #  13:     goto   10
l_f1_12_while_body:
    jmp     l_f1_exit              
    jmp     l_f1_11_while_cond      #  16:     goto   11_while_cond
l_f1_10:
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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t9       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v3       <char> %ebp-25 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $90557, %eax            #   0:     assign v2 <- 90557
    movl    %eax, -24(%ebp)        
    movl    $91020, %eax            #   1:     if     91020 < 44718 goto 2_if_true
    movl    $44718, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
    movl    $97, %eax               #   4:     assign v3 <- 97
    movb    %al, -25(%ebp)         
    movl    $0, %eax                #   5:     if     0 # 1 goto 7
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_7                 
    jmp     l_f2_8                  #   6:     goto   8
l_f2_7:
    movl    $1, %eax                #   8:     assign t8 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_9                  #   9:     goto   9
l_f2_8:
    movl    $0, %eax                #  11:     assign t8 <- 0
    movb    %al, -17(%ebp)         
l_f2_9:
    movzbl  -17(%ebp), %eax         #  13:     return t8
    jmp     l_f2_exit              
    jmp     l_f2_1                  #  14:     goto   1
l_f2_3_if_false:
l_f2_1:
    jmp     l_f2_13_if_false        #  17:     goto   13_if_false
    movl    $33691, %eax            #  18:     if     33691 >= 63876 goto 15
    movl    $63876, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_15                
    jmp     l_f2_16                 #  19:     goto   16
l_f2_15:
    movl    $1, %eax                #  21:     assign t9 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_17                 #  22:     goto   17
l_f2_16:
    movl    $0, %eax                #  24:     assign t9 <- 0
    movb    %al, -18(%ebp)         
l_f2_17:
    movzbl  -18(%ebp), %eax         #  26:     return t9
    jmp     l_f2_exit              
    movl    $46389, %eax            #  27:     if     46389 < 44189 goto 20_if_true
    movl    $44189, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_20_if_true        
    jmp     l_f2_21_if_false        #  28:     goto   21_if_false
l_f2_20_if_true:
    jmp     l_f2_19                 #  30:     goto   19
l_f2_21_if_false:
l_f2_19:
l_f2_24_while_cond:
    movl    $100, %eax              #  34:     if     100 < 100 goto 25_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_25_while_body     
    jmp     l_f2_23                 #  35:     goto   23
l_f2_25_while_body:
    jmp     l_f2_24_while_cond      #  37:     goto   24_while_cond
l_f2_23:
    call    ReadInt                 #  39:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $99, %eax               #  40:     assign v3 <- 99
    movb    %al, -25(%ebp)         
    jmp     l_f2_29                 #  41:     goto   29
l_f2_29:
    jmp     l_f2_34_if_false        #  43:     goto   34_if_false
    jmp     l_f2_32                 #  44:     goto   32
l_f2_34_if_false:
l_f2_32:
    movl    $0, %eax                #  47:     return 0
    jmp     l_f2_exit              
    jmp     l_f2_11                 #  48:     goto   11
l_f2_13_if_false:
l_f2_11:

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    leal    _str_1, %eax            #   0:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    call    dummyCHARfunc           #   3:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   4:     assign v0 <- t1
    movb    %al, v0                
    movl    $34255, %eax            #   5:     sub    t2 <- 34255, 76511
    movl    $76511, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     sub    t3 <- t2, 52816
    movl    $52816, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $134, %eax              #   7:     mul    t4 <- 134, 10248
    movl    $10248, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   8:     div    t5 <- t4, 2316
    movl    $2316, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -28(%ebp), %eax         #   9:     sub    t6 <- t3, t5
    movl    -36(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  10:     assign v1 <- t6
    movl    %eax, v1               
    jmp     l_test_exit            
l_test_5_while_cond:
    call    dummyINTfunc            #  13:     call   t7 <- dummyINTfunc
    movl    %eax, -44(%ebp)        
    movl    $66568, %eax            #  14:     if     66568 >= t7 goto 6_while_body
    movl    -44(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_6_while_body    
    jmp     l_test_4                #  15:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #  17:     goto   5_while_cond
l_test_4:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
