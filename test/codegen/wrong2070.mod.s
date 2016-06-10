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
    #    -13(%ebp)   1  [ $t12      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t14      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t15      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t16      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t17      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t18      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t19      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t20      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t21      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t22      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t23      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t24      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t25      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t26      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t27      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t28      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t29      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t30      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t31      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t32      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t33      <int> %ebp-100 ]
    #   -101(%ebp)   1  [ $t34      <char> %ebp-101 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 82 of <array 40 of <array 4 of <array 97 of <array 61 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 49 of <array 37 of <array 98 of <array 64 of <array 22 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #   -102(%ebp)   1  [ $v3       <bool> %ebp-102 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $92, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $23, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t12 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $36047, %eax            #   1:     mul    t13 <- 36047, 28037
    movl    $28037, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t14 <- t13, 41825
    movl    $41825, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   4:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   5:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #   6:     mul    t16 <- t14, t15
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    $6258, %eax             #   7:     mul    t17 <- 6258, 71306
    movl    $71306, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   8:     mul    t18 <- t17, 58037
    movl    $58037, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   9:     mul    t19 <- t18, 58391
    movl    $58391, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -32(%ebp), %eax         #  10:     add    t20 <- t16, t19
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $3, %eax                #  11:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  12:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  13:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  14:     mul    t22 <- t20, t21
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  15:     add    t23 <- t22, 60099
    movl    $60099, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $4, %eax                #  16:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  17:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  18:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  19:     mul    t25 <- t23, t24
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  20:     add    t26 <- t25, 80279
    movl    $80279, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $5, %eax                #  21:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  22:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  23:     call   t27 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  24:     mul    t28 <- t26, t27
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  25:     add    t29 <- t28, 44047
    movl    $44047, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  26:     mul    t30 <- t29, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    12(%ebp), %eax          #  27:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  28:     call   t31 <- DOFS
    addl    $4, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  29:     add    t32 <- t30, t31
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    12(%ebp), %eax          #  30:     add    t33 <- v1, t32
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $1, %eax                #  31:     assign @t33 <- 1
    movl    -100(%ebp), %edi       
    movb    %al, (%edi)            
l_f0_3_while_cond:
l_f0_7_while_cond:
    jmp     l_f0_6                  #  34:     goto   6
    jmp     l_f0_7_while_cond       #  35:     goto   7_while_cond
l_f0_6:
    jmp     l_f0_11_if_false        #  37:     goto   11_if_false
    jmp     l_f0_9                  #  38:     goto   9
l_f0_11_if_false:
l_f0_9:
    call    dummyCHARfunc           #  41:     call   t34 <- dummyCHARfunc
    movb    %al, -101(%ebp)        
    jmp     l_f0_3_while_cond       #  42:     goto   3_while_cond

l_f0_exit:
    # epilogue
    addl    $92, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t12      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t14      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t15      <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t16      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t17      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t18      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t19      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t20      <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $t21      <bool> %ebp-49 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 80 of <array 34 of <array 51 of <array 6 of <array 72 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 26 of <array 90 of <array 53 of <array 40 of <array 19 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 34 of <array 65 of <array 72 of <array 35 of <array 78 of <int>>>>>>> %ebp+20 ]
    #    -56(%ebp)   4  [ $v4       <int> %ebp-56 ]

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
    call    ReadInt                 #   0:     call   t12 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t13 <- t12, 52017
    movl    $52017, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t14 <- t13, 43230
    movl    $43230, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $55986, %eax            #   3:     if     55986 < t14 goto 1
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_1                 
    jmp     l_f1_2                  #   4:     goto   2
l_f1_1:
    movl    $1, %eax                #   6:     assign t15 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_3                  #   7:     goto   3
l_f1_2:
    movl    $0, %eax                #   9:     assign t15 <- 0
    movb    %al, -25(%ebp)         
