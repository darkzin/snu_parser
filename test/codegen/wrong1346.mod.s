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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 47 of <array 71 of <array 39 of <array 50 of <array 98 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 24 of <array 39 of <array 27 of <array 60 of <array 1 of <char>>>>>>> %ebp+12 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]

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
    movl    $98, %eax               #   0:     if     98 > 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $1, %eax                #   3:     if     1 = 1 goto 5_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   4:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   6:     goto   4
l_f0_6_if_false:
l_f0_4:
    movl    $78088, %eax            #   9:     if     78088 >= 67426 goto 9_if_true
    movl    $67426, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_9_if_true         
    jmp     l_f0_10_if_false        #  10:     goto   10_if_false
l_f0_9_if_true:
l_f0_13_while_cond:
    movl    $1, %eax                #  13:     if     1 = 0 goto 14_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_14_while_body     
    jmp     l_f0_12                 #  14:     goto   12
l_f0_14_while_body:
    jmp     l_f0_13_while_cond      #  16:     goto   13_while_cond
l_f0_12:
    jmp     l_f0_8                  #  18:     goto   8
l_f0_10_if_false:
l_f0_8:
    jmp     l_f0_0                  #  21:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $5009, %eax             #  24:     sub    t1 <- 5009, 59346
    movl    $59346, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  25:     assign v2 <- t1
    movl    %eax, -24(%ebp)        
l_f0_18_while_cond:
    movl    $74656, %eax            #  27:     add    t2 <- 74656, 7196
    movl    $7196, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  28:     if     t2 <= 39813 goto 19_while_body
    movl    $39813, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_19_while_body     
    jmp     l_f0_17                 #  29:     goto   17
l_f0_19_while_body:
    jmp     l_f0_18_while_cond      #  31:     goto   18_while_cond
l_f0_17:

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 75 of <array 23 of <array 59 of <array 14 of <array 67 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 88 of <array 74 of <array 81 of <array 99 of <array 50 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 90 of <array 29 of <array 76 of <array 79 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #    -14(%ebp)   1  [ $v4       <bool> %ebp-14 ]

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
l_f1_1_while_cond:
    movl    $99, %eax               #   1:     if     99 > 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $100, %eax              #   4:     return 100
    jmp     l_f1_exit              
    movl    $0, %eax                #   5:     assign v4 <- 0
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #   6:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #   7:     goto   1_while_cond
l_f1_0:
l_f1_8_while_cond:
    movl    $100, %eax              #  10:     if     100 > 97 goto 9_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_9_while_body      
    jmp     l_f1_7                  #  11:     goto   7
l_f1_9_while_body:
    jmp     l_f1_8_while_cond       #  13:     goto   8_while_cond
l_f1_7:
l_f1_14_while_cond:
    call    dummyCHARfunc           #  16:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  17:     if     t1 < 100 goto 15_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_15_while_body     
    jmp     l_f1_13                 #  18:     goto   13
l_f1_15_while_body:
l_f1_18_while_cond:
    movl    $38516, %eax            #  21:     if     38516 < 11458 goto 19_while_body
    movl    $11458, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_19_while_body     
    jmp     l_f1_17                 #  22:     goto   17
l_f1_19_while_body:
    jmp     l_f1_18_while_cond      #  24:     goto   18_while_cond
l_f1_17:
    movl    $98, %eax               #  26:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_14_while_cond      #  27:     goto   14_while_cond
l_f1_13:

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 98 of <array 5 of <array 61 of <array 6 of <array 54 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 52 of <array 39 of <array 63 of <array 23 of <array 82 of <int>>>>>>> %ebp+16 ]
    #    -88(%ebp)   4  [ $v3       <int> %ebp-88 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $35152, %eax            #   0:     div    t1 <- 35152, 36251
    movl    $36251, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t2 <- t1, 74066
    movl    $74066, %ebx           
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   2:     param  0 <- t2
    pushl   %eax                   
    call    WriteInt                #   3:     call   WriteInt
    addl    $4, %esp               
    movl    $46828, %eax            #   4:     assign v3 <- 46828
    movl    %eax, -88(%ebp)        
    movl    $63151, %eax            #   5:     if     63151 < 54035 goto 6_if_true
    movl    $54035, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   6:     goto   7_if_false
l_f2_6_if_true:
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   9:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  10:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $16461, %eax            #  11:     mul    t4 <- 16461, t3
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  12:     add    t5 <- t4, 17311
    movl    $17311, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  13:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  14:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  15:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  16:     mul    t7 <- t5, t6
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  17:     add    t8 <- t7, 15697
    movl    $15697, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  18:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  19:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  20:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  21:     mul    t10 <- t8, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     add    t11 <- t10, 67714
    movl    $67714, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  23:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  24:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  25:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  26:     mul    t13 <- t11, t12
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  27:     add    t14 <- t13, 56437
    movl    $56437, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  28:     mul    t15 <- t14, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    16(%ebp), %eax          #  29:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  30:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  31:     add    t17 <- t15, t16
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    16(%ebp), %eax          #  32:     add    t18 <- v2, t17
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $49022, %eax            #  33:     assign @t18 <- 49022
    movl    -52(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f2_5                  #  34:     goto   5
l_f2_7_if_false:
l_f2_5:
    jmp     l_f2_2                  #  37:     goto   2
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
l_test_1_while_cond:
    movl    $99, %eax               #   1:     if     99 <= 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
l_test_5_while_cond:
    movl    $38693, %eax            #   5:     if     38693 < 73627 goto 6_while_body
    movl    $73627, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_6_while_body    
    jmp     l_test_4                #   6:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   8:     goto   5_while_cond
l_test_4:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_10               #  12:     goto   10
l_test_10:
    jmp     l_test_1_while_cond     #  14:     goto   1_while_cond
l_test_0:
    call    dummyBOOLfunc           #  16:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    movl    $78991, %eax            #  18:     assign v0 <- 78991
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
