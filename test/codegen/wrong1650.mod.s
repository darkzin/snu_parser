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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]

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
    movl    $98, %eax               #   1:     if     98 > 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    call    dummyCHARfunc           #   4:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   5:     return 100
    jmp     l_f0_exit              
l_f0_10_while_cond:
    jmp     l_f0_9                  #   7:     goto   9
    jmp     l_f0_10_while_cond      #   8:     goto   10_while_cond
l_f0_9:
    jmp     l_f0_4                  #  10:     goto   4
l_f0_4:
    jmp     l_f0_1_while_cond       #  12:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #  14:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  15:     return t4
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  16:     call   t5 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         

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
    #    -64(%ebp)   4  [ $t3       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 17 of <array 45 of <array 47 of <array 37 of <array 83 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 90 of <array 94 of <array 63 of <array 29 of <array 10 of <char>>>>>>> %ebp+16 ]
    #    -92(%ebp)   4  [ $v4       <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $v5       <bool> %ebp-93 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    movl    $99390, %eax            #   1:     div    t3 <- 99390, 10527
    movl    $10527, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   2:     sub    t4 <- t3, 91149
    movl    $91149, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   4:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   5:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #   6:     mul    t6 <- t4, t5
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   7:     add    t7 <- t6, 87072
    movl    $87072, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   9:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  10:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  11:     mul    t9 <- t7, t8
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  12:     add    t10 <- t9, 89958
    movl    $89958, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  14:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  15:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  16:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     add    t13 <- t12, 709
    movl    $709, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  20:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  21:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  22:     add    t16 <- t15, 10241
    movl    $10241, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  23:     mul    t17 <- t16, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    12(%ebp), %eax          #  24:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  25:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  26:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  27:     add    t20 <- v2, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $78386, %eax            #  28:     assign @t20 <- 78386
    movl    -56(%ebp), %edi        
    movl    %eax, (%edi)           
l_f1_3_while_cond:
    movl    $0, %eax                #  30:     assign v5 <- 0
    movb    %al, -93(%ebp)         
    movl    $99, %eax               #  31:     assign v1 <- 99
    movb    %al, 8(%ebp)           
    movl    $30035, %eax            #  32:     div    t21 <- 30035, 4344
    movl    $4344, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  33:     return t21
    jmp     l_f1_exit              
    jmp     l_f1_3_while_cond       #  34:     goto   3_while_cond

l_f1_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 90 of <array 94 of <array 63 of <array 29 of <array 10 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 17 of <array 45 of <array 47 of <array 37 of <array 83 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 33 of <array 93 of <array 8 of <array 29 of <array 24 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 64 of <array 18 of <array 81 of <array 42 of <array 98 of <char>>>>>>> %ebp+20 ]
    #   -441671272(%ebp)  441671244  [ $v5       <array 17 of <array 45 of <array 47 of <array 37 of <array 83 of <int>>>>>> %ebp-441671272 ]
    #   -596235496(%ebp)  154564224  [ $v6       <array 90 of <array 94 of <array 63 of <array 29 of <array 10 of <char>>>>>> %ebp-596235496 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $596235484, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $149058871, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-441671272(%ebp)     # local array 'v5': 5 dimensions
    movl    $17,-441671268(%ebp)    #   dimension 1: 17 elements
    movl    $45,-441671264(%ebp)    #   dimension 2: 45 elements
    movl    $47,-441671260(%ebp)    #   dimension 3: 47 elements
    movl    $37,-441671256(%ebp)    #   dimension 4: 37 elements
    movl    $83,-441671252(%ebp)    #   dimension 5: 83 elements
    movl    $5,-596235496(%ebp)     # local array 'v6': 5 dimensions
    movl    $90,-596235492(%ebp)    #   dimension 1: 90 elements
    movl    $94,-596235488(%ebp)    #   dimension 2: 94 elements
    movl    $63,-596235484(%ebp)    #   dimension 3: 63 elements
    movl    $29,-596235480(%ebp)    #   dimension 4: 29 elements
    movl    $10,-596235476(%ebp)    #   dimension 5: 10 elements

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    leal    -596235496(%ebp), %eax  #   1:     &()    t3 <- v6
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  2 <- t3
    pushl   %eax                   
    leal    -441671272(%ebp), %eax  #   3:     &()    t4 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  1 <- t4
    pushl   %eax                   
    movl    $98, %eax               #   5:     param  0 <- 98
    pushl   %eax                   
    call    f1                      #   6:     call   t5 <- f1
    addl    $12, %esp              
    movl    %eax, -24(%ebp)        
    movl    $0, %eax                #   7:     assign v2 <- 0
    movb    %al, 12(%ebp)          
    call    dummyBOOLfunc           #   8:     call   t6 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    jmp     l_f2_0                  #   9:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_7_while_cond:
    movl    $100, %eax              #  13:     if     100 >= 99 goto 8_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_8_while_body      
    jmp     l_f2_6                  #  14:     goto   6
l_f2_8_while_body:
    movl    $0, %eax                #  16:     return 0
    jmp     l_f2_exit              
l_f2_12_while_cond:
    jmp     l_f2_12_while_cond      #  18:     goto   12_while_cond
l_f2_15_while_cond:
    movl    $1, %eax                #  20:     if     1 = 1 goto 16_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_16_while_body     
    jmp     l_f2_14                 #  21:     goto   14
l_f2_16_while_body:
    jmp     l_f2_15_while_cond      #  23:     goto   15_while_cond
l_f2_14:
    jmp     l_f2_7_while_cond       #  25:     goto   7_while_cond
l_f2_6:
    call    dummyProcedure          #  27:     call   dummyProcedure

l_f2_exit:
    # epilogue
    addl    $596235484, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]

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
    jmp     l_test_0                #   1:     goto   0
    movl    $98, %eax               #   2:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_1_while_cond     #   3:     goto   1_while_cond
l_test_0:
    call    dummyProcedure          #   5:     call   dummyProcedure
    call    dummyBOOLfunc           #   6:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    call    dummyCHARfunc           #   8:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #   9:     if     100 <= 100 goto 9_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_9_if_true       
    jmp     l_test_10_if_false      #  10:     goto   10_if_false
l_test_9_if_true:
    movl    $35970, %eax            #  12:     param  0 <- 35970
    pushl   %eax                   
    call    f0                      #  13:     call   t2 <- f0
    addl    $4, %esp               
    movb    %al, -15(%ebp)         
l_test_14_while_cond:
    jmp     l_test_15_while_body    #  15:     goto   15_while_body
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  17:     goto   14_while_cond
    jmp     l_test_8                #  18:     goto   8
l_test_10_if_false:
l_test_8:

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
