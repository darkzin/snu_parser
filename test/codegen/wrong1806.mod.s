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
    #    -13(%ebp)   1  [ $t13      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t14      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t15      <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 73 of <array 24 of <array 65 of <array 53 of <array 6 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #    -20(%ebp)   4  [ $v4       <int> %ebp-20 ]

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
    movl    $100, %eax              #   0:     if     100 > 100 goto 1
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t13 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t13 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     return t13
    jmp     l_f0_exit              
l_f0_6_while_cond:
    movl    $77783, %eax            #  10:     if     77783 >= 98112 goto 7_while_body
    movl    $98112, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_7_while_body      
    jmp     l_f0_5                  #  11:     goto   5
l_f0_7_while_body:
    movl    $61289, %eax            #  13:     assign v4 <- 61289
    movl    %eax, -20(%ebp)        
    movl    $98, %eax               #  14:     if     98 > 100 goto 11
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_11                
    jmp     l_f0_12                 #  15:     goto   12
l_f0_11:
    movl    $1, %eax                #  17:     assign t14 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_13                 #  18:     goto   13
l_f0_12:
    movl    $0, %eax                #  20:     assign t14 <- 0
    movb    %al, -14(%ebp)         
l_f0_13:
    movzbl  -14(%ebp), %eax         #  22:     return t14
    jmp     l_f0_exit              
    jmp     l_f0_6_while_cond       #  23:     goto   6_while_cond
l_f0_5:
l_f0_16_while_cond:
    call    dummyCHARfunc           #  26:     call   t15 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $98, %eax               #  27:     if     98 > t15 goto 17_while_body
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_17_while_body     
    jmp     l_f0_15                 #  28:     goto   15
l_f0_17_while_body:
    movl    $98, %eax               #  30:     assign v2 <- 98
    movb    %al, 16(%ebp)          
    jmp     l_f0_16_while_cond      #  31:     goto   16_while_cond
l_f0_15:

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
    #    -13(%ebp)   1  [ $t13      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t14      <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 27 of <array 89 of <array 10 of <array 85 of <array 40 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 95 of <array 7 of <array 67 of <array 14 of <array 50 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #    -21(%ebp)   1  [ $v4       <bool> %ebp-21 ]

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
    movl    $100, %eax              #   0:     assign v0 <- 100
    movb    %al, 8(%ebp)           
    jmp     l_f1_3                  #   1:     goto   3
    movl    $27351, %eax            #   2:     if     27351 > 12576 goto 2
    movl    $12576, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_2                 
    jmp     l_f1_3                  #   3:     goto   3
l_f1_2:
    movl    $1, %eax                #   5:     assign t13 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_4                  #   6:     goto   4
l_f1_3:
    movl    $0, %eax                #   8:     assign t13 <- 0
    movb    %al, -13(%ebp)         
l_f1_4:
    movzbl  -13(%ebp), %eax         #  10:     assign v4 <- t13
    movb    %al, -21(%ebp)         
l_f1_9_while_cond:
    movl    $60814, %eax            #  12:     if     60814 # 67782 goto 10_while_body
    movl    $67782, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_10_while_body     
    jmp     l_f1_8                  #  13:     goto   8
l_f1_10_while_body:
l_f1_13_while_cond:
    call    ReadInt                 #  16:     call   t14 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $99, %eax               #  17:     assign v0 <- 99
    movb    %al, 8(%ebp)           
    jmp     l_f1_13_while_cond      #  18:     goto   13_while_cond
    jmp     l_f1_9_while_cond       #  19:     goto   9_while_cond
l_f1_8:

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
    #    -13(%ebp)   1  [ $t13      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t14      <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 26 of <array 43 of <array 41 of <array 19 of <array 18 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 15 of <array 19 of <array 64 of <array 72 of <array 68 of <int>>>>>>> %ebp+16 ]

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
    call    dummyBOOLfunc           #   0:     call   t13 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t14 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_f2_3_while_cond:
    jmp     l_f2_2                  #   3:     goto   2
    jmp     l_f2_2                  #   4:     goto   2
    jmp     l_f2_3_while_cond       #   5:     goto   3_while_cond
