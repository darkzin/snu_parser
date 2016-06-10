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
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t6       <bool> %ebp-26 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 10 of <array 4 of <array 5 of <array 8 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    call    dummyBOOLfunc           #   1:     call   t5 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    jmp     l_f0_4                  #   2:     goto   4
l_f0_4:
    movl    $1, %eax                #   4:     assign t6 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f0_6                  #   5:     goto   6
    movl    $0, %eax                #   6:     assign t6 <- 0
    movb    %al, -26(%ebp)         
l_f0_6:
    movzbl  -25(%ebp), %eax         #   8:     if     t5 # t6 goto 2_while_body
    movzbl  -26(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #   9:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #  11:     goto   1_while_cond
l_f0_0:
    call    dummyINTfunc            #  13:     call   t7 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    movl    $74450, %eax            #  14:     div    t8 <- 74450, 6106
    movl    $6106, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  15:     div    t9 <- t8, 42923
    movl    $42923, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  16:     mul    t10 <- t9, 54302
    movl    $54302, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  17:     mul    t11 <- t10, 22594
    movl    $22594, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     div    t12 <- t11, 93794
    movl    $93794, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     return t12
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f1_2_while_cond:
    jmp     l_f1_1                  #   2:     goto   1
l_f1_5_while_cond:
    movl    $1, %eax                #   4:     if     1 # 1 goto 6_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_6_while_body      
    jmp     l_f1_4                  #   5:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   7:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_10_if_false        #   9:     goto   10_if_false
    jmp     l_f1_8                  #  10:     goto   8
l_f1_10_if_false:
l_f1_8:
    call    dummyINTfunc            #  13:     call   t6 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f1_2_while_cond       #  14:     goto   2_while_cond
l_f1_1:
    movl    $56903, %eax            #  16:     if     56903 <= 13769 goto 13_if_true
    movl    $13769, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_13_if_true        
    jmp     l_f1_14_if_false        #  17:     goto   14_if_false
l_f1_13_if_true:
    movl    $98, %eax               #  19:     if     98 >= 98 goto 17_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_17_if_true        
    jmp     l_f1_18_if_false        #  20:     goto   18_if_false
l_f1_17_if_true:
    jmp     l_f1_16                 #  22:     goto   16
l_f1_18_if_false:
l_f1_16:
    movl    $1, %eax                #  25:     return 1
    jmp     l_f1_exit              
    jmp     l_f1_12                 #  26:     goto   12
l_f1_14_if_false:
l_f1_12:

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
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -44(%ebp)   4  [ $v1       <int> %ebp-44 ]

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
    movl    $16075, %eax            #   0:     div    t5 <- 16075, 60007
    movl    $60007, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     mul    t6 <- t5, 87438
    movl    $87438, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   2:     assign v1 <- t6
    movl    %eax, -44(%ebp)        
    movl    $94313, %eax            #   3:     mul    t7 <- 94313, 73600
    movl    $73600, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     return t7
    jmp     l_f2_exit              
    movl    $66656, %eax            #   5:     sub    t8 <- 66656, 14503
    movl    $14503, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     add    t9 <- t8, 79446
    movl    $79446, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   7:     add    t10 <- t9, 91681
    movl    $91681, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     add    t11 <- t10, 12454
    movl    $12454, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     return t11
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]

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
    movl    $39851, %eax            #   0:     sub    t0 <- 39851, 54636
    movl    $54636, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t1 <- t0, 72872
    movl    $72872, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  0 <- t1
    pushl   %eax                   
    call    WriteInt                #   3:     call   WriteInt
    addl    $4, %esp               
    call    dummyCHARfunc           #   4:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    jmp     l_test_7                #   5:     goto   7
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_8                #   7:     goto   8
l_test_7:
    movl    $0, %eax                #   9:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_8:
    movl    $1, %eax                #  11:     if     1 = t3 goto 3_if_true
    movzbl  -22(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_3_if_true       
    jmp     l_test_4_if_false       #  12:     goto   4_if_false
l_test_3_if_true:
    movl    $100, %eax              #  14:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_2                #  15:     goto   2
l_test_4_if_false:
l_test_2:
    call    dummyINTfunc            #  18:     call   t4 <- dummyINTfunc
    movl    %eax, -28(%ebp)        

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
