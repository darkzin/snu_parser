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
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t16      <bool> %ebp-37 ]
    #    -38(%ebp)   1  [ $t17      <bool> %ebp-38 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $9040, %eax             #   0:     mul    t8 <- 9040, 59320
    movl    $59320, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   1:     mul    t9 <- t8, 61500
    movl    $61500, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   2:     div    t10 <- t9, 3148
    movl    $3148, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     div    t11 <- t10, 51091
    movl    $51091, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     mul    t12 <- t11, 64919
    movl    $64919, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     mul    t13 <- t12, 90361
    movl    $90361, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     mul    t14 <- t13, 28742
    movl    $28742, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     mul    t15 <- t14, 17673
    movl    $17673, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    $80403, %eax            #   8:     if     80403 < t15 goto 1
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_1                 
    jmp     l_f0_2                  #   9:     goto   2
l_f0_1:
    movl    $1, %eax                #  11:     assign t16 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f0_3                  #  12:     goto   3
l_f0_2:
    movl    $0, %eax                #  14:     assign t16 <- 0
    movb    %al, -37(%ebp)         
l_f0_3:
    movzbl  -37(%ebp), %eax         #  16:     return t16
    jmp     l_f0_exit              
    movl    $97, %eax               #  17:     if     97 > 99 goto 6
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_6                 
    jmp     l_f0_7                  #  18:     goto   7
l_f0_6:
    movl    $1, %eax                #  20:     assign t17 <- 1
    movb    %al, -38(%ebp)         
    jmp     l_f0_8                  #  21:     goto   8
l_f0_7:
    movl    $0, %eax                #  23:     assign t17 <- 0
    movb    %al, -38(%ebp)         
l_f0_8:
    movzbl  -38(%ebp), %eax         #  25:     assign v2 <- t17
    movb    %al, 12(%ebp)          
l_f0_11_while_cond:
    movl    $98, %eax               #  27:     if     98 < 97 goto 15_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  28:     goto   16_if_false
l_f0_15_if_true:
    jmp     l_f0_14                 #  30:     goto   14
l_f0_16_if_false:
l_f0_14:
l_f0_19_while_cond:
    movl    $98, %eax               #  34:     if     98 > 99 goto 20_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_20_while_body     
    jmp     l_f0_18                 #  35:     goto   18
l_f0_20_while_body:
    jmp     l_f0_19_while_cond      #  37:     goto   19_while_cond
l_f0_18:
    jmp     l_f0_11_while_cond      #  39:     goto   11_while_cond

l_f0_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t8       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 1 of <array 7 of <array 6 of <array 4 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 7 of <array 2 of <array 1 of <array 6 of <int>>>>>>> %ebp+12 ]

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
    movl    $100, %eax              #   0:     return 100
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   1:     call   t8 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     return t8
    jmp     l_f1_exit              
l_f1_3_while_cond:
    jmp     l_f1_2                  #   4:     goto   2
    jmp     l_f1_8_if_false         #   5:     goto   8_if_false
    jmp     l_f1_6                  #   6:     goto   6
l_f1_8_if_false:
l_f1_6:
    jmp     l_f1_3_while_cond       #   9:     goto   3_while_cond
l_f1_2:

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
    #    -13(%ebp)   1  [ $t8       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 5 of <array 1 of <array 4 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 9 of <array 9 of <array 4 of <array 8 of <array 9 of <char>>>>>>> %ebp+20 ]
    #    -24(%ebp)   4  [ $v5       <int> %ebp-24 ]

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
    movl    $30421, %eax            #   0:     assign v5 <- 30421
    movl    %eax, -24(%ebp)        
    call    dummyCHARfunc           #   1:     call   t8 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyINTfunc            #   2:     call   t9 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 9 of <array 9 of <array 4 of <array 8 of <array 9 of <char>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t6       <ptr(4) to <array 3 of <array 5 of <array 1 of <array 4 of <array 8 of <int>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t7       <bool> %ebp-41 ]

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
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    jmp     l_test_2_while_body     #   2:     goto   2_while_body
    jmp     l_test_2_while_body     #   3:     goto   2_while_body
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
    call    dummyCHARfunc           #   6:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   7:     if     97 >= t0 goto 7_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_7_if_true       
    jmp     l_test_8_if_false       #   8:     goto   8_if_false
l_test_7_if_true:
    movl    $97724, %eax            #  10:     assign v0 <- 97724
    movl    %eax, v0               
    jmp     l_test_6                #  11:     goto   6
l_test_8_if_false:
l_test_6:
    movl    $16344, %eax            #  14:     sub    t1 <- 16344, 52899
    movl    $52899, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     sub    t2 <- t1, 16741
    movl    $16741, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     param  0 <- t2
    pushl   %eax                   
    call    WriteInt                #  17:     call   WriteInt
    addl    $4, %esp               
    movl    $47450, %eax            #  18:     sub    t3 <- 47450, 99963
    movl    $99963, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     assign v0 <- t3
    movl    %eax, v0               
l_test_14_while_cond:
    leal    v2, %eax                #  21:     &()    t4 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  22:     param  3 <- t4
    pushl   %eax                   
    movl    $98, %eax               #  23:     param  2 <- 98
    pushl   %eax                   
    movl    $22616, %eax            #  24:     if     22616 <= 22489 goto 16
    movl    $22489, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_16              
    jmp     l_test_17               #  25:     goto   17
l_test_16:
    movl    $1, %eax                #  27:     assign t5 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_test_18               #  28:     goto   18
l_test_17:
    movl    $0, %eax                #  30:     assign t5 <- 0
    movb    %al, -33(%ebp)         
l_test_18:
    movzbl  -33(%ebp), %eax         #  32:     param  1 <- t5
    pushl   %eax                   
    leal    v1, %eax                #  33:     &()    t6 <- v1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  34:     param  0 <- t6
    pushl   %eax                   
    call    f2                      #  35:     call   t7 <- f2
    addl    $16, %esp              
    movb    %al, -41(%ebp)         
    movzbl  -41(%ebp), %eax         #  36:     if     t7 = 1 goto 15_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_15_while_body   
    jmp     l_test_13               #  37:     goto   13
l_test_15_while_body:
    jmp     l_test_20               #  39:     goto   20
l_test_20:
    movl    $41935, %eax            #  41:     if     41935 <= 40246 goto 24_if_true
    movl    $40246, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_24_if_true      
    jmp     l_test_25_if_false      #  42:     goto   25_if_false
l_test_24_if_true:
    jmp     l_test_23               #  44:     goto   23
l_test_25_if_false:
l_test_23:
    jmp     l_test_14_while_cond    #  47:     goto   14_while_cond
l_test_13:

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
v0:                                 # <int>
    .skip    4
v1:                                 # <array 3 of <array 5 of <array 1 of <array 4 of <array 8 of <int>>>>>>
    .long    5
    .long    3
    .long    5
    .long    1
    .long    4
    .long    8
    .skip 1920
v2:                                 # <array 9 of <array 9 of <array 4 of <array 8 of <array 9 of <char>>>>>>
    .long    5
    .long    9
    .long    9
    .long    4
    .long    8
    .long    9
    .skip 23328








    # end of global data section
    #-----------------------------------------

    .end
##################################################
