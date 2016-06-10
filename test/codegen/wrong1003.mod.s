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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 9 of <array 4 of <array 3 of <array 10 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 5 of <array 5 of <array 4 of <array 2 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]

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
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
    jmp     l_f0_2_while_body       #   2:     goto   2_while_body
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_7_while_cond:
    call    dummyBOOLfunc           #   6:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   7:     if     t5 = 1 goto 8_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_8_while_body      
    jmp     l_f0_6                  #   8:     goto   6
l_f0_8_while_body:
    movl    $97, %eax               #  10:     if     97 >= 99 goto 10_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  11:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  13:     goto   9
l_f0_11_if_false:
l_f0_9:
    movl    $1, %eax                #  16:     return 1
    jmp     l_f0_exit              
    jmp     l_f0_7_while_cond       #  17:     goto   7_while_cond
l_f0_6:
l_f0_15_while_cond:
l_f0_19_while_cond:
    jmp     l_f0_18                 #  21:     goto   18
    jmp     l_f0_19_while_cond      #  22:     goto   19_while_cond
l_f0_18:
    jmp     l_f0_23_if_false        #  24:     goto   23_if_false
    jmp     l_f0_21                 #  25:     goto   21
l_f0_23_if_false:
l_f0_21:
    jmp     l_f0_15_while_cond      #  28:     goto   15_while_cond

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
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t22      <bool> %ebp-61 ]
    #    -62(%ebp)   1  [ $t5       <char> %ebp-62 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 7 of <array 6 of <array 6 of <array 3 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 1 of <array 10 of <array 7 of <array 9 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 5 of <array 6 of <array 4 of <array 1 of <bool>>>>>>> %ebp+16 ]
    #    -81(%ebp)   1  [ $v4       <char> %ebp-81 ]
    #    -82(%ebp)   1  [ $v5       <bool> %ebp-82 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $91980, %eax            #   0:     param  0 <- 91980
    pushl   %eax                   
    call    WriteInt                #   1:     call   WriteInt
    addl    $4, %esp               
    call    dummyCHARfunc           #   2:     call   t5 <- dummyCHARfunc
    movb    %al, -62(%ebp)         
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   4:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   5:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $34703, %eax            #   6:     mul    t7 <- 34703, t6
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   7:     add    t8 <- t7, 45721
    movl    $45721, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   9:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  10:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  11:     mul    t10 <- t8, t9
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     add    t11 <- t10, 84867
    movl    $84867, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  14:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  15:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  16:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     add    t14 <- t13, 75273
    movl    $75273, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  20:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  21:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  22:     add    t17 <- t16, 67657
    movl    $67657, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  23:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  24:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  25:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  26:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  27:     add    t21 <- v1, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movzbl  -62(%ebp), %eax         #  28:     assign @t21 <- t5
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_3                  #  29:     goto   3
    jmp     l_f1_4                  #  30:     goto   4
l_f1_3:
    movl    $1, %eax                #  32:     assign t22 <- 1
    movb    %al, -61(%ebp)         
    jmp     l_f1_5                  #  33:     goto   5
l_f1_4:
    movl    $0, %eax                #  35:     assign t22 <- 0
    movb    %al, -61(%ebp)         
l_f1_5:
    movzbl  -61(%ebp), %eax         #  37:     assign v5 <- t22
    movb    %al, -82(%ebp)         

l_f1_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 7 of <array 5 of <array 4 of <array 7 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 6 of <array 2 of <array 10 of <array 9 of <int>>>>>>> %ebp+16 ]
    #    -15(%ebp)   1  [ $v4       <char> %ebp-15 ]

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
    movl    $98, %eax               #   0:     if     98 < 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_6_if_false         #   3:     goto   6_if_false
    jmp     l_f2_4                  #   4:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_0                  #   7:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #  10:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  11:     assign v4 <- t5
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #  12:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    movl    $62811, %eax            #   1:     add    t0 <- 62811, 47902
    movl    $47902, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t1 <- t0, 64652
    movl    $64652, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t2 <- t1, 66865
    movl    $66865, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $27986, %eax            #   4:     if     27986 > t2 goto 2_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_2_while_body    
    jmp     l_test_0                #   5:     goto   0
l_test_2_while_body:
    movl    $99, %eax               #   7:     if     99 < 97 goto 5_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_5_if_true       
    jmp     l_test_6_if_false       #   8:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #  10:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_1_while_cond     #  13:     goto   1_while_cond
l_test_0:
    movl    $96302, %eax            #  15:     mul    t3 <- 96302, 72077
    movl    $72077, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     assign v0 <- t3
    movl    %eax, v0               
l_test_10_while_cond:
    jmp     l_test_9                #  18:     goto   9
    movl    $97, %eax               #  19:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  20:     call   WriteChar
    addl    $4, %esp               
    movl    $97, %eax               #  21:     if     97 # 98 goto 14_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_14_if_true      
    jmp     l_test_15_if_false      #  22:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  24:     goto   13
l_test_15_if_false:
l_test_13:
    jmp     l_test_10_while_cond    #  27:     goto   10_while_cond
l_test_9:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  30:     call   t4 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    call    WriteLn                 #  31:     call   WriteLn

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
