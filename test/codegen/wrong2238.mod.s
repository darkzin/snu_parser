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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 29 of <array 22 of <array 76 of <array 60 of <array 73 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 93 of <array 50 of <array 19 of <array 35 of <array 22 of <int>>>>>>> %ebp+20 ]

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
    jmp     l_f0_exit              
    movl    $98, %eax               #   1:     assign v1 <- 98
    movb    %al, 8(%ebp)           
    jmp     l_f0_6                  #   2:     goto   6
l_f0_6:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_5                  #   5:     goto   5
    movl    $0, %eax                #   6:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_5:
    movzbl  -13(%ebp), %eax         #   8:     assign v3 <- t1
    movb    %al, 16(%ebp)          

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -57(%ebp)   1  [ $t2       <bool> %ebp-57 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t3       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t4       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t5       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 12 of <array 88 of <array 21 of <array 76 of <array 45 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 69 of <array 96 of <array 5 of <array 20 of <array 8 of <bool>>>>>>> %ebp+20 ]
    #   -100(%ebp)   4  [ $v5       <int> %ebp-100 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $88, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $22, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t1
    jmp     l_f1_exit              
    jmp     l_f1_0                  #   2:     goto   0
l_f1_0:
    movl    $99, %eax               #   4:     if     99 = 97 goto 5
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_5                 
    jmp     l_f1_6                  #   5:     goto   6
l_f1_5:
    movl    $1, %eax                #   7:     assign t2 <- 1
    movb    %al, -57(%ebp)         
    jmp     l_f1_7                  #   8:     goto   7
l_f1_6:
    movl    $0, %eax                #  10:     assign t2 <- 0
    movb    %al, -57(%ebp)         
l_f1_7:
    movzbl  -57(%ebp), %eax         #  12:     assign v1 <- t2
    movb    %al, 8(%ebp)           
    call    ReadInt                 #  13:     call   t3 <- ReadInt
    movl    %eax, -72(%ebp)        
    movl    $2, %eax                #  14:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  15:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  16:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    $84106, %eax            #  17:     mul    t5 <- 84106, t4
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  18:     add    t6 <- t5, 90305
    movl    $90305, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $3, %eax                #  19:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  20:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  21:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  22:     mul    t8 <- t6, t7
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  23:     add    t9 <- t8, 35970
    movl    $35970, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    $4, %eax                #  24:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  25:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  26:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -96(%ebp), %eax         #  27:     mul    t11 <- t9, t10
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $81191, %eax            #  28:     sub    t12 <- 81191, 3818
    movl    $3818, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  29:     add    t13 <- t12, 26152
    movl    $26152, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -24(%ebp), %eax         #  30:     add    t14 <- t11, t13
    movl    -32(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  31:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  32:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  33:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  34:     mul    t16 <- t14, t15
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  35:     add    t17 <- t16, 13387
    movl    $13387, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  36:     mul    t18 <- t17, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    16(%ebp), %eax          #  37:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  38:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  39:     add    t20 <- t18, t19
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    16(%ebp), %eax          #  40:     add    t21 <- v3, t20
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -72(%ebp), %eax         #  41:     assign @t21 <- t3
    movl    -68(%ebp), %edi        
    movl    %eax, (%edi)           

l_f1_exit:
    # epilogue
    addl    $88, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]

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
    movl    $11284, %eax            #   0:     assign v2 <- 11284
    movl    %eax, 12(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
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
    jmp     l_test_exit            
    jmp     l_test_2                #   1:     goto   2
    jmp     l_test_2                #   2:     goto   2
l_test_2:
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_4                #   5:     goto   4
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_4:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    movl    $3987, %eax             #   9:     if     3987 # 86950 goto 8_if_true
    movl    $86950, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_8_if_true       
l_test_8_if_true:
    jmp     l_test_7                #  11:     goto   7
l_test_7:
    movl    $99, %eax               #  13:     assign v1 <- 99
    movb    %al, v1                
    movl    $99, %eax               #  14:     assign v1 <- 99
    movb    %al, v1                

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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
