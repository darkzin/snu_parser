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
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 20 of <array 72 of <array 17 of <array 32 of <array 52 of <char>>>>>>> %ebp+8 ]
    #    -41(%ebp)   1  [ $v2       <bool> %ebp-41 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    movl    $30951, %eax            #   2:     add    t4 <- 30951, 69588
    movl    $69588, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $41942, %eax            #   3:     div    t5 <- 41942, 64748
    movl    $64748, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     div    t6 <- t5, 19007
    movl    $19007, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     mul    t7 <- t6, 77731
    movl    $77731, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     div    t8 <- t7, 84702
    movl    $84702, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -20(%ebp), %eax         #   7:     sub    t9 <- t4, t8
    movl    -36(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   8:     if     t9 = 50187 goto 3
    movl    $50187, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_3                 
    jmp     l_f0_4                  #   9:     goto   4
l_f0_3:
    movl    $1, %eax                #  11:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_5                  #  12:     goto   5
l_f0_4:
    movl    $0, %eax                #  14:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_5:
    movzbl  -13(%ebp), %eax         #  16:     assign v2 <- t10
    movb    %al, -41(%ebp)         

l_f0_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #    -18(%ebp)   1  [ $v2       <char> %ebp-18 ]

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
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    call    dummyINTfunc            #   4:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    movl    $99, %eax               #   7:     if     99 > 98 goto 6_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   8:     goto   7_if_false
l_f1_6_if_true:
    movl    $99, %eax               #  10:     assign v2 <- 99
    movb    %al, -18(%ebp)         
    movl    $1, %eax                #  11:     assign t5 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_13                 #  12:     goto   13
    movl    $0, %eax                #  13:     assign t5 <- 0
    movb    %al, -17(%ebp)         
l_f1_13:
    movzbl  -17(%ebp), %eax         #  15:     assign v1 <- t5
    movb    %al, 8(%ebp)           
    jmp     l_f1_5                  #  16:     goto   5
l_f1_7_if_false:
l_f1_5:
l_f1_18_while_cond:
l_f1_21_while_cond:
    jmp     l_f1_20                 #  21:     goto   20
    jmp     l_f1_21_while_cond      #  22:     goto   21_while_cond
l_f1_20:
l_f1_24_while_cond:
    jmp     l_f1_23                 #  25:     goto   23
    jmp     l_f1_23                 #  26:     goto   23
    jmp     l_f1_23                 #  27:     goto   23
    jmp     l_f1_23                 #  28:     goto   23
    jmp     l_f1_24_while_cond      #  29:     goto   24_while_cond
l_f1_23:
    jmp     l_f1_18_while_cond      #  31:     goto   18_while_cond

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <char> %ebp-22 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 50 of <array 13 of <array 6 of <array 34 of <array 49 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 22 of <array 26 of <array 60 of <array 3 of <array 32 of <char>>>>>>> %ebp+16 ]

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
    call    dummyINTfunc            #   0:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t5 <- t4, 46516
    movl    $46516, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t5
    jmp     l_f2_exit              
l_f2_2_while_cond:
    jmp     l_f2_4                  #   4:     goto   4
l_f2_4:
    movl    $89795, %eax            #   6:     return 89795
    jmp     l_f2_exit              
    movl    $98, %eax               #   7:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   8:     call   WriteChar
    addl    $4, %esp               
    movl    $54625, %eax            #   9:     return 54625
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  10:     call   t6 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    jmp     l_f2_2_while_cond       #  11:     goto   2_while_cond
    call    dummyCHARfunc           #  12:     call   t7 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  13:     param  0 <- t7
    pushl   %eax                   
    call    WriteChar               #  14:     call   WriteChar
    addl    $4, %esp               

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]

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
l_test_1_while_cond:
    call    dummyINTfunc            #   1:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t0 < 76203 goto 2_while_body
    movl    $76203, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $34067, %eax            #   7:     assign v0 <- 34067
    movl    %eax, v0               
    jmp     l_test_1_while_cond     #   8:     goto   1_while_cond
l_test_0:
l_test_8_while_cond:
    jmp     l_test_7                #  11:     goto   7
    call    WriteLn                 #  12:     call   WriteLn
    movl    $38892, %eax            #  13:     mul    t1 <- 38892, 22546
    movl    $22546, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     mul    t2 <- t1, 18976
    movl    $18976, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     assign v0 <- t2
    movl    %eax, v0               
    jmp     l_test_8_while_cond     #  16:     goto   8_while_cond
l_test_7:
    jmp     l_test_exit            
l_test_17_while_cond:
    jmp     l_test_16               #  20:     goto   16
    jmp     l_test_17_while_cond    #  21:     goto   17_while_cond
l_test_16:
    jmp     l_test_exit            
    movl    $11095, %eax            #  24:     if     11095 > 18464 goto 21
    movl    $18464, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_21              
    jmp     l_test_22               #  25:     goto   22
l_test_21:
    movl    $1, %eax                #  27:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_23               #  28:     goto   23
l_test_22:
    movl    $0, %eax                #  30:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_23:
    movzbl  -25(%ebp), %eax         #  32:     assign v1 <- t3
    movb    %al, v1                
    jmp     l_test_13               #  33:     goto   13
l_test_13:

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
