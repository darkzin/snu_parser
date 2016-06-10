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
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 58 of <array 80 of <array 89 of <array 59 of <array 73 of <bool>>>>>>> %ebp+12 ]
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
    movl    $2, %eax                #   0:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   1:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   2:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $19658, %eax            #   3:     mul    t9 <- 19658, t8
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   4:     add    t10 <- t9, 5865
    movl    $5865, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #   5:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   6:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   7:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   8:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     add    t13 <- t12, 83783
    movl    $83783, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  10:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  11:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  12:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  13:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  14:     add    t16 <- t15, 72357
    movl    $72357, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  15:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  16:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  17:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  18:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    $66423, %eax            #  19:     sub    t19 <- 66423, 55798
    movl    $55798, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  20:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  21:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  22:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  23:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  24:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    12(%ebp), %eax          #  25:     add    t24 <- v2, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $1, %eax                #  26:     assign @t24 <- 1
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_exit              
    jmp     l_f0_exit              

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
    #    -14(%ebp)   1  [ $t8       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 76 of <array 37 of <array 51 of <array 3 of <array 74 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 63 of <array 100 of <array 31 of <array 18 of <array 78 of <bool>>>>>>> %ebp+12 ]
    #    -20(%ebp)   4  [ $v3       <int> %ebp-20 ]

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
l_f1_1_while_cond:
    movl    $99, %eax               #   1:     if     99 = 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $53404, %eax            #   4:     assign v3 <- 53404
    movl    %eax, -20(%ebp)        
l_f1_6_while_cond:
    jmp     l_f1_6_while_cond       #   6:     goto   6_while_cond
    call    dummyCHARfunc           #   7:     call   t8 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_1_while_cond       #   8:     goto   1_while_cond
l_f1_0:
    call    dummyBOOLfunc           #  10:     call   t9 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #  11:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  12:     return t10
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <ptr(4) to <array 7 of <char>>> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $t9       <bool> %ebp-89 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 43 of <array 26 of <array 82 of <array 85 of <array 92 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 55 of <array 8 of <array 28 of <array 11 of <array 2 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 77 of <array 42 of <array 69 of <array 25 of <array 92 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 46 of <array 2 of <array 95 of <array 83 of <array 20 of <bool>>>>>>> %ebp+20 ]
    #    -90(%ebp)   1  [ $v5       <bool> %ebp-90 ]
    #    -96(%ebp)   4  [ $v6       <int> %ebp-96 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $91882, %eax            #   0:     add    t8 <- 91882, 8355
    movl    $8355, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $61298, %eax            #   1:     if     61298 > t8 goto 1
    movl    -88(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t9 <- 1
    movb    %al, -89(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t9 <- 0
    movb    %al, -89(%ebp)         
l_f2_3:
    movl    $92705, %eax            #   9:     mul    t10 <- 92705, 946
    movl    $946, %ebx             
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  11:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  12:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  13:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     add    t13 <- t12, 93942
    movl    $93942, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  15:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  17:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  18:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  19:     add    t16 <- t15, 70882
    movl    $70882, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  20:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  23:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  24:     add    t19 <- t18, 23226
    movl    $23226, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  27:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  28:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  29:     add    t22 <- t21, 90332
    movl    $90332, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  30:     mul    t23 <- t22, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  31:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  32:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  33:     add    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  34:     add    t26 <- v1, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movzbl  -89(%ebp), %eax         #  35:     assign @t26 <- t9
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $97739, %eax            #  36:     assign v6 <- 97739
    movl    %eax, -96(%ebp)        
    leal    _str_1, %eax            #  37:     &()    t27 <- _str_1
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  38:     param  0 <- t27
    pushl   %eax                   
    call    WriteStr                #  39:     call   WriteStr
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
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
    movl    $99, %eax               #   0:     if     99 >= 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
l_test_6_while_cond:
    movl    $91696, %eax            #  10:     add    t1 <- 91696, 38441
    movl    $38441, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     add    t2 <- t1, 27908
    movl    $27908, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $89611, %eax            #  12:     if     89611 # t2 goto 7_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_7_while_body    
    jmp     l_test_5                #  13:     goto   5
l_test_7_while_body:
    call    dummyBOOLfunc           #  15:     call   t3 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    jmp     l_test_6_while_cond     #  16:     goto   6_while_cond
l_test_5:
    movl    $25048, %eax            #  18:     mul    t4 <- 25048, 64926
    movl    $64926, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     mul    t5 <- t4, 24166
    movl    $24166, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  20:     mul    t6 <- t5, 51504
    movl    $51504, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  21:     assign v1 <- t6
    movl    %eax, v1               
    jmp     l_test_exit            
    call    dummyINTfunc            #  23:     call   t7 <- dummyINTfunc
    movl    %eax, -44(%ebp)        

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
