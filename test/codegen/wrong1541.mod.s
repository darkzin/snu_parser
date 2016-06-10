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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t7       <char> %ebp-30 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 30 of <array 36 of <array 86 of <array 63 of <array 47 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 24 of <array 23 of <array 48 of <array 93 of <array 66 of <int>>>>>>> %ebp+12 ]

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
    movl    $39744, %eax            #   0:     div    t2 <- 39744, 4344
    movl    $4344, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t3 <- t2, 69436
    movl    $69436, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t4 <- t3, 85872
    movl    $85872, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     param  0 <- t4
    pushl   %eax                   
    call    WriteInt                #   4:     call   WriteInt
    addl    $4, %esp               
    movl    $96364, %eax            #   5:     if     96364 >= 32226 goto 2_if_true
    movl    $32226, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   6:     goto   3_if_false
l_f0_2_if_true:
    movl    $99, %eax               #   8:     if     99 <= 98 goto 6_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   9:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #  11:     goto   5
l_f0_7_if_false:
l_f0_5:
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    call    dummyINTfunc            #  16:     call   t5 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    jmp     l_f0_exit              
    movl    $97, %eax               #  18:     if     97 = 98 goto 14_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  19:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_13                 #  21:     goto   13
l_f0_15_if_false:
l_f0_13:
    call    dummyBOOLfunc           #  24:     call   t6 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    jmp     l_f0_1                  #  25:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyCHARfunc           #  28:     call   t7 <- dummyCHARfunc
    movb    %al, -30(%ebp)         

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 38 of <array 94 of <array 17 of <array 61 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -21(%ebp)   1  [ $v2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $v3       <int> %ebp-28 ]

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
    movl    $8858, %eax             #   0:     if     8858 <= 41053 goto 1
    movl    $41053, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_1                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v2 <- t2
    movb    %al, -21(%ebp)         
    call    dummyCHARfunc           #   9:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  10:     assign v1 <- t3
    movb    %al, 12(%ebp)          
    movl    $54689, %eax            #  11:     mul    t4 <- 54689, 97959
    movl    $97959, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     assign v3 <- t4
    movl    %eax, -28(%ebp)        
    jmp     l_f1_6                  #  13:     goto   6
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t2       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t3       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t4       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t5       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t6       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t7       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t9       <int> %ebp-56 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 56 of <array 63 of <array 59 of <array 68 of <array 4 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
l_f2_1_while_cond:
    movl    $24755, %eax            #   1:     mul    t2 <- 24755, 28559
    movl    $28559, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   2:     div    t3 <- t2, 63006
    movl    $63006, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   3:     add    t4 <- t3, 76409
    movl    $76409, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   4:     sub    t5 <- t4, 57614
    movl    $57614, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   5:     sub    t6 <- t5, 44281
    movl    $44281, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   6:     add    t7 <- t6, 39893
    movl    $39893, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   7:     add    t8 <- t7, 22337
    movl    $22337, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   8:     sub    t9 <- t8, 92802
    movl    $92802, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   9:     if     t9 = 37333 goto 2_while_body
    movl    $37333, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #  10:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #  12:     goto   1_while_cond
l_f2_0:
l_f2_5_while_cond:
    jmp     l_f2_4                  #  15:     goto   4
    call    dummyBOOLfunc           #  16:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_5_while_cond       #  17:     goto   5_while_cond
l_f2_4:
    movl    $73055, %eax            #  19:     mul    t11 <- 73055, 41452
    movl    $41452, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $3611, %eax             #  20:     if     3611 > t11 goto 9
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_9                 
    jmp     l_f2_10                 #  21:     goto   10
l_f2_9:
    movl    $1, %eax                #  23:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_11                 #  24:     goto   11
l_f2_10:
    movl    $0, %eax                #  26:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f2_11:
    movzbl  -21(%ebp), %eax         #  28:     return t12
    jmp     l_f2_exit              

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   2:     assign v0 <- t1
    movb    %al, v0                
l_test_3_while_cond:
    jmp     l_test_2                #   4:     goto   2
    jmp     l_test_2                #   5:     goto   2
    movl    $99, %eax               #   6:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_3_while_cond     #   7:     goto   3_while_cond
l_test_2:
    jmp     l_test_9_if_false       #   9:     goto   9_if_false
    movl    $98, %eax               #  10:     if     98 > 100 goto 11_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_11_if_true      
    jmp     l_test_12_if_false      #  11:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  13:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_exit            
    movl    $4122, %eax             #  17:     assign v1 <- 4122
    movl    %eax, v1               
    jmp     l_test_7                #  18:     goto   7
l_test_9_if_false:
l_test_7:

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
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
