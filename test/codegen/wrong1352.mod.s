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
    #    -16(%ebp)   4  [ $t14      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t15      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t16      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t17      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t18      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t19      <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t20      <char> %ebp-37 ]
    #    -44(%ebp)   4  [ $t21      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t22      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t23      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t24      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t25      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t26      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t27      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t28      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t29      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t30      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t31      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t32      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t33      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t34      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t35      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t36      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t37      <int> %ebp-108 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 14 of <array 20 of <array 54 of <array 67 of <array 77 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 79 of <array 23 of <array 83 of <array 50 of <array 92 of <bool>>>>>>> %ebp+12 ]
    #   -112(%ebp)   4  [ $v3       <int> %ebp-112 ]
    #   -113(%ebp)   1  [ $v4       <char> %ebp-113 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $104, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $26, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $47575, %eax            #   0:     mul    t14 <- 47575, 45448
    movl    $45448, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t15 <- t14, 15873
    movl    $15873, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     div    t16 <- t15, 46579
    movl    $46579, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     div    t17 <- t16, 99957
    movl    $99957, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     div    t18 <- t17, 25184
    movl    $25184, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     add    t19 <- t18, 38237
    movl    $38237, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     assign v3 <- t19
    movl    %eax, -112(%ebp)       
    call    dummyCHARfunc           #   7:     call   t20 <- dummyCHARfunc
    movb    %al, -37(%ebp)         
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   9:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  10:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    $54911, %eax            #  11:     mul    t22 <- 54911, t21
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    $34412, %eax            #  12:     add    t23 <- 34412, 68827
    movl    $68827, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  13:     add    t24 <- t22, t23
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $3, %eax                #  14:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  16:     call   t25 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  17:     mul    t26 <- t24, t25
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  18:     add    t27 <- t26, 72185
    movl    $72185, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $4, %eax                #  19:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  21:     call   t28 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  22:     mul    t29 <- t27, t28
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  23:     add    t30 <- t29, 55112
    movl    $55112, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $5, %eax                #  24:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  25:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  26:     call   t31 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  27:     mul    t32 <- t30, t31
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  28:     add    t33 <- t32, 11754
    movl    $11754, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  29:     mul    t34 <- t33, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    8(%ebp), %eax           #  30:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  31:     call   t35 <- DOFS
    addl    $4, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  32:     add    t36 <- t34, t35
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    8(%ebp), %eax           #  33:     add    t37 <- v1, t36
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $97, %eax               #  34:     assign @t37 <- 97
    movl    -108(%ebp), %edi       
    movb    %al, (%edi)            

l_f0_exit:
    # epilogue
    addl    $104, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t14      <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t15      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t16      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t17      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t18      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t19      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t20      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t21      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t22      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t23      <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t24      <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t25      <int> %ebp-60 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 79 of <array 97 of <array 8 of <array 76 of <array 27 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 11 of <array 55 of <array 45 of <array 22 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 22 of <array 90 of <array 43 of <array 71 of <array 45 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 61 of <array 82 of <array 59 of <array 11 of <array 74 of <char>>>>>>> %ebp+20 ]

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
    leal    _str_1, %eax            #   0:     &()    t14 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t14
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    movl    $68619, %eax            #   3:     add    t15 <- 68619, 84656
    movl    $84656, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t16 <- t15, 70370
    movl    $70370, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $17905, %eax            #   5:     div    t17 <- 17905, 22062
    movl    $22062, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     div    t18 <- t17, 52476
    movl    $52476, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     div    t19 <- t18, 10347
    movl    $10347, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   8:     mul    t20 <- t19, 98552
    movl    $98552, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   9:     mul    t21 <- t20, 72177
    movl    $72177, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  10:     div    t22 <- t21, 28684
    movl    $28684, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  11:     div    t23 <- t22, 34987
    movl    $34987, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -24(%ebp), %eax         #  12:     if     t16 > t23 goto 2
    movl    -52(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_2                 
    jmp     l_f1_3                  #  13:     goto   3
l_f1_2:
    movl    $1, %eax                #  15:     assign t24 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f1_4                  #  16:     goto   4
l_f1_3:
    movl    $0, %eax                #  18:     assign t24 <- 0
    movb    %al, -53(%ebp)         
l_f1_4:
    movzbl  -53(%ebp), %eax         #  20:     return t24
    jmp     l_f1_exit              
    movl    $3469, %eax             #  21:     mul    t25 <- 3469, 59883
    movl    $59883, %ebx           
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  22:     param  0 <- t25
    pushl   %eax                   
    call    WriteInt                #  23:     call   WriteInt
    addl    $4, %esp               

l_f1_exit:
    # epilogue
    addl    $48, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t14      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t15      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t16      <char> %ebp-21 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 38 of <array 91 of <array 3 of <array 12 of <array 14 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]

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
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    movl    $85047, %eax            #   2:     assign v3 <- 85047
    movl    %eax, 16(%ebp)         
    jmp     l_f2_1_while_cond       #   3:     goto   1_while_cond