l_f2_2:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <ptr(4) to <array 15 of <array 19 of <array 64 of <array 72 of <array 68 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <ptr(4) to <array 26 of <array 43 of <array 41 of <array 19 of <array 18 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t12      <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $t2       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t3       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t4       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t5       <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $t6       <bool> %ebp-49 ]
    #    -50(%ebp)   1  [ $t7       <bool> %ebp-50 ]
    #    -51(%ebp)   1  [ $t8       <char> %ebp-51 ]
    #    -52(%ebp)   1  [ $t9       <bool> %ebp-52 ]

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
l_test_1_while_cond:
    movl    $29679, %eax            #   1:     div    t0 <- 29679, 17923
    movl    $17923, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t1 <- t0, 13005
    movl    $13005, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     div    t2 <- t1, 9515
    movl    $9515, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   4:     sub    t3 <- t2, 82717
    movl    $82717, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   5:     add    t4 <- t3, 42768
    movl    $42768, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   6:     add    t5 <- t4, 77951
    movl    $77951, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   7:     if     t5 <= 4289 goto 2_while_body
    movl    $4289, %ebx            
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_0                #   8:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #  10:     goto   1_while_cond
l_test_0:
l_test_5_while_cond:
    call    dummyBOOLfunc           #  13:     call   t6 <- dummyBOOLfunc
    movb    %al, -49(%ebp)         
    movzbl  -49(%ebp), %eax         #  14:     if     t6 = 1 goto 6_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_6_while_body    
    jmp     l_test_4                #  15:     goto   4
l_test_6_while_body:
    call    dummyBOOLfunc           #  17:     call   t7 <- dummyBOOLfunc
    movb    %al, -50(%ebp)         
    jmp     l_test_5_while_cond     #  18:     goto   5_while_cond
l_test_4:
    movl    $99, %eax               #  20:     assign v0 <- 99
    movb    %al, v0                
    call    dummyCHARfunc           #  21:     call   t8 <- dummyCHARfunc
    movb    %al, -51(%ebp)         
    movzbl  -51(%ebp), %eax         #  22:     if     t8 > 97 goto 10
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_10              
    jmp     l_test_11               #  23:     goto   11
l_test_10:
    movl    $1, %eax                #  25:     assign t9 <- 1
    movb    %al, -52(%ebp)         
    jmp     l_test_12               #  26:     goto   12
l_test_11:
    movl    $0, %eax                #  28:     assign t9 <- 0
    movb    %al, -52(%ebp)         
l_test_12:
    movzbl  -52(%ebp), %eax         #  30:     assign v1 <- t9
    movb    %al, v1                
    leal    v3, %eax                #  31:     &()    t10 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  32:     param  2 <- t10
    pushl   %eax                   
    movl    $100, %eax              #  33:     param  1 <- 100
    pushl   %eax                   
    leal    v2, %eax                #  34:     &()    t11 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  35:     param  0 <- t11
    pushl   %eax                   
    call    f2                      #  36:     call   t12 <- f2
    addl    $12, %esp              
    movb    %al, -29(%ebp)         

l_test_exit:
    # epilogue
    addl    $40, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <array 26 of <array 43 of <array 41 of <array 19 of <array 18 of <bool>>>>>>
    .long    5
    .long   26
    .long   43
    .long   41
    .long   19
    .long   18
    .skip 15676596
v3:                                 # <array 15 of <array 19 of <array 64 of <array 72 of <array 68 of <int>>>>>>
    .long    5
    .long   15
    .long   19
    .long   64
    .long   72
    .long   68
    .skip 357212160








    # end of global data section
    #-----------------------------------------

    .end
##################################################