l_f1_3:
    movzbl  -25(%ebp), %eax         #  11:     assign v1 <- t15
    movb    %al, 12(%ebp)          
    movl    $23566, %eax            #  12:     sub    t16 <- 23566, 50442
    movl    $50442, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     sub    t17 <- t16, 44130
    movl    $44130, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $11519, %eax            #  14:     add    t18 <- 11519, 58066
    movl    $58066, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  15:     sub    t19 <- t18, 65841
    movl    $65841, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  16:     add    t20 <- t19, 49126
    movl    $49126, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -36(%ebp), %eax         #  17:     if     t17 <= t20 goto 6
    movl    -48(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_6                 
    jmp     l_f1_7                  #  18:     goto   7
l_f1_6:
    movl    $1, %eax                #  20:     assign t21 <- 1
    movb    %al, -49(%ebp)         
    jmp     l_f1_8                  #  21:     goto   8
l_f1_7:
    movl    $0, %eax                #  23:     assign t21 <- 0
    movb    %al, -49(%ebp)         
l_f1_8:
    movzbl  -49(%ebp), %eax         #  25:     assign v1 <- t21
    movb    %al, 12(%ebp)          
    movl    $62959, %eax            #  26:     assign v4 <- 62959
    movl    %eax, -56(%ebp)        

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
    #    -16(%ebp)   4  [ $t12      <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t13      <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 99 of <array 32 of <array 17 of <array 85 of <array 94 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -18(%ebp)   1  [ $v2       <bool> %ebp-18 ]

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
    leal    _str_1, %eax            #   0:     &()    t12 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t12
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    movl    $0, %eax                #   3:     assign v2 <- 0
    movb    %al, -18(%ebp)         
    call    dummyCHARfunc           #   4:     call   t13 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   5:     param  0 <- t13
    pushl   %eax                   
    call    WriteChar               #   6:     call   WriteChar
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -24(%ebp)   4  [ $t10      <ptr(4) to <array 80 of <array 34 of <array 51 of <array 6 of <array 72 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t11      <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t2       <ptr(4) to <array 34 of <array 65 of <array 72 of <array 35 of <array 78 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t3       <ptr(4) to <array 26 of <array 90 of <array 53 of <array 40 of <array 19 of <bool>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t4       <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $t5       <ptr(4) to <array 80 of <array 34 of <array 51 of <array 6 of <array 72 of <char>>>>>>> %ebp-44 ]
    #    -45(%ebp)   1  [ $t6       <char> %ebp-45 ]
    #    -52(%ebp)   4  [ $t7       <ptr(4) to <array 34 of <array 65 of <array 72 of <array 35 of <array 78 of <int>>>>>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t8       <ptr(4) to <array 26 of <array 90 of <array 53 of <array 40 of <array 19 of <bool>>>>>>> %ebp-56 ]
    #    -57(%ebp)   1  [ $t9       <bool> %ebp-57 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $48, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $12, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $98, %eax               #   2:     assign v0 <- 98
    movb    %al, v0                
    call    ReadInt                 #   3:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyBOOLfunc           #   4:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_1                #   5:     goto   1
l_test_1:
    leal    v3, %eax                #   7:     &()    t2 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   8:     param  3 <- t2
    pushl   %eax                   
    leal    v2, %eax                #   9:     &()    t3 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  10:     param  2 <- t3
    pushl   %eax                   
    movl    $91555, %eax            #  11:     if     91555 > 91151 goto 10
    movl    $91151, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_10              
    jmp     l_test_11               #  12:     goto   11
l_test_10:
    movl    $1, %eax                #  14:     assign t4 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_test_12               #  15:     goto   12
l_test_11:
    movl    $0, %eax                #  17:     assign t4 <- 0
    movb    %al, -37(%ebp)         
l_test_12:
    movzbl  -37(%ebp), %eax         #  19:     param  1 <- t4
    pushl   %eax                   
    leal    v1, %eax                #  20:     &()    t5 <- v1
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  21:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  22:     call   t6 <- f1
    addl    $16, %esp              
    movb    %al, -45(%ebp)         
    movzbl  -45(%ebp), %eax         #  23:     assign v0 <- t6
    movb    %al, v0                
    leal    v3, %eax                #  24:     &()    t7 <- v3
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  25:     param  3 <- t7
    pushl   %eax                   
    leal    v2, %eax                #  26:     &()    t8 <- v2
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  27:     param  2 <- t8
    pushl   %eax                   
    movl    $100, %eax              #  28:     if     100 > 99 goto 15
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_15              
    jmp     l_test_16               #  29:     goto   16
l_test_15:
    movl    $1, %eax                #  31:     assign t9 <- 1
    movb    %al, -57(%ebp)         
    jmp     l_test_17               #  32:     goto   17
l_test_16:
    movl    $0, %eax                #  34:     assign t9 <- 0
    movb    %al, -57(%ebp)         
l_test_17:
    movzbl  -57(%ebp), %eax         #  36:     param  1 <- t9
    pushl   %eax                   
    leal    v1, %eax                #  37:     &()    t10 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  38:     param  0 <- t10
    pushl   %eax                   
    call    f1                      #  39:     call   t11 <- f1
    addl    $16, %esp              
    movb    %al, -25(%ebp)         

l_test_exit:
    # epilogue
    addl    $48, %esp               # remove locals
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
v0:                                 # <char>
    .skip    1
v1:                                 # <array 80 of <array 34 of <array 51 of <array 6 of <array 72 of <char>>>>>>
    .long    5
    .long   80
    .long   34
    .long   51
    .long    6
    .long   72
    .skip 59927040
v2:                                 # <array 26 of <array 90 of <array 53 of <array 40 of <array 19 of <bool>>>>>>
    .long    5
    .long   26
    .long   90
    .long   53
    .long   40
    .long   19
    .skip 94255200
v3:                                 # <array 34 of <array 65 of <array 72 of <array 35 of <array 78 of <int>>>>>>
    .long    5
    .long   34
    .long   65
    .long   72
    .long   35
    .long   78
    .skip 1737590400








    # end of global data section
    #-----------------------------------------

    .end
##################################################
