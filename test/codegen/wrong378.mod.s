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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v0       <char> %ebp-14 ]

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
    movl    $98, %eax               #   1:     if     98 = 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_0:
    movl    $99, %eax               #   6:     if     99 # 99 goto 5_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   7:     goto   6_if_false
l_f0_5_if_true:
l_f0_12_while_cond:
    jmp     l_f0_12_while_cond      #  10:     goto   12_while_cond
    jmp     l_f0_exit              
    movl    $97, %eax               #  12:     assign v0 <- 97
    movb    %al, -14(%ebp)         
l_f0_17_while_cond:
    movl    $99, %eax               #  14:     if     99 = 99 goto 18_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_18_while_body     
    jmp     l_f0_16                 #  15:     goto   16
l_f0_18_while_body:
    jmp     l_f0_17_while_cond      #  17:     goto   17_while_cond
l_f0_16:
    jmp     l_f0_8                  #  19:     goto   8
l_f0_8:
    jmp     l_f0_4                  #  21:     goto   4
l_f0_6_if_false:
l_f0_4:
l_f0_21_while_cond:
    call    dummyBOOLfunc           #  25:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  26:     if     t6 = 1 goto 22_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_22_while_body     
    jmp     l_f0_20                 #  27:     goto   20
l_f0_22_while_body:
    jmp     l_f0_21_while_cond      #  29:     goto   21_while_cond
l_f0_20:

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $v0       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $v1       <bool> %ebp-37 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    movl    $29059, %eax            #   2:     if     29059 < 14577 goto 4_if_true
    movl    $14577, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_4_if_true         
    jmp     l_f1_5_if_false         #   3:     goto   5_if_false
l_f1_4_if_true:
    jmp     l_f1_3                  #   5:     goto   3
l_f1_5_if_false:
l_f1_3:
    movl    $88943, %eax            #   8:     assign v0 <- 88943
    movl    %eax, -36(%ebp)        
    jmp     l_f1_1_while_cond       #   9:     goto   1_while_cond
l_f1_0:
    call    dummyINTfunc            #  11:     call   t6 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     add    t7 <- t6, 42301
    movl    $42301, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     add    t8 <- t7, 12256
    movl    $12256, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     add    t9 <- t8, 80988
    movl    $80988, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3395, %eax             #  15:     if     3395 > t9 goto 9
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_9                 
    jmp     l_f1_10                 #  16:     goto   10
l_f1_9:
    movl    $1, %eax                #  18:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_11                 #  19:     goto   11
l_f1_10:
    movl    $0, %eax                #  21:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_11:
    movzbl  -13(%ebp), %eax         #  23:     assign v1 <- t10
    movb    %al, -37(%ebp)         
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t8       <ptr(4) to <array 7 of <char>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <char> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 3 of <array 3 of <array 6 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
l_f2_1_while_cond:
    jmp     l_f2_4                  #   1:     goto   4
    jmp     l_f2_4                  #   2:     goto   4
    jmp     l_f2_4                  #   3:     goto   4
    jmp     l_f2_4                  #   4:     goto   4
l_f2_4:
    movl    $1, %eax                #   6:     assign t6 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_6                  #   7:     goto   6
    movl    $0, %eax                #   8:     assign t6 <- 0
    movb    %al, -17(%ebp)         
l_f2_6:
    movl    $1, %eax                #  10:     if     1 = t6 goto 2_while_body
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #  11:     goto   0
l_f2_2_while_body:
    call    dummyBOOLfunc           #  13:     call   t7 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    leal    _str_1, %eax            #  14:     &()    t8 <- _str_1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     param  0 <- t8
    pushl   %eax                   
    call    WriteStr                #  16:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f2_1_while_cond       #  17:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_exit              
l_f2_21_while_cond:
    jmp     l_f2_20                 #  21:     goto   20
    jmp     l_f2_21_while_cond      #  22:     goto   21_while_cond
l_f2_20:
    call    dummyCHARfunc           #  24:     call   t9 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
l_f2_25_while_cond:
    movl    $1, %eax                #  26:     if     1 # 1 goto 26_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_26_while_body     
    jmp     l_f2_24                 #  27:     goto   24
l_f2_26_while_body:
    jmp     l_f2_25_while_cond      #  29:     goto   25_while_cond
l_f2_24:
    call    ReadInt                 #  31:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f2_17                 #  32:     goto   17
l_f2_17:

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]

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
    leal    _str_2, %eax            #   0:     &()    t0 <- _str_2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    movl    $55371, %eax            #   3:     div    t1 <- 55371, 63045
    movl    $63045, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     mul    t2 <- t1, 84663
    movl    $84663, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     mul    t3 <- t2, 71663
    movl    $71663, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     add    t4 <- t3, 87321
    movl    $87321, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     add    t5 <- t4, 63005
    movl    $63005, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   8:     assign v0 <- t5
    movl    %eax, v0               
    jmp     l_test_exit            

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
_str_2:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
