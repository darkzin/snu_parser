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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t9       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

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
    movl    $100, %eax              #   0:     if     100 < 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    leal    _str_1, %eax            #   3:     &()    t9 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  0 <- t9
    pushl   %eax                   
    call    WriteStr                #   5:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #   9:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #  10:     call   t11 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  11:     return t11
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t14      <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t15      <bool> %ebp-27 ]
    #    -28(%ebp)   1  [ $t16      <bool> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 3 of <array 6 of <array 10 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 1 of <array 6 of <array 10 of <array 4 of <bool>>>>>>> %ebp+20 ]

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
    movl    $6336, %eax             #   0:     div    t9 <- 6336, 2500
    movl    $2500, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   1:     div    t10 <- t9, 30308
    movl    $30308, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t11 <- t10, 95725
    movl    $95725, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t12 <- t11, 9443
    movl    $9443, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     param  0 <- t12
    pushl   %eax                   
    call    f0                      #   5:     call   t13 <- f0
    addl    $4, %esp               
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   6:     return t13
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   7:     call   t14 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         
    movl    $97, %eax               #   8:     if     97 = 99 goto 3_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   9:     goto   4_if_false
l_f1_3_if_true:
    movl    $91240, %eax            #  11:     assign v1 <- 91240
    movl    %eax, 12(%ebp)         
    jmp     l_f1_9_if_false         #  12:     goto   9_if_false
    jmp     l_f1_7                  #  13:     goto   7
l_f1_9_if_false:
l_f1_7:
    call    dummyBOOLfunc           #  16:     call   t15 <- dummyBOOLfunc
    movb    %al, -27(%ebp)         
    movl    $23292, %eax            #  17:     if     23292 # 81810 goto 12
    movl    $81810, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_12                
    jmp     l_f1_13                 #  18:     goto   13
l_f1_12:
    movl    $1, %eax                #  20:     assign t16 <- 1
    movb    %al, -28(%ebp)         
    jmp     l_f1_14                 #  21:     goto   14
l_f1_13:
    movl    $0, %eax                #  23:     assign t16 <- 0
    movb    %al, -28(%ebp)         
l_f1_14:
    movzbl  -28(%ebp), %eax         #  25:     assign v2 <- t16
    movb    %al, 16(%ebp)          
    jmp     l_f1_2                  #  26:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #    -80(%ebp)   4  [ $t26      <ptr(4) to <array 6 of <array 1 of <array 6 of <array 10 of <array 4 of <bool>>>>>>> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t32      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t33      <ptr(4) to <array 9 of <array 3 of <array 6 of <array 10 of <array 10 of <bool>>>>>>> %ebp-108 ]
    #   -109(%ebp)   1  [ $t34      <char> %ebp-109 ]
    #   -110(%ebp)   1  [ $t9       <bool> %ebp-110 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 10 of <array 5 of <array 8 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 9 of <array 2 of <array 9 of <array 8 of <bool>>>>>>> %ebp+20 ]
    #   -116(%ebp)   4  [ $v4       <int> %ebp-116 ]
    #   -16340(%ebp)  16224  [ $v5       <array 9 of <array 3 of <array 6 of <array 10 of <array 10 of <bool>>>>>> %ebp-16340 ]
    #   -17804(%ebp)  1464  [ $v6       <array 6 of <array 1 of <array 6 of <array 10 of <array 4 of <bool>>>>>> %ebp-17804 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $17792, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $4448, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-16340(%ebp)         # local array 'v5': 5 dimensions
    movl    $9,-16336(%ebp)         #   dimension 1: 9 elements
    movl    $3,-16332(%ebp)         #   dimension 2: 3 elements
    movl    $6,-16328(%ebp)         #   dimension 3: 6 elements
    movl    $10,-16324(%ebp)        #   dimension 4: 10 elements
    movl    $10,-16320(%ebp)        #   dimension 5: 10 elements
    movl    $5,-17804(%ebp)         # local array 'v6': 5 dimensions
    movl    $6,-17800(%ebp)         #   dimension 1: 6 elements
    movl    $1,-17796(%ebp)         #   dimension 2: 1 elements
    movl    $6,-17792(%ebp)         #   dimension 3: 6 elements
    movl    $10,-17788(%ebp)        #   dimension 4: 10 elements
    movl    $4,-17784(%ebp)         #   dimension 5: 4 elements

    # function body
    movl    $51099, %eax            #   0:     assign v4 <- 51099
    movl    %eax, -116(%ebp)       
    jmp     l_f2_3                  #   1:     goto   3
    movl    $1, %eax                #   2:     assign t9 <- 1
    movb    %al, -110(%ebp)        
    jmp     l_f2_4                  #   3:     goto   4
