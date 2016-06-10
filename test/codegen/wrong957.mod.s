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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 2 of <array 7 of <array 9 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 8 of <array 3 of <array 6 of <array 5 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]
    #    -21(%ebp)   1  [ $v5       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $v6       <int> %ebp-28 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t6 # 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f0_1                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f0_3:
    movzbl  -14(%ebp), %eax         #   9:     assign v5 <- t7
    movb    %al, -21(%ebp)         
    movl    $80206, %eax            #  10:     if     80206 <= 7998 goto 6_if_true
    movl    $7998, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #  11:     goto   7_if_false
l_f0_6_if_true:
    movl    $80220, %eax            #  13:     assign v6 <- 80220
    movl    %eax, -28(%ebp)        
    jmp     l_f0_5                  #  14:     goto   5
l_f0_7_if_false:
l_f0_5:
    movl    $11964, %eax            #  17:     if     11964 >= 1520 goto 11_if_true
    movl    $1520, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  18:     goto   12_if_false
l_f0_11_if_true:
    call    ReadInt                 #  20:     call   t8 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f0_10                 #  21:     goto   10
l_f0_12_if_false:
l_f0_10:

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
    #    -69(%ebp)   1  [ $t6       <char> %ebp-69 ]
    #    -70(%ebp)   1  [ $t7       <bool> %ebp-70 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 8 of <array 3 of <array 4 of <array 2 of <char>>>>>>> %ebp+12 ]
    #    -81(%ebp)   1  [ $v3       <char> %ebp-81 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -69(%ebp)         
    movzbl  -69(%ebp), %eax         #   1:     return t6
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   2:     call   t7 <- dummyBOOLfunc
    movb    %al, -70(%ebp)         
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   4:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   5:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $68504, %eax            #   6:     mul    t9 <- 68504, t8
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   7:     add    t10 <- t9, 58188
    movl    $58188, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   9:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  10:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  11:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     add    t13 <- t12, 94313
    movl    $94313, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  14:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  15:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  16:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  17:     add    t16 <- t15, 65978
    movl    $65978, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  20:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  21:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  22:     add    t19 <- t18, 42833
    movl    $42833, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  23:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  24:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  25:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  26:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  27:     add    t23 <- v2, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $100, %eax              #  28:     assign @t23 <- 100
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            

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
    #    -16(%ebp)   4  [ $t6       <ptr(4) to <array 2 of <array 8 of <array 3 of <array 6 of <array 5 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <ptr(4) to <array 8 of <array 2 of <array 7 of <array 9 of <array 4 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <bool> %ebp-21 ]
    #   -4080(%ebp)  4056  [ $v1       <array 8 of <array 2 of <array 7 of <array 9 of <array 4 of <char>>>>>> %ebp-4080 ]
    #   -5544(%ebp)  1464  [ $v2       <array 2 of <array 8 of <array 3 of <array 6 of <array 5 of <char>>>>>> %ebp-5544 ]
    #   -5545(%ebp)   1  [ $v3       <bool> %ebp-5545 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $5536, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1384, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-4080(%ebp)          # local array 'v1': 5 dimensions
    movl    $8,-4076(%ebp)          #   dimension 1: 8 elements
    movl    $2,-4072(%ebp)          #   dimension 2: 2 elements
    movl    $7,-4068(%ebp)          #   dimension 3: 7 elements
    movl    $9,-4064(%ebp)          #   dimension 4: 9 elements
    movl    $4,-4060(%ebp)          #   dimension 5: 4 elements
    movl    $5,-5544(%ebp)          # local array 'v2': 5 dimensions
    movl    $2,-5540(%ebp)          #   dimension 1: 2 elements
    movl    $8,-5536(%ebp)          #   dimension 2: 8 elements
    movl    $3,-5532(%ebp)          #   dimension 3: 3 elements
    movl    $6,-5528(%ebp)          #   dimension 4: 6 elements
    movl    $5,-5524(%ebp)          #   dimension 5: 5 elements

    # function body