l_f2_0:
l_f2_6_while_cond:
    movl    $59329, %eax            #   6:     sub    t14 <- 59329, 34927
    movl    $34927, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     sub    t15 <- t14, 68801
    movl    $68801, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $56631, %eax            #   8:     if     56631 >= t15 goto 7_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_7_while_body      
    jmp     l_f2_5                  #   9:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  11:     goto   6_while_cond
l_f2_5:
    call    dummyCHARfunc           #  13:     call   t16 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  14:     return t16
    jmp     l_f2_exit              

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
    #    -24(%ebp)   4  [ $t10      <ptr(4) to <array 22 of <array 90 of <array 43 of <array 71 of <array 45 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <ptr(4) to <array 2 of <array 11 of <array 55 of <array 45 of <array 22 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <ptr(4) to <array 79 of <array 97 of <array 8 of <array 76 of <array 27 of <int>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t13      <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t2       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t3       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t4       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t5       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t6       <ptr(4) to <array 79 of <array 23 of <array 83 of <array 50 of <array 92 of <bool>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t7       <ptr(4) to <array 14 of <array 20 of <array 54 of <array 67 of <array 77 of <char>>>>>>> %ebp-60 ]
    #    -61(%ebp)   1  [ $t8       <char> %ebp-61 ]
    #    -68(%ebp)   4  [ $t9       <ptr(4) to <array 61 of <array 82 of <array 59 of <array 11 of <array 74 of <char>>>>>>> %ebp-68 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $56, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $14, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   2:     if     100 >= t0 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    movl    $17193, %eax            #   7:     mul    t1 <- 17193, 36904
    movl    $36904, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     mul    t2 <- t1, 7596
    movl    $7596, %ebx            
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   9:     assign v0 <- t2
    movl    %eax, v0               
    movl    $85652, %eax            #  10:     add    t3 <- 85652, 93983
    movl    $93983, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  11:     sub    t4 <- t3, 143
    movl    $143, %ebx             
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  12:     sub    t5 <- t4, 24167
    movl    $24167, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  13:     assign v0 <- t5
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_9_while_cond:
    jmp     l_test_8                #  17:     goto   8
l_test_12_while_cond:
    jmp     l_test_12_while_cond    #  19:     goto   12_while_cond
l_test_15_while_cond:
    jmp     l_test_14               #  21:     goto   14
    jmp     l_test_15_while_cond    #  22:     goto   15_while_cond
l_test_14:
    jmp     l_test_exit            
l_test_19_while_cond:
    movl    $1, %eax                #  26:     if     1 = 1 goto 20_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_20_while_body   
    jmp     l_test_18               #  27:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  29:     goto   19_while_cond
l_test_18:
    leal    v2, %eax                #  31:     &()    t6 <- v2
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  32:     param  1 <- t6
    pushl   %eax                   
    leal    v1, %eax                #  33:     &()    t7 <- v1
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  34:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  35:     call   t8 <- f0
    addl    $8, %esp               
    movb    %al, -61(%ebp)         
    leal    v6, %eax                #  36:     &()    t9 <- v6
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  37:     param  3 <- t9
    pushl   %eax                   
    leal    v5, %eax                #  38:     &()    t10 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  39:     param  2 <- t10
    pushl   %eax                   
    leal    v4, %eax                #  40:     &()    t11 <- v4
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  41:     param  1 <- t11
    pushl   %eax                   
    leal    v3, %eax                #  42:     &()    t12 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  43:     param  0 <- t12
    pushl   %eax                   
    call    f1                      #  44:     call   t13 <- f1
    addl    $16, %esp              
    movb    %al, -33(%ebp)         
    jmp     l_test_9_while_cond     #  45:     goto   9_while_cond
l_test_8:

l_test_exit:
    # epilogue
    addl    $56, %esp               # remove locals
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
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <array 14 of <array 20 of <array 54 of <array 67 of <array 77 of <char>>>>>>
    .long    5
    .long   14
    .long   20
    .long   54
    .long   67
    .long   77
    .skip 78004080
v2:                                 # <array 79 of <array 23 of <array 83 of <array 50 of <array 92 of <bool>>>>>>
    .long    5
    .long   79
    .long   23
    .long   83
    .long   50
    .long   92
    .skip 693730600
v3:                                 # <array 79 of <array 97 of <array 8 of <array 76 of <array 27 of <int>>>>>>
    .long    5
    .long   79
    .long   97
    .long    8
    .long   76
    .long   27
    .skip 503183232
v4:                                 # <array 2 of <array 11 of <array 55 of <array 45 of <array 22 of <bool>>>>>>
    .long    5
    .long    2
    .long   11
    .long   55
    .long   45
    .long   22
    .skip 1197900
v5:                                 # <array 22 of <array 90 of <array 43 of <array 71 of <array 45 of <char>>>>>>
    .long    5
    .long   22
    .long   90
    .long   43
    .long   71
    .long   45
    .skip 272022300
v6:                                 # <array 61 of <array 82 of <array 59 of <array 11 of <array 74 of <char>>>>>>
    .long    5
    .long   61
    .long   82
    .long   59
    .long   11
    .long   74
    .skip 240226052








    # end of global data section
    #-----------------------------------------

    .end
##################################################
