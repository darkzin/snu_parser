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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v2       <bool> %ebp-25 ]

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
    movl    $11331, %eax            #   0:     div    t9 <- 11331, 81897
    movl    $81897, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     assign v1 <- t9
    movl    %eax, -24(%ebp)        
l_f0_2_while_cond:
    movl    $98, %eax               #   3:     if     98 >= 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_3_while_body      
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   6:     goto   2_while_cond
l_f0_1:
l_f0_6_while_cond:
    movl    $5719, %eax             #   9:     if     5719 > 37253 goto 7_while_body
    movl    $37253, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_7_while_body      
    jmp     l_f0_5                  #  10:     goto   5
l_f0_7_while_body:
    call    dummyBOOLfunc           #  12:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #  13:     if     98 >= 98 goto 11_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  14:     goto   12_if_false
l_f0_11_if_true:
    movl    $0, %eax                #  16:     assign v2 <- 0
    movb    %al, -25(%ebp)         
    jmp     l_f0_10                 #  17:     goto   10
l_f0_12_if_false:
l_f0_10:
    jmp     l_f0_6_while_cond       #  20:     goto   6_while_cond
l_f0_5:

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
    #    -21(%ebp)   1  [ $t9       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 66 of <array 20 of <array 39 of <array 50 of <array 49 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 59 of <array 82 of <array 18 of <array 77 of <array 89 of <int>>>>>>> %ebp+16 ]
    #    -22(%ebp)   1  [ $v4       <char> %ebp-22 ]

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
l_f1_1_while_cond:
    movl    $98, %eax               #   1:     if     98 >= 97 goto 4
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_4                 
    jmp     l_f1_5                  #   2:     goto   5
l_f1_4:
    movl    $1, %eax                #   4:     assign t9 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_6                  #   5:     goto   6
l_f1_5:
    movl    $0, %eax                #   7:     assign t9 <- 0
    movb    %al, -21(%ebp)         
l_f1_6:
    movl    $1, %eax                #   9:     if     1 = t9 goto 2_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #  10:     goto   0
l_f1_2_while_body:
    movl    $44208, %eax            #  12:     return 44208
    jmp     l_f1_exit              
    movl    $99, %eax               #  13:     assign v4 <- 99
    movb    %al, -22(%ebp)         
    movl    $4376, %eax             #  14:     return 4376
    jmp     l_f1_exit              
    call    ReadInt                 #  15:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f1_13_while_cond:
    jmp     l_f1_13_while_cond      #  17:     goto   13_while_cond
    jmp     l_f1_1_while_cond       #  18:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_17_if_false        #  20:     goto   17_if_false
    movl    $99, %eax               #  21:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  22:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f1_15                 #  23:     goto   15
l_f1_17_if_false:
l_f1_15:
    movl    $84946, %eax            #  26:     add    t11 <- 84946, 38364
    movl    $38364, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $6109, %eax             #  27:     if     6109 > t11 goto 22_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_22_if_true        
    jmp     l_f1_23_if_false        #  28:     goto   23_if_false
l_f1_22_if_true:
l_f1_26_while_cond:
    movl    $98, %eax               #  31:     if     98 > 100 goto 27_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_27_while_body     
    jmp     l_f1_25                 #  32:     goto   25
l_f1_27_while_body:
    jmp     l_f1_26_while_cond      #  34:     goto   26_while_cond
l_f1_25:
    jmp     l_f1_21                 #  36:     goto   21
l_f1_23_if_false:
l_f1_21:

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 86 of <array 49 of <array 48 of <array 28 of <array 25 of <char>>>>>>> %ebp+8 ]
    #    -52(%ebp)   4  [ $v2       <int> %ebp-52 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $67007, %eax            #   0:     mul    t9 <- 67007, 15704
    movl    $15704, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    $20660, %eax            #   1:     add    t10 <- 20660, t9
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     assign v2 <- t10
    movl    %eax, -52(%ebp)        
    call    ReadInt                 #   3:     call   t11 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     assign v2 <- t11
    movl    %eax, -52(%ebp)        
l_f2_3_while_cond:
    movl    $7323, %eax             #   6:     div    t12 <- 7323, 63239
    movl    $63239, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $86369, %eax            #   7:     if     86369 <= t12 goto 4_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_4_while_body      
    jmp     l_f2_2                  #   8:     goto   2
l_f2_4_while_body:
    movl    $39214, %eax            #  10:     add    t13 <- 39214, 89998
    movl    $89998, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     sub    t14 <- t13, 27024
    movl    $27024, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     sub    t15 <- t14, 74264
    movl    $74264, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  13:     add    t16 <- t15, 88766
    movl    $88766, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  14:     sub    t17 <- t16, 48559
    movl    $48559, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  15:     param  0 <- t17
    pushl   %eax                   
    call    WriteInt                #  16:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f2_3_while_cond       #  17:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $40, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 86 of <array 49 of <array 48 of <array 28 of <array 25 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <ptr(4) to <array 86 of <array 49 of <array 48 of <array 28 of <array 25 of <char>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <char> %ebp-33 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   2:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     if     t1 # t2 goto 2
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_2               
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_4                #   7:     goto   4
l_test_3:
    movl    $0, %eax                #   9:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_4:
    movzbl  -16(%ebp), %eax         #  11:     assign v0 <- t3
    movb    %al, v0                
    leal    v1, %eax                #  12:     &()    t4 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     param  0 <- t4
    pushl   %eax                   
    call    f2                      #  14:     call   t5 <- f2
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    movl    $70593, %eax            #  15:     sub    t6 <- 70593, 27405
    movl    $27405, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     assign v2 <- t6
    movl    %eax, v2               
    leal    v1, %eax                #  17:     &()    t7 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  18:     param  0 <- t7
    pushl   %eax                   
    call    f2                      #  19:     call   t8 <- f2
    addl    $4, %esp               
    movb    %al, -33(%ebp)         

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    .align   4
v1:                                 # <array 86 of <array 49 of <array 48 of <array 28 of <array 25 of <char>>>>>>
    .long    5
    .long   86
    .long   49
    .long   48
    .long   28
    .long   25
    .skip 141590400
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
