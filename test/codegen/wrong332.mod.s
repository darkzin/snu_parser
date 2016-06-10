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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
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
    movl    $98, %eax               #   0:     if     98 >= 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $57957, %eax            #   3:     assign v2 <- 57957
    movl    %eax, -24(%ebp)        
    movl    $99, %eax               #   4:     assign v3 <- 99
    movb    %al, -25(%ebp)         
l_f0_7_while_cond:
    jmp     l_f0_6                  #   6:     goto   6
    jmp     l_f0_7_while_cond       #   7:     goto   7_while_cond
l_f0_6:
    movl    $47394, %eax            #   9:     return 47394
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  10:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $47712, %eax            #  11:     return 47712
    jmp     l_f0_exit              
    jmp     l_f0_0                  #  12:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $97, %eax               #  15:     assign v3 <- 97
    movb    %al, -25(%ebp)         
    jmp     l_f0_14_if_true         #  16:     goto   14_if_true
l_f0_14_if_true:
    call    ReadInt                 #  18:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $1, %eax                #  19:     assign v1 <- 1
    movb    %al, 8(%ebp)           
    jmp     l_f0_13                 #  20:     goto   13
l_f0_13:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t17      <bool> %ebp-45 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 10 of <array 10 of <array 10 of <array 8 of <char>>>>>>> %ebp+12 ]
    #    -85(%ebp)   1  [ $v3       <char> %ebp-85 ]

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
l_f1_1_while_cond:
    movl    $100, %eax              #   1:     if     100 <= 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $2, %eax                #   4:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   5:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   6:     call   t1 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $38108, %eax            #   7:     mul    t2 <- 38108, t1
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   8:     add    t3 <- t2, 91823
    movl    $91823, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  10:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  11:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  12:     mul    t5 <- t3, t4
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  13:     add    t6 <- t5, 14713
    movl    $14713, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  15:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  16:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  17:     mul    t8 <- t6, t7
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  18:     add    t9 <- t8, 83587
    movl    $83587, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  20:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  21:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -84(%ebp), %eax         #  22:     mul    t11 <- t9, t10
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     add    t12 <- t11, 41876
    movl    $41876, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     mul    t13 <- t12, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    12(%ebp), %eax          #  25:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  26:     call   t14 <- DOFS
    addl    $4, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  27:     add    t15 <- t13, t14
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    12(%ebp), %eax          #  28:     add    t16 <- v2, t15
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $98, %eax               #  29:     assign @t16 <- 98
    movl    -44(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_1_while_cond       #  30:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_7                  #  32:     goto   7
    jmp     l_f1_7                  #  33:     goto   7
    movl    $1, %eax                #  34:     assign t17 <- 1
    movb    %al, -45(%ebp)         
    jmp     l_f1_8                  #  35:     goto   8
l_f1_7:
    movl    $0, %eax                #  37:     assign t17 <- 0
    movb    %al, -45(%ebp)         
l_f1_8:
    movzbl  -45(%ebp), %eax         #  39:     assign v1 <- t17
    movb    %al, 8(%ebp)           
    call    dummyINTfunc            #  40:     call   t18 <- dummyINTfunc
    movl    %eax, -52(%ebp)        

l_f1_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 1 of <array 10 of <array 10 of <array 10 of <array 8 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t4       <char> %ebp-19 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #   -8044(%ebp)  8024  [ $v2       <array 1 of <array 10 of <array 10 of <array 10 of <array 8 of <char>>>>>> %ebp-8044 ]
    #   -8045(%ebp)   1  [ $v3       <bool> %ebp-8045 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8036, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2009, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-8044(%ebp)          # local array 'v2': 5 dimensions
    movl    $1,-8040(%ebp)          #   dimension 1: 1 elements
    movl    $10,-8036(%ebp)         #   dimension 2: 10 elements
    movl    $10,-8032(%ebp)         #   dimension 3: 10 elements
    movl    $10,-8028(%ebp)         #   dimension 4: 10 elements
    movl    $8,-8024(%ebp)          #   dimension 5: 8 elements

    # function body
    leal    -8044(%ebp), %eax       #   0:     &()    t1 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  1 <- t1
    pushl   %eax                   
    jmp     l_f2_1                  #   2:     goto   1
l_f2_1:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -17(%ebp)         
l_f2_3:
    movzbl  -17(%ebp), %eax         #   8:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #   9:     call   t3 <- f1
    addl    $8, %esp               
    movb    %al, -18(%ebp)         
    movl    $100, %eax              #  10:     if     100 = 100 goto 9_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  11:     goto   10_if_false
l_f2_9_if_true:
    movl    $86171, %eax            #  13:     return 86171
    jmp     l_f2_exit              
    movl    $1, %eax                #  14:     assign v3 <- 1
    movb    %al, -8045(%ebp)       
    movl    $53028, %eax            #  15:     if     53028 # 29019 goto 15_if_true
    movl    $29019, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_15_if_true        
    jmp     l_f2_16_if_false        #  16:     goto   16_if_false
l_f2_15_if_true:
    jmp     l_f2_18                 #  18:     goto   18
l_f2_18:
    movl    $89967, %eax            #  20:     return 89967
    jmp     l_f2_exit              
    jmp     l_f2_14                 #  21:     goto   14
l_f2_16_if_false:
l_f2_14:
    jmp     l_f2_8                  #  24:     goto   8
l_f2_10_if_false:
l_f2_8:
    call    dummyCHARfunc           #  27:     call   t4 <- dummyCHARfunc
    movb    %al, -19(%ebp)         

l_f2_exit:
    # epilogue
    addl    $8036, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   3:     goto   1_while_cond
    movl    $1, %eax                #   4:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_exit            
    call    dummyINTfunc            #   6:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_test_8_while_cond:
    movl    $52228, %eax            #   8:     if     52228 < 68306 goto 9_while_body
    movl    $68306, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_9_while_body    
    jmp     l_test_7                #   9:     goto   7
l_test_9_while_body:
    movl    $29355, %eax            #  11:     assign v1 <- 29355
    movl    %eax, v1               
    jmp     l_test_8_while_cond     #  12:     goto   8_while_cond
l_test_7:

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