l_f2_1_while_cond:
    movl    $78380, %eax            #   1:     if     78380 <= 85996 goto 2_while_body
    movl    $85996, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $99, %eax               #   4:     param  3 <- 99
    pushl   %eax                   
    leal    -5544(%ebp), %eax       #   5:     &()    t6 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     param  2 <- t6
    pushl   %eax                   
    movl    $97, %eax               #   7:     param  1 <- 97
    pushl   %eax                   
    leal    -4080(%ebp), %eax       #   8:     &()    t7 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  10:     call   t8 <- f0
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    movl    $9198, %eax             #  11:     if     9198 >= 1860 goto 6_if_true
    movl    $1860, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f2_6_if_true         
    jmp     l_f2_7_if_false         #  12:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #  14:     goto   5
l_f2_7_if_false:
l_f2_5:
    jmp     l_f2_1_while_cond       #  17:     goto   1_while_cond
l_f2_0:
    movl    $98, %eax               #  19:     return 98
    jmp     l_f2_exit              
l_f2_11_while_cond:
    jmp     l_f2_10                 #  21:     goto   10
    movl    $29479, %eax            #  22:     if     29479 >= 81001 goto 16_if_true
    movl    $81001, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_16_if_true        
    jmp     l_f2_17_if_false        #  23:     goto   17_if_false
l_f2_16_if_true:
    jmp     l_f2_15                 #  25:     goto   15
l_f2_17_if_false:
l_f2_15:
    movl    $0, %eax                #  28:     assign v3 <- 0
    movb    %al, -5545(%ebp)       
    jmp     l_f2_11_while_cond      #  29:     goto   11_while_cond
l_f2_10:

l_f2_exit:
    # epilogue
    addl    $5536, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 2 of <array 8 of <array 3 of <array 6 of <array 5 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 6 of <array 8 of <array 3 of <array 4 of <array 2 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 8 of <array 2 of <array 7 of <array 9 of <array 4 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <bool> %ebp-30 ]

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
    movl    $90822, %eax            #   0:     assign v0 <- 90822
    movl    %eax, v0               
    call    dummyProcedure          #   1:     call   dummyProcedure
    jmp     l_test_3_if_true        #   2:     goto   3_if_true
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
l_test_3_if_true:
    jmp     l_test_2                #   5:     goto   2
l_test_4_if_false:
l_test_2:
    movl    $99, %eax               #   8:     param  3 <- 99
    pushl   %eax                   
    leal    v4, %eax                #   9:     &()    t0 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     param  2 <- t0
    pushl   %eax                   
    leal    v3, %eax                #  11:     &()    t1 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  1 <- t1
    pushl   %eax                   
    movl    $23900, %eax            #  13:     param  0 <- 23900
    pushl   %eax                   
    call    f1                      #  14:     call   t2 <- f1
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  15:     param  1 <- t2
    pushl   %eax                   
    leal    v2, %eax                #  16:     &()    t3 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  18:     call   t4 <- f0
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  19:     if     t4 = 1 goto 8
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_8               
l_test_8:
    movl    $1, %eax                #  21:     assign t5 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_test_10               #  22:     goto   10
    movl    $0, %eax                #  23:     assign t5 <- 0
    movb    %al, -30(%ebp)         
l_test_10:
    movzbl  -30(%ebp), %eax         #  25:     assign v1 <- t5
    movb    %al, v1                
    movl    $97, %eax               #  26:     assign v5 <- 97
    movb    %al, v5                

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
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <array 8 of <array 2 of <array 7 of <array 9 of <array 4 of <char>>>>>>
    .long    5
    .long    8
    .long    2
    .long    7
    .long    9
    .long    4
    .skip 4032
v3:                                 # <array 6 of <array 8 of <array 3 of <array 4 of <array 2 of <char>>>>>>
    .long    5
    .long    6
    .long    8
    .long    3
    .long    4
    .long    2
    .skip 1152
v4:                                 # <array 2 of <array 8 of <array 3 of <array 6 of <array 5 of <char>>>>>>
    .long    5
    .long    2
    .long    8
    .long    3
    .long    6
    .long    5
    .skip 1440
v5:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
