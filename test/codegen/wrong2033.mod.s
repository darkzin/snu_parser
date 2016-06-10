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
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -73(%ebp)   1  [ $t25      <bool> %ebp-73 ]
    #    -74(%ebp)   1  [ $t26      <char> %ebp-74 ]
    #    -75(%ebp)   1  [ $t7       <char> %ebp-75 ]
    #    -76(%ebp)   1  [ $t8       <bool> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 93 of <array 15 of <array 52 of <array 22 of <array 36 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #    -81(%ebp)   1  [ $v3       <bool> %ebp-81 ]

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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -75(%ebp)         
    movzbl  -75(%ebp), %eax         #   1:     return t7
    jmp     l_f0_exit              
l_f0_2_while_cond:
    movl    $23715, %eax            #   3:     if     23715 <= 62578 goto 3_while_body
    movl    $62578, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_3_while_body      
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
    jmp     l_f0_7_if_false         #   6:     goto   7_if_false
    jmp     l_f0_5                  #   7:     goto   5
l_f0_7_if_false:
l_f0_5:
    movl    $0, %eax                #  10:     if     0 # 0 goto 9
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_9                 
    jmp     l_f0_10                 #  11:     goto   10
l_f0_9:
    movl    $1, %eax                #  13:     assign t8 <- 1
    movb    %al, -76(%ebp)         
    jmp     l_f0_11                 #  14:     goto   11
l_f0_10:
    movl    $0, %eax                #  16:     assign t8 <- 0
    movb    %al, -76(%ebp)         
l_f0_11:
    movl    $2, %eax                #  18:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  20:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $19438, %eax            #  21:     mul    t10 <- 19438, t9
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  22:     add    t11 <- t10, 16879
    movl    $16879, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  23:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  24:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  25:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  26:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  27:     add    t14 <- t13, 45413
    movl    $45413, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  28:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  29:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  30:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  31:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  32:     add    t17 <- t16, 41477
    movl    $41477, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  33:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  34:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  35:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  36:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  37:     add    t20 <- t19, 54169
    movl    $54169, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  38:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  39:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  40:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  41:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  42:     add    t24 <- v1, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movzbl  -76(%ebp), %eax         #  43:     assign @t24 <- t8
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyBOOLfunc           #  44:     call   t25 <- dummyBOOLfunc
    movb    %al, -73(%ebp)         
    jmp     l_f0_2_while_cond       #  45:     goto   2_while_cond
l_f0_1:
    call    dummyCHARfunc           #  47:     call   t26 <- dummyCHARfunc
    movb    %al, -74(%ebp)         
    movzbl  -74(%ebp), %eax         #  48:     assign v2 <- t26
    movb    %al, 12(%ebp)          

l_f0_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <ptr(4) to <array 93 of <array 15 of <array 52 of <array 22 of <array 36 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t9       <ptr(4) to <array 93 of <array 15 of <array 52 of <array 22 of <array 36 of <bool>>>>>>> %ebp-28 ]
    #   -57451732(%ebp)  57451704  [ $v1       <array 93 of <array 15 of <array 52 of <array 22 of <array 36 of <bool>>>>>> %ebp-57451732 ]
    #   -57451733(%ebp)   1  [ $v2       <bool> %ebp-57451733 ]
    #   -57451734(%ebp)   1  [ $v3       <char> %ebp-57451734 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $57451724, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $14362931, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-57451732(%ebp)      # local array 'v1': 5 dimensions
    movl    $93,-57451728(%ebp)     #   dimension 1: 93 elements
    movl    $15,-57451724(%ebp)     #   dimension 2: 15 elements
    movl    $52,-57451720(%ebp)     #   dimension 3: 52 elements
    movl    $22,-57451716(%ebp)     #   dimension 4: 22 elements
    movl    $36,-57451712(%ebp)     #   dimension 5: 36 elements

    # function body
    movl    $97, %eax               #   0:     param  1 <- 97
    pushl   %eax                   
    leal    -57451732(%ebp), %eax   #   1:     &()    t7 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #   3:     call   t8 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   4:     return t8
    jmp     l_f1_exit              
    jmp     l_f1_3_if_false         #   5:     goto   3_if_false
    movl    $0, %eax                #   6:     assign v2 <- 0
    movb    %al, -57451733(%ebp)   
    movl    $99, %eax               #   7:     return 99
    jmp     l_f1_exit              
    movl    $97, %eax               #   8:     assign v3 <- 97
    movb    %al, -57451734(%ebp)   
    jmp     l_f1_1                  #   9:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $100, %eax              #  12:     param  1 <- 100
    pushl   %eax                   
    leal    -57451732(%ebp), %eax   #  13:     &()    t9 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  15:     call   t10 <- f0
    addl    $8, %esp               
    movb    %al, -13(%ebp)         
l_f1_14_while_cond:
    movl    $45555, %eax            #  17:     if     45555 >= 37459 goto 15_while_body
    movl    $37459, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_15_while_body     
    jmp     l_f1_13                 #  18:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  20:     goto   14_while_cond
l_f1_13:
    call    dummyProcedure          #  22:     call   dummyProcedure
    movl    $25162, %eax            #  23:     param  0 <- 25162
    pushl   %eax                   
    call    WriteInt                #  24:     call   WriteInt
    addl    $4, %esp               
l_f1_20_while_cond:
    jmp     l_f1_19                 #  26:     goto   19
    jmp     l_f1_20_while_cond      #  27:     goto   20_while_cond
l_f1_19:
    jmp     l_f1_9                  #  29:     goto   9
l_f1_9:

l_f1_exit:
    # epilogue
    addl    $57451724, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 31 of <array 27 of <array 66 of <array 26 of <array 76 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]

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
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   1:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v3 <- t7
    movb    %al, 16(%ebp)          
    jmp     l_f2_exit              

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
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 93 of <array 15 of <array 52 of <array 22 of <array 36 of <bool>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <char> %ebp-37 ]

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
    jmp     l_test_exit            
    movl    $89877, %eax            #   1:     mul    t0 <- 89877, 75502
    movl    $75502, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t1 <- t0, 58535
    movl    $58535, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t2 <- t1, 29
    movl    $29, %ebx              
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     add    t3 <- t2, 2553
    movl    $2553, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     assign v0 <- t3
    movl    %eax, v0               
    call    ReadInt                 #   6:     call   t4 <- ReadInt
    movl    %eax, -32(%ebp)        
    jmp     l_test_exit            
    movl    $99, %eax               #   8:     param  1 <- 99
    pushl   %eax                   
    leal    v2, %eax                #   9:     &()    t5 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  10:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  11:     call   t6 <- f0
    addl    $8, %esp               
    movb    %al, -37(%ebp)         
    movzbl  -37(%ebp), %eax         #  12:     assign v1 <- t6
    movb    %al, v1                
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 93 of <array 15 of <array 52 of <array 22 of <array 36 of <bool>>>>>>
    .long    5
    .long   93
    .long   15
    .long   52
    .long   22
    .long   36
    .skip 57451680








    # end of global data section
    #-----------------------------------------

    .end
##################################################
