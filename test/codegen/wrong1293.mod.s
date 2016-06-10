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
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 38 of <array 47 of <array 76 of <array 65 of <array 63 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 72 of <array 84 of <array 83 of <array 24 of <array 2 of <bool>>>>>>> %ebp+16 ]

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
    leal    _str_1, %eax            #   0:     &()    t5 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t5
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_exit              
    movl    $0, %eax                #   4:     assign v2 <- 0
    movb    %al, 12(%ebp)          

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t15      <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t16      <bool> %ebp-34 ]
    #    -35(%ebp)   1  [ $t17      <bool> %ebp-35 ]
    #    -36(%ebp)   1  [ $t18      <bool> %ebp-36 ]
    #    -40(%ebp)   4  [ $t5       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t6       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t7       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t9       <int> %ebp-56 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 46 of <array 20 of <array 77 of <array 58 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 43 of <array 86 of <array 43 of <array 77 of <array 74 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 44 of <array 57 of <array 93 of <array 10 of <array 16 of <bool>>>>>>> %ebp+20 ]

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
    movl    $90563, %eax            #   0:     sub    t5 <- 90563, 47957
    movl    $47957, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   1:     add    t6 <- t5, 9276
    movl    $9276, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   2:     sub    t7 <- t6, 7516
    movl    $7516, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   3:     sub    t8 <- t7, 52508
    movl    $52508, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   4:     add    t9 <- t8, 43989
    movl    $43989, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   5:     add    t10 <- t9, 26398
    movl    $26398, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     add    t11 <- t10, 74583
    movl    $74583, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     assign v3 <- t11
    movl    %eax, 16(%ebp)         
    movl    $5433, %eax             #   8:     div    t12 <- 5433, 21675
    movl    $21675, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     div    t13 <- t12, 36723
    movl    $36723, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     sub    t14 <- t13, 83171
    movl    $83171, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $73842, %eax            #  11:     if     73842 # t14 goto 2
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_2                 
    jmp     l_f1_3                  #  12:     goto   3
l_f1_2:
    movl    $1, %eax                #  14:     assign t15 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f1_4                  #  15:     goto   4
l_f1_3:
    movl    $0, %eax                #  17:     assign t15 <- 0
    movb    %al, -33(%ebp)         
l_f1_4:
    movzbl  -33(%ebp), %eax         #  19:     return t15
    jmp     l_f1_exit              
    movl    $1, %eax                #  20:     assign t16 <- 1
    movb    %al, -34(%ebp)         
    jmp     l_f1_13                 #  21:     goto   13
    movl    $0, %eax                #  22:     assign t16 <- 0
    movb    %al, -34(%ebp)         
l_f1_13:
    movl    $100, %eax              #  24:     if     100 # 97 goto 15
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_15                
    jmp     l_f1_16                 #  25:     goto   16
l_f1_15:
    movl    $1, %eax                #  27:     assign t17 <- 1
    movb    %al, -35(%ebp)         
    jmp     l_f1_17                 #  28:     goto   17
l_f1_16:
    movl    $0, %eax                #  30:     assign t17 <- 0
    movb    %al, -35(%ebp)         
l_f1_17:
    movzbl  -34(%ebp), %eax         #  32:     if     t16 # t17 goto 7
    movzbl  -35(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_7                 
    jmp     l_f1_8                  #  33:     goto   8
l_f1_7:
    movl    $1, %eax                #  35:     assign t18 <- 1
    movb    %al, -36(%ebp)         
    jmp     l_f1_9                  #  36:     goto   9
l_f1_8:
    movl    $0, %eax                #  38:     assign t18 <- 0
    movb    %al, -36(%ebp)         
l_f1_9:
    movzbl  -36(%ebp), %eax         #  40:     return t18
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $44, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v1       <char> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f2_2_while_cond:
    call    dummyBOOLfunc           #   2:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     if     t6 = 1 goto 5
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_5                 
    jmp     l_f2_1                  #   4:     goto   1
l_f2_5:
    jmp     l_f2_2_while_cond       #   6:     goto   2_while_cond
l_f2_1:
    movl    $46679, %eax            #   8:     if     46679 = 2581 goto 7_if_true
    movl    $2581, %ebx            
    cmpl    %ebx, %eax             
    je      l_f2_7_if_true         
    jmp     l_f2_8_if_false         #   9:     goto   8_if_false
l_f2_7_if_true:
    movl    $100, %eax              #  11:     return 100
    jmp     l_f2_exit              
    jmp     l_f2_13_if_false        #  12:     goto   13_if_false
    jmp     l_f2_11                 #  13:     goto   11
l_f2_13_if_false:
l_f2_11:
    movl    $99, %eax               #  16:     assign v1 <- 99
    movb    %al, -15(%ebp)         
    jmp     l_f2_6                  #  17:     goto   6
l_f2_8_if_false:
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <char> %ebp-19 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]

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
    movl    $73925, %eax            #   0:     mul    t0 <- 73925, 92392
    movl    $92392, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     if     t0 = 17121 goto 1
    movl    $17121, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_1               
    jmp     l_test_2                #   2:     goto   2
l_test_1:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_3                #   5:     goto   3
l_test_2:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_3:
    movzbl  -17(%ebp), %eax         #   9:     assign v0 <- t1
    movb    %al, v0                
l_test_6_while_cond:
    call    f2                      #  11:     call   t2 <- f2
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  12:     if     t2 < 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_7_while_body    
    jmp     l_test_5                #  13:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  15:     goto   6_while_cond
l_test_5:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  18:     call   t3 <- dummyCHARfunc
    movb    %al, -19(%ebp)         
    movzbl  -19(%ebp), %eax         #  19:     if     t3 > 97 goto 11_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_11_if_true      
    jmp     l_test_12_if_false      #  20:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_exit            
l_test_16_while_cond:
    jmp     l_test_15               #  24:     goto   15
    jmp     l_test_16_while_cond    #  25:     goto   16_while_cond
l_test_15:
    jmp     l_test_exit            
    call    dummyINTfunc            #  28:     call   t4 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_test_exit            
l_test_22_while_cond:
    movl    $59752, %eax            #  31:     if     59752 <= 85631 goto 23_while_body
    movl    $85631, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_23_while_body   
    jmp     l_test_21               #  32:     goto   21
l_test_23_while_body:
    jmp     l_test_22_while_cond    #  34:     goto   22_while_cond
l_test_21:
    movl    $100, %eax              #  36:     assign v1 <- 100
    movb    %al, v1                
    movl    $80166, %eax            #  37:     if     80166 # 23878 goto 27_if_true
    movl    $23878, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_27_if_true      
    jmp     l_test_28_if_false      #  38:     goto   28_if_false
l_test_27_if_true:
    jmp     l_test_26               #  40:     goto   26
l_test_28_if_false:
l_test_26:
    movl    $1, %eax                #  43:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_10               #  44:     goto   10
l_test_12_if_false:
l_test_10:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
