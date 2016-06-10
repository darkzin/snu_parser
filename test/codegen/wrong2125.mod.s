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
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $29906, %eax            #   1:     sub    t4 <- 29906, 85365
    movl    $85365, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   2:     add    t5 <- t4, 44166
    movl    $44166, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   3:     add    t6 <- t5, 27466
    movl    $27466, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   4:     sub    t7 <- t6, 59021
    movl    $59021, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   5:     sub    t8 <- t7, 81735
    movl    $81735, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   6:     return t8
    jmp     l_f0_exit              
    movl    $84397, %eax            #   7:     div    t9 <- 84397, 76941
    movl    $76941, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   8:     mul    t10 <- t9, 46074
    movl    $46074, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     add    t11 <- t10, 29908
    movl    $29908, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     return t11
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 49 of <array 88 of <array 22 of <array 51 of <array 65 of <char>>>>>>> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t3
    movb    %al, 8(%ebp)           
    leal    _str_1, %eax            #   2:     &()    t4 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #   4:     call   WriteStr
    addl    $4, %esp               
l_f1_3_while_cond:
    movl    $5506, %eax             #   6:     if     5506 <= 33644 goto 4_while_body
    movl    $33644, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_4_while_body      
    jmp     l_f1_2                  #   7:     goto   2
l_f1_4_while_body:
l_f1_7_while_cond:
    movl    $16204, %eax            #  10:     return 16204
    jmp     l_f1_exit              
    jmp     l_f1_7_while_cond       #  11:     goto   7_while_cond
    jmp     l_f1_3_while_cond       #  12:     goto   3_while_cond
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
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 49 of <array 88 of <array 22 of <array 51 of <array 65 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 39 of <array 51 of <array 18 of <array 34 of <array 13 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -37(%ebp)   1  [ $v3       <bool> %ebp-37 ]
    #   -314474224(%ebp)  314474184  [ $v4       <array 49 of <array 88 of <array 22 of <array 51 of <array 65 of <char>>>>>> %ebp-314474224 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $314474212, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $78618553, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-314474224(%ebp)     # local array 'v4': 5 dimensions
    movl    $49,-314474220(%ebp)    #   dimension 1: 49 elements
    movl    $88,-314474216(%ebp)    #   dimension 2: 88 elements
    movl    $22,-314474212(%ebp)    #   dimension 3: 22 elements
    movl    $51,-314474208(%ebp)    #   dimension 4: 51 elements
    movl    $65,-314474204(%ebp)    #   dimension 5: 65 elements

    # function body
l_f2_1_while_cond:
    leal    -314474224(%ebp), %eax  #   1:     &()    t3 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  1 <- t3
    pushl   %eax                   
    movl    $100, %eax              #   3:     param  0 <- 100
    pushl   %eax                   
    call    f1                      #   4:     call   t4 <- f1
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     if     t4 <= 27456 goto 2_while_body
    movl    $27456, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   6:     goto   0
l_f2_2_while_body:
    movl    $1, %eax                #   8:     if     1 = 1 goto 5
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_5                 
    jmp     l_f2_6                  #   9:     goto   6
l_f2_5:
    movl    $1, %eax                #  11:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_7                  #  12:     goto   7
l_f2_6:
    movl    $0, %eax                #  14:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f2_7:
    movzbl  -21(%ebp), %eax         #  16:     assign v3 <- t5
    movb    %al, -37(%ebp)         
    movl    $14242, %eax            #  17:     if     14242 > 80164 goto 10_if_true
    movl    $80164, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  18:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  20:     goto   9
l_f2_11_if_false:
l_f2_9:
    jmp     l_f2_1_while_cond       #  23:     goto   1_while_cond
l_f2_0:
    call    ReadInt                 #  25:     call   t6 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    $0, %eax                #  26:     if     0 = 1 goto 15_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_15_if_true        
    jmp     l_f2_16_if_false        #  27:     goto   16_if_false
l_f2_15_if_true:
    movl    $49042, %eax            #  29:     add    t7 <- 49042, 32955
    movl    $32955, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  30:     add    t8 <- t7, 76893
    movl    $76893, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  31:     assign v0 <- t8
    movl    %eax, 8(%ebp)          
    jmp     l_f2_14                 #  32:     goto   14
l_f2_16_if_false:
l_f2_14:

l_f2_exit:
    # epilogue
    addl    $314474212, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

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
l_test_2_while_cond:
    jmp     l_test_3_while_body     #   2:     goto   3_while_body
    jmp     l_test_3_while_body     #   3:     goto   3_while_body
l_test_3_while_body:
    jmp     l_test_7                #   5:     goto   7
l_test_7:
    jmp     l_test_2_while_cond     #   7:     goto   2_while_cond
    call    dummyBOOLfunc           #   8:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   9:     if     t0 = 1 goto 16
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_16              
    jmp     l_test_12               #  10:     goto   12
l_test_16:
    movl    $1, %eax                #  12:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_13               #  13:     goto   13
l_test_12:
    movl    $0, %eax                #  15:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_13:
    movzbl  -14(%ebp), %eax         #  17:     assign v0 <- t1
    movb    %al, v0                
    call    dummyBOOLfunc           #  18:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movl    $55542, %eax            #  19:     assign v1 <- 55542
    movl    %eax, v1               

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
