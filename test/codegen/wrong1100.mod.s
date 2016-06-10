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
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t7       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t8       <bool> %ebp-27 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 58 of <array 67 of <array 34 of <array 92 of <array 91 of <char>>>>>>> %ebp+12 ]
    #    -33(%ebp)   1  [ $v3       <bool> %ebp-33 ]

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
    jmp     l_f0_5                  #   0:     goto   5
l_f0_5:
    movl    $1, %eax                #   2:     assign t7 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f0_7                  #   3:     goto   7
    movl    $0, %eax                #   4:     assign t7 <- 0
    movb    %al, -26(%ebp)         
l_f0_7:
    movzbl  -26(%ebp), %eax         #   6:     if     t7 # 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_1                 
    jmp     l_f0_2                  #   7:     goto   2
l_f0_1:
    movl    $1, %eax                #   9:     assign t8 <- 1
    movb    %al, -27(%ebp)         
    jmp     l_f0_3                  #  10:     goto   3
l_f0_2:
    movl    $0, %eax                #  12:     assign t8 <- 0
    movb    %al, -27(%ebp)         
l_f0_3:
    movzbl  -27(%ebp), %eax         #  14:     assign v3 <- t8
    movb    %al, -33(%ebp)         
    movl    $64744, %eax            #  15:     add    t9 <- 64744, 39447
    movl    $39447, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  16:     add    t10 <- t9, 52731
    movl    $52731, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  17:     add    t11 <- t10, 86601
    movl    $86601, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     return t11
    jmp     l_f0_exit              
    movl    $34165, %eax            #  19:     sub    t12 <- 34165, 92031
    movl    $92031, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $24713, %eax            #  20:     if     24713 # t12 goto 12
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_12                
    jmp     l_f0_13                 #  21:     goto   13
l_f0_12:
    movl    $1, %eax                #  23:     assign t13 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_14                 #  24:     goto   14
l_f0_13:
    movl    $0, %eax                #  26:     assign t13 <- 0
    movb    %al, -25(%ebp)         
l_f0_14:
    movzbl  -25(%ebp), %eax         #  28:     assign v3 <- t13
    movb    %al, -33(%ebp)         

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <char> %ebp-14 ]

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
l_f1_1_while_cond:
    movl    $1, %eax                #   1:     if     1 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    jmp     l_f1_6_if_false         #   4:     goto   6_if_false
    jmp     l_f1_4                  #   5:     goto   4
l_f1_6_if_false:
l_f1_4:
l_f1_8_while_cond:
    movl    $100, %eax              #   9:     if     100 > 99 goto 9_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_9_while_body      
    jmp     l_f1_7                  #  10:     goto   7
l_f1_9_while_body:
    jmp     l_f1_8_while_cond       #  12:     goto   8_while_cond
l_f1_7:
l_f1_12_while_cond:
    movl    $100, %eax              #  15:     if     100 = 100 goto 13_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_13_while_body     
    jmp     l_f1_11                 #  16:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  18:     goto   12_while_cond
l_f1_11:
    jmp     l_f1_1_while_cond       #  20:     goto   1_while_cond
l_f1_0:
    call    dummyBOOLfunc           #  22:     call   t7 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #  23:     call   t8 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  24:     return t8
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $v1       <char> %ebp-15 ]

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
    call    dummyBOOLfunc           #   0:     call   t7 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    f1                      #   1:     call   t8 <- f1
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   2:     assign v1 <- t8
    movb    %al, -15(%ebp)         
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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]

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
    movl    $96952, %eax            #   0:     assign v0 <- 96952
    movl    %eax, v0               
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
l_test_6_while_cond:
    jmp     l_test_5                #   4:     goto   5
    jmp     l_test_6_while_cond     #   5:     goto   6_while_cond
l_test_5:
    jmp     l_test_2_while_cond     #   7:     goto   2_while_cond
l_test_1:
    movl    $51562, %eax            #   9:     assign v0 <- 51562
    movl    %eax, v0               
    movl    $8290, %eax             #  10:     sub    t0 <- 8290, 30118
    movl    $30118, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     add    t1 <- t0, 25691
    movl    $25691, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     sub    t2 <- t1, 17880
    movl    $17880, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $49172, %eax            #  13:     div    t3 <- 49172, 8166
    movl    $8166, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     div    t4 <- t3, 86202
    movl    $86202, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     div    t5 <- t4, 90174
    movl    $90174, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -24(%ebp), %eax         #  16:     if     t2 <= t5 goto 10
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_10              
    jmp     l_test_11               #  17:     goto   11
l_test_10:
    movl    $1, %eax                #  19:     assign t6 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_test_12               #  20:     goto   12
l_test_11:
    movl    $0, %eax                #  22:     assign t6 <- 0
    movb    %al, -37(%ebp)         
l_test_12:
    movzbl  -37(%ebp), %eax         #  24:     assign v1 <- t6
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
