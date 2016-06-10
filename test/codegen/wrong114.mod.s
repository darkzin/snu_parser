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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 10 of <array 9 of <array 6 of <array 2 of <int>>>>>>> %ebp+8 ]
    #    -40(%ebp)   4  [ $v1       <int> %ebp-40 ]

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
l_f0_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t2 <= 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    movl    $61850, %eax            #   7:     mul    t3 <- 61850, 55169
    movl    $55169, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     div    t4 <- t3, 3835
    movl    $3835, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     mul    t5 <- t4, 33087
    movl    $33087, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     assign v1 <- t5
    movl    %eax, -40(%ebp)        
    movl    $30523, %eax            #  11:     add    t6 <- 30523, 46493
    movl    $46493, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     add    t7 <- t6, 91933
    movl    $91933, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  13:     assign v1 <- t7
    movl    %eax, -40(%ebp)        

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
    #    -52(%ebp)   4  [ $t19      <ptr(4) to <array 5 of <char>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -57(%ebp)   1  [ $t20      <char> %ebp-57 ]
    #    -64(%ebp)   4  [ $t21      <ptr(4) to <array 4 of <array 10 of <array 9 of <array 6 of <array 2 of <int>>>>>>> %ebp-64 ]
    #    -65(%ebp)   1  [ $t22      <char> %ebp-65 ]
    #    -72(%ebp)   4  [ $t3       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t4       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t5       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 1 of <array 3 of <array 6 of <array 1 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 1 of <array 1 of <array 9 of <array 5 of <int>>>>>>> %ebp+12 ]
    #   -100(%ebp)   4  [ $v2       <int> %ebp-100 ]
    #   -17404(%ebp)  17304  [ $v3       <array 4 of <array 10 of <array 9 of <array 6 of <array 2 of <int>>>>>> %ebp-17404 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $17392, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $4348, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-17404(%ebp)         # local array 'v3': 5 dimensions
    movl    $4,-17400(%ebp)         #   dimension 1: 4 elements
    movl    $10,-17396(%ebp)        #   dimension 2: 10 elements
    movl    $9,-17392(%ebp)         #   dimension 3: 9 elements
    movl    $6,-17388(%ebp)         #   dimension 4: 6 elements
    movl    $2,-17384(%ebp)         #   dimension 5: 2 elements

    # function body
    call    ReadInt                 #   0:     call   t2 <- ReadInt
    movl    %eax, -56(%ebp)        
    movl    $99, %eax               #   1:     if     99 > 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
    movl    $2, %eax                #   4:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   5:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   6:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    $38652, %eax            #   7:     mul    t4 <- 38652, t3
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   8:     add    t5 <- t4, 86034
    movl    $86034, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  10:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  11:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  12:     mul    t7 <- t5, t6
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  13:     add    t8 <- t7, 35715
    movl    $35715, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  16:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  17:     mul    t10 <- t8, t9
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  18:     add    t11 <- t10, 53957
    movl    $53957, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  21:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  22:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     add    t14 <- t13, 9232
    movl    $9232, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     mul    t15 <- t14, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    8(%ebp), %eax           #  25:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  26:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  27:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  28:     add    t18 <- v0, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $2652, %eax             #  29:     assign @t18 <- 2652
    movl    -48(%ebp), %edi        
    movl    %eax, (%edi)           
    leal    _str_1, %eax            #  30:     &()    t19 <- _str_1
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  31:     param  0 <- t19
    pushl   %eax                   
    call    WriteStr                #  32:     call   WriteStr
    addl    $4, %esp               
l_f1_8_while_cond:
    jmp     l_f1_8_while_cond       #  34:     goto   8_while_cond
    movl    $1, %eax                #  35:     return 1
    jmp     l_f1_exit              
    jmp     l_f1_13_if_false        #  36:     goto   13_if_false
    jmp     l_f1_11                 #  37:     goto   11
l_f1_13_if_false:
l_f1_11:
    call    dummyCHARfunc           #  40:     call   t20 <- dummyCHARfunc
    movb    %al, -57(%ebp)         
    movzbl  -57(%ebp), %eax         #  41:     param  0 <- t20
    pushl   %eax                   
    call    WriteChar               #  42:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f1_1                  #  43:     goto   1
l_f1_3_if_false:
l_f1_1:
    leal    -17404(%ebp), %eax      #  46:     &()    t21 <- v3
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  47:     param  0 <- t21
    pushl   %eax                   
    call    f0                      #  48:     call   t22 <- f0
    addl    $4, %esp               
    movb    %al, -65(%ebp)         

l_f1_exit:
    # epilogue
    addl    $17392, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 4 of <array 10 of <array 9 of <array 6 of <array 2 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 3 of <array 2 of <array 7 of <array 7 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 4 of <array 9 of <array 5 of <array 8 of <char>>>>>>> %ebp+16 ]
    #   -17332(%ebp)  17304  [ $v3       <array 4 of <array 10 of <array 9 of <array 6 of <array 2 of <int>>>>>> %ebp-17332 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $17320, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $4330, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-17332(%ebp)         # local array 'v3': 5 dimensions
    movl    $4,-17328(%ebp)         #   dimension 1: 4 elements
    movl    $10,-17324(%ebp)        #   dimension 2: 10 elements
    movl    $9,-17320(%ebp)         #   dimension 3: 9 elements
    movl    $6,-17316(%ebp)         #   dimension 4: 6 elements
    movl    $2,-17312(%ebp)         #   dimension 5: 2 elements

    # function body
    leal    -17332(%ebp), %eax      #   0:     &()    t2 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #   2:     call   t3 <- f0
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movl    $51031, %eax            #   3:     assign v1 <- 51031
    movl    %eax, 12(%ebp)         
    movl    $24176, %eax            #   4:     div    t4 <- 24176, 55201
    movl    $55201, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     sub    t5 <- t4, 50387
    movl    $50387, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     return t5
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $17320, %esp            # remove locals
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
l_test_1_while_cond:
    movl    $99, %eax               #   1:     if     99 <= 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_2_while_body     #   2:     goto   2_while_body
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_7_while_cond:
    movl    $91246, %eax            #   6:     mul    t0 <- 91246, 64239
    movl    $64239, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $74141, %eax            #   7:     if     74141 # t0 goto 8_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_8_while_body    
    jmp     l_test_6                #   8:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  10:     goto   7_while_cond
l_test_6:
l_test_11_while_cond:
    movl    $97, %eax               #  13:     if     97 >= 97 goto 12_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_12_while_body   
    jmp     l_test_10               #  14:     goto   10
l_test_12_while_body:
    movl    $0, %eax                #  16:     assign v0 <- 0
    movb    %al, v0                
    movl    $99, %eax               #  17:     assign v1 <- 99
    movb    %al, v1                
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  19:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_11_while_cond    #  21:     goto   11_while_cond
l_test_10:
    movl    $16402, %eax            #  23:     if     16402 <= 65590 goto 20_if_true
    movl    $65590, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_20_if_true      
    jmp     l_test_21_if_false      #  24:     goto   21_if_false
l_test_20_if_true:
    movl    $1, %eax                #  26:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_19               #  28:     goto   19
l_test_21_if_false:
l_test_19:

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
