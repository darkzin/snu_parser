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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 2 of <array 9 of <array 5 of <array 3 of <bool>>>>>>> %ebp+8 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    call    dummyBOOLfunc           #   1:     call   t7 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t7 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   3:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_5_while_cond:
    call    ReadInt                 #   9:     call   t8 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f0_5_while_cond       #  10:     goto   5_while_cond
    call    dummyProcedure          #  11:     call   dummyProcedure

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t8       <ptr(4) to <array 8 of <array 2 of <array 9 of <array 5 of <array 3 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 8 of <array 7 of <array 2 of <array 1 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #   -2208(%ebp)  2184  [ $v5       <array 8 of <array 2 of <array 9 of <array 5 of <array 3 of <bool>>>>>> %ebp-2208 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2196, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $549, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2208(%ebp)          # local array 'v5': 5 dimensions
    movl    $8,-2204(%ebp)          #   dimension 1: 8 elements
    movl    $2,-2200(%ebp)          #   dimension 2: 2 elements
    movl    $9,-2196(%ebp)          #   dimension 3: 9 elements
    movl    $5,-2192(%ebp)          #   dimension 4: 5 elements
    movl    $3,-2188(%ebp)          #   dimension 5: 3 elements

    # function body
    movl    $98, %eax               #   0:     if     98 >= 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_1                 
l_f1_1:
    movl    $1, %eax                #   2:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_3                  #   3:     goto   3
    movl    $0, %eax                #   4:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f1_3:
    movzbl  -14(%ebp), %eax         #   6:     return t7
    jmp     l_f1_exit              
l_f1_7_while_cond:
    leal    -2208(%ebp), %eax       #   8:     &()    t8 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  10:     call   t9 <- f0
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    jmp     l_f1_10                 #  11:     goto   10
    jmp     l_f1_10                 #  12:     goto   10
    jmp     l_f1_11                 #  13:     goto   11
l_f1_10:
    movl    $1, %eax                #  15:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_12                 #  16:     goto   12
l_f1_11:
    movl    $0, %eax                #  18:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_12:
    movzbl  -21(%ebp), %eax         #  20:     if     t9 = t10 goto 8_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_8_while_body      
    jmp     l_f1_6                  #  21:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  23:     goto   7_while_cond
l_f1_6:
    movl    $100, %eax              #  25:     if     100 <= 98 goto 16_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_16_if_true        
    jmp     l_f1_17_if_false        #  26:     goto   17_if_false
l_f1_16_if_true:
    jmp     l_f1_21_if_false        #  28:     goto   21_if_false
    jmp     l_f1_19                 #  29:     goto   19
l_f1_21_if_false:
l_f1_19:
    movl    $98, %eax               #  32:     if     98 = 99 goto 23_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_23_if_true        
    jmp     l_f1_24_if_false        #  33:     goto   24_if_false
l_f1_23_if_true:
    jmp     l_f1_22                 #  35:     goto   22
l_f1_24_if_false:
l_f1_22:
    jmp     l_f1_15                 #  38:     goto   15
l_f1_17_if_false:
l_f1_15:

l_f1_exit:
    # epilogue
    addl    $2196, %esp             # remove locals
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
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -69(%ebp)   1  [ $t24      <char> %ebp-69 ]
    #    -70(%ebp)   1  [ $t25      <bool> %ebp-70 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 9 of <array 7 of <array 9 of <array 3 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 3 of <array 7 of <array 3 of <array 3 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 2 of <array 2 of <array 9 of <array 6 of <array 9 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 4 of <array 7 of <array 2 of <array 9 of <array 5 of <bool>>>>>>> %ebp+20 ]
    #    -88(%ebp)   4  [ $v6       <int> %ebp-88 ]

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
    movl    $59527, %eax            #   0:     add    t7 <- 59527, 4582
    movl    $4582, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $2, %eax                #   1:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   2:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   3:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $97945, %eax            #   4:     mul    t9 <- 97945, t8
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   5:     add    t10 <- t9, 85245
    movl    $85245, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #   6:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   7:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   8:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   9:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     add    t13 <- t12, 64700
    movl    $64700, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  12:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  13:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  14:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  15:     add    t16 <- t15, 2038
    movl    $2038, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  16:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  17:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  18:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  19:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  20:     add    t19 <- t18, 2457
    movl    $2457, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  21:     mul    t20 <- t19, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  22:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  23:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  24:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  25:     add    t23 <- v3, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -76(%ebp), %eax         #  26:     assign @t23 <- t7
    movl    -68(%ebp), %edi        
    movl    %eax, (%edi)           
    call    dummyCHARfunc           #  27:     call   t24 <- dummyCHARfunc
    movb    %al, -69(%ebp)         
    movzbl  -69(%ebp), %eax         #  28:     if     t24 # 98 goto 2
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_2                 
    jmp     l_f2_3                  #  29:     goto   3
l_f2_2:
    movl    $1, %eax                #  31:     assign t25 <- 1
    movb    %al, -70(%ebp)         
    jmp     l_f2_4                  #  32:     goto   4
l_f2_3:
    movl    $0, %eax                #  34:     assign t25 <- 0
    movb    %al, -70(%ebp)         
l_f2_4:
    movzbl  -70(%ebp), %eax         #  36:     return t25
    jmp     l_f2_exit              
    call    dummyProcedure          #  37:     call   dummyProcedure

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t0 >= 98 goto 1
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_1               
    jmp     l_test_2                #   2:     goto   2
l_test_1:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_3                #   5:     goto   3
l_test_2:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_3:
    movzbl  -14(%ebp), %eax         #   9:     assign v0 <- t1
    movb    %al, v0                
    call    dummyCHARfunc           #  10:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  11:     assign v1 <- t2
    movb    %al, v1                
    call    dummyCHARfunc           #  12:     call   t3 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    call    dummyCHARfunc           #  13:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    call    dummyINTfunc            #  14:     call   t5 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     if     t5 # 23666 goto 9
    movl    $23666, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_9               
    jmp     l_test_10               #  16:     goto   10
l_test_9:
    movl    $1, %eax                #  18:     assign t6 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_11               #  19:     goto   11
l_test_10:
    movl    $0, %eax                #  21:     assign t6 <- 0
    movb    %al, -25(%ebp)         
l_test_11:
    movzbl  -25(%ebp), %eax         #  23:     assign v0 <- t6
    movb    %al, v0                
    movl    $6580, %eax             #  24:     if     6580 >= 36677 goto 14_if_true
    movl    $36677, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_14_if_true      
    jmp     l_test_15_if_false      #  25:     goto   15_if_false
l_test_14_if_true:
    movl    $97, %eax               #  27:     if     97 > 99 goto 18_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_18_if_true      
    jmp     l_test_19_if_false      #  28:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  30:     goto   17
l_test_19_if_false:
l_test_17:
    movl    $99, %eax               #  33:     assign v1 <- 99
    movb    %al, v1                
l_test_23_while_cond:
    jmp     l_test_23_while_cond    #  35:     goto   23_while_cond
    jmp     l_test_13               #  36:     goto   13
l_test_15_if_false:
l_test_13:

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