l_f2_3:
    movl    $0, %eax                #   5:     assign t9 <- 0
    movb    %al, -110(%ebp)        
l_f2_4:
    movl    $2, %eax                #   7:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   8:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #   9:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $5204, %eax             #  10:     mul    t11 <- 5204, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     add    t12 <- t11, 52729
    movl    $52729, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  12:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  13:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  14:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  15:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  16:     add    t15 <- t14, 45710
    movl    $45710, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  17:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  18:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  19:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  20:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  21:     add    t18 <- t17, 73248
    movl    $73248, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  22:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  23:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  24:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  25:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  26:     add    t21 <- t20, 92345
    movl    $92345, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  27:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    20(%ebp), %eax          #  28:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  29:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  30:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    20(%ebp), %eax          #  31:     add    t25 <- v3, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movzbl  -110(%ebp), %eax        #  32:     assign @t25 <- t9
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            
    leal    -17804(%ebp), %eax      #  33:     &()    t26 <- v6
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  34:     param  3 <- t26
    pushl   %eax                   
    movl    $0, %eax                #  35:     param  2 <- 0
    pushl   %eax                   
    movl    $77041, %eax            #  36:     add    t27 <- 77041, 44607
    movl    $44607, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  37:     add    t28 <- t27, 89242
    movl    $89242, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  38:     sub    t29 <- t28, 98752
    movl    $98752, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  39:     add    t30 <- t29, 63107
    movl    $63107, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    call    ReadInt                 #  40:     call   t31 <- ReadInt
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  41:     add    t32 <- t30, t31
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  42:     param  1 <- t32
    pushl   %eax                   
    leal    -16340(%ebp), %eax      #  43:     &()    t33 <- v5
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  44:     param  0 <- t33
    pushl   %eax                   
    call    f1                      #  45:     call   t34 <- f1
    addl    $16, %esp              
    movb    %al, -109(%ebp)        

l_f2_exit:
    # epilogue
    addl    $17792, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 6 of <array 1 of <array 6 of <array 10 of <array 4 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 9 of <array 3 of <array 6 of <array 10 of <array 10 of <bool>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <char> %ebp-37 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t8       <bool> %ebp-45 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
    leal    v1, %eax                #   1:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  3 <- t0
    pushl   %eax                   
    jmp     l_test_2                #   3:     goto   2
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $1, %eax                #   6:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_4                #   7:     goto   4
l_test_3:
    movl    $0, %eax                #   9:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_4:
    movzbl  -17(%ebp), %eax         #  11:     param  2 <- t1
    pushl   %eax                   
    movl    $38309, %eax            #  12:     add    t2 <- 38309, 71558
    movl    $71558, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     sub    t3 <- t2, 48815
    movl    $48815, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     add    t4 <- t3, 64002
    movl    $64002, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     param  1 <- t4
    pushl   %eax                   
    leal    v0, %eax                #  16:     &()    t5 <- v0
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  17:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  18:     call   t6 <- f1
    addl    $16, %esp              
    movb    %al, -37(%ebp)         
    call    ReadInt                 #  19:     call   t7 <- ReadInt
    movl    %eax, -44(%ebp)        
    movl    $24903, %eax            #  20:     if     24903 >= t7 goto 7_if_true
    movl    -44(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_7_if_true       
    jmp     l_test_8_if_false       #  21:     goto   8_if_false
l_test_7_if_true:
    movl    $100, %eax              #  23:     if     100 = 97 goto 11
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_11              
    jmp     l_test_12               #  24:     goto   12
l_test_11:
    movl    $1, %eax                #  26:     assign t8 <- 1
    movb    %al, -45(%ebp)         
    jmp     l_test_13               #  27:     goto   13
l_test_12:
    movl    $0, %eax                #  29:     assign t8 <- 0
    movb    %al, -45(%ebp)         
l_test_13:
    movzbl  -45(%ebp), %eax         #  31:     assign v2 <- t8
    movb    %al, v2                
    jmp     l_test_6                #  32:     goto   6
l_test_8_if_false:
l_test_6:

l_test_exit:
    # epilogue
    addl    $36, %esp               # remove locals
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
v0:                                 # <array 9 of <array 3 of <array 6 of <array 10 of <array 10 of <bool>>>>>>
    .long    5
    .long    9
    .long    3
    .long    6
    .long   10
    .long   10
    .skip 16200
v1:                                 # <array 6 of <array 1 of <array 6 of <array 10 of <array 4 of <bool>>>>>>
    .long    5
    .long    6
    .long    1
    .long    6
    .long   10
    .long    4
    .skip 1440
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
