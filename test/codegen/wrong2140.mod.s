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
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 22 of <array 61 of <array 22 of <array 38 of <array 80 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 58 of <array 13 of <array 46 of <array 53 of <array 36 of <int>>>>>>> %ebp+20 ]
    #    -89(%ebp)   1  [ $v5       <char> %ebp-89 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f0_exit              
    movl    $94522, %eax            #   1:     add    t7 <- 94522, 95667
    movl    $95667, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #   2:     sub    t8 <- t7, 57581
    movl    $57581, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   3:     sub    t9 <- t8, 81974
    movl    $81974, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $2, %eax                #   4:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   5:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   6:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $61863, %eax            #   7:     mul    t11 <- 61863, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     add    t12 <- t11, 22339
    movl    $22339, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  10:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  11:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  12:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     add    t15 <- t14, 43741
    movl    $43741, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  15:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  16:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  17:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  18:     add    t18 <- t17, 3043
    movl    $3043, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  20:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  21:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  22:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  23:     add    t21 <- t20, 88493
    movl    $88493, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  24:     mul    t22 <- t21, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  25:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  26:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  27:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    12(%ebp), %eax          #  28:     add    t25 <- v2, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -88(%ebp), %eax         #  29:     assign @t25 <- t9
    movl    -76(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $98, %eax               #  30:     assign v5 <- 98
    movb    %al, -89(%ebp)         

l_f0_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   1:     return t7
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   2:     call   t8 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   3:     return t8
    jmp     l_f1_exit              
l_f1_3_while_cond:
    movl    $23592, %eax            #   5:     add    t9 <- 23592, 64834
    movl    $64834, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     if     t9 > 44908 goto 4_while_body
    movl    $44908, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_4_while_body      
    jmp     l_f1_2                  #   7:     goto   2
l_f1_4_while_body:
    call    dummyCHARfunc           #   9:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_3_while_cond       #  10:     goto   3_while_cond
l_f1_2:

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
    #    -41(%ebp)   1  [ $t17      <char> %ebp-41 ]
    #    -48(%ebp)   4  [ $t7       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t9       <int> %ebp-56 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 24 of <array 33 of <array 69 of <array 50 of <array 60 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 40 of <array 21 of <array 50 of <array 99 of <array 2 of <char>>>>>>> %ebp+20 ]

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
    movl    $88605, %eax            #   0:     mul    t7 <- 88605, 21792
    movl    $21792, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   1:     sub    t8 <- t7, 21788
    movl    $21788, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   2:     assign v3 <- t8
    movl    %eax, 16(%ebp)         
    movl    $21769, %eax            #   3:     div    t9 <- 21769, 46003
    movl    $46003, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   4:     div    t10 <- t9, 63494
    movl    $63494, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     mul    t11 <- t10, 305
    movl    $305, %ebx             
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     mul    t12 <- t11, 72394
    movl    $72394, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     div    t13 <- t12, 27858
    movl    $27858, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     mul    t14 <- t13, 69991
    movl    $69991, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   9:     div    t15 <- t14, 90058
    movl    $90058, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  10:     add    t16 <- t15, 56211
    movl    $56211, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  11:     param  0 <- t16
    pushl   %eax                   
    call    WriteInt                #  12:     call   WriteInt
    addl    $4, %esp               
l_f2_3_while_cond:
    jmp     l_f2_4_while_body       #  14:     goto   4_while_body
l_f2_4_while_body:
    movl    $98, %eax               #  16:     param  0 <- 98
    pushl   %eax                   
    call    f1                      #  17:     call   t17 <- f1
    addl    $4, %esp               
    movb    %al, -41(%ebp)         
    jmp     l_f2_3_while_cond       #  18:     goto   3_while_cond

l_f2_exit:
    # epilogue
    addl    $44, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 40 of <array 21 of <array 50 of <array 99 of <array 2 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 24 of <array 33 of <array 69 of <array 50 of <array 60 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <char> %ebp-30 ]
    #    -31(%ebp)   1  [ $t6       <char> %ebp-31 ]

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
    movl    $99, %eax               #   0:     assign v0 <- 99
    movb    %al, v0                
l_test_2_while_cond:
    call    dummyCHARfunc           #   2:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t0 < 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_3_while_body    
    jmp     l_test_1                #   4:     goto   1
l_test_3_while_body:
    movl    $25334, %eax            #   6:     if     25334 = 41871 goto 6_if_true
    movl    $41871, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_6_if_true       
    jmp     l_test_7_if_false       #   7:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   9:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_2_while_cond     #  12:     goto   2_while_cond
l_test_1:
    movl    $55771, %eax            #  14:     if     55771 >= 28397 goto 10_if_true
    movl    $28397, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_10_if_true      
    jmp     l_test_11_if_false      #  15:     goto   11_if_false
l_test_10_if_true:
    movl    $100, %eax              #  17:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_9                #  18:     goto   9
l_test_11_if_false:
l_test_9:
    call    dummyINTfunc            #  21:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_17_if_false      #  22:     goto   17_if_false
    call    dummyProcedure          #  23:     call   dummyProcedure
l_test_20_while_cond:
    movl    $45826, %eax            #  25:     if     45826 <= 37547 goto 21_while_body
    movl    $37547, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_21_while_body   
    jmp     l_test_19               #  26:     goto   19
l_test_21_while_body:
    jmp     l_test_20_while_cond    #  28:     goto   20_while_cond
l_test_19:
    leal    v2, %eax                #  30:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  31:     param  3 <- t2
    pushl   %eax                   
    movl    $37108, %eax            #  32:     param  2 <- 37108
    pushl   %eax                   
    leal    v1, %eax                #  33:     &()    t3 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  34:     param  1 <- t3
    pushl   %eax                   
    movl    $99, %eax               #  35:     if     99 = 99 goto 24
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_24              
    jmp     l_test_25               #  36:     goto   25
l_test_24:
    movl    $1, %eax                #  38:     assign t4 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_26               #  39:     goto   26
l_test_25:
    movl    $0, %eax                #  41:     assign t4 <- 0
    movb    %al, -29(%ebp)         
l_test_26:
    movzbl  -29(%ebp), %eax         #  43:     param  0 <- t4
    pushl   %eax                   
    call    f2                      #  44:     call   t5 <- f2
    addl    $16, %esp              
    movb    %al, -30(%ebp)         
    movzbl  -30(%ebp), %eax         #  45:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  46:     call   t6 <- f1
    addl    $4, %esp               
    movb    %al, -31(%ebp)         
    movzbl  -31(%ebp), %eax         #  47:     assign v0 <- t6
    movb    %al, v0                
    jmp     l_test_15               #  48:     goto   15
l_test_17_if_false:
l_test_15:
    jmp     l_test_exit            

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 24 of <array 33 of <array 69 of <array 50 of <array 60 of <char>>>>>>
    .long    5
    .long   24
    .long   33
    .long   69
    .long   50
    .long   60
    .skip 163944000
v2:                                 # <array 40 of <array 21 of <array 50 of <array 99 of <array 2 of <char>>>>>>
    .long    5
    .long   40
    .long   21
    .long   50
    .long   99
    .long    2
    .skip 8316000








    # end of global data section
    #-----------------------------------------

    .end
##################################################
