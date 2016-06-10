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
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 71 of <array 13 of <array 32 of <array 14 of <array 81 of <char>>>>>>> %ebp+8 ]
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
    movl    $8963, %eax             #   0:     mul    t2 <- 8963, 48421
    movl    $48421, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t3 <- t2, 10947
    movl    $10947, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t4 <- t3, 11773
    movl    $11773, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v1 <- t4
    movl    %eax, -40(%ebp)        
    movl    $75838, %eax            #   4:     sub    t5 <- 75838, 44571
    movl    $44571, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     sub    t6 <- t5, 65835
    movl    $65835, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     add    t7 <- t6, 12745
    movl    $12745, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     return t7
    jmp     l_f0_exit              
l_f0_3_while_cond:
    jmp     l_f0_4_while_body       #   9:     goto   4_while_body
l_f0_4_while_body:
l_f0_8_while_cond:
    movl    $97, %eax               #  12:     if     97 < 97 goto 9_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_9_while_body      
    jmp     l_f0_7                  #  13:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #  15:     goto   8_while_cond
l_f0_7:
    jmp     l_f0_3_while_cond       #  17:     goto   3_while_cond

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
    #    -41(%ebp)   1  [ $t2       <bool> %ebp-41 ]
    #    -48(%ebp)   4  [ $t3       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t4       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t5       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t6       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t7       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t8       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t9       <int> %ebp-72 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 97 of <array 99 of <array 75 of <array 66 of <array 10 of <int>>>>>>> %ebp+8 ]
    #    -73(%ebp)   1  [ $v1       <bool> %ebp-73 ]
    #    -74(%ebp)   1  [ $v2       <char> %ebp-74 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $64, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $16, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    movl    $0, %eax                #   1:     if     0 # 0 goto 4
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_4                 
    jmp     l_f1_5                  #   2:     goto   5
l_f1_4:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_f1_6                  #   5:     goto   6
l_f1_5:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -41(%ebp)         
l_f1_6:
    movzbl  -41(%ebp), %eax         #   9:     assign v1 <- t2
    movb    %al, -73(%ebp)         
l_f1_9_while_cond:
    movl    $98, %eax               #  11:     if     98 < 97 goto 10_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_10_while_body     
    jmp     l_f1_8                  #  12:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  14:     goto   9_while_cond
l_f1_8:
    movl    $97, %eax               #  16:     assign v2 <- 97
    movb    %al, -74(%ebp)         
    jmp     l_f1_0                  #  17:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $59358, %eax            #  20:     add    t3 <- 59358, 16090
    movl    $16090, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  21:     return t3
    jmp     l_f1_exit              
    movl    $92692, %eax            #  22:     div    t4 <- 92692, 58809
    movl    $58809, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  23:     div    t5 <- t4, 59789
    movl    $59789, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  24:     div    t6 <- t5, 79814
    movl    $79814, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  25:     sub    t7 <- t6, 15725
    movl    $15725, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  26:     add    t8 <- t7, 32172
    movl    $32172, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  27:     add    t9 <- t8, 17044
    movl    $17044, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  28:     sub    t10 <- t9, 74838
    movl    $74838, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  29:     add    t11 <- t10, 82459
    movl    $82459, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  30:     add    t12 <- t11, 81556
    movl    $81556, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  31:     sub    t13 <- t12, 82763
    movl    $82763, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  32:     sub    t14 <- t13, 81384
    movl    $81384, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  33:     add    t15 <- t14, 80184
    movl    $80184, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  34:     add    t16 <- t15, 75628
    movl    $75628, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  35:     return t16
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $64, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $v0       <bool> %ebp-21 ]

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
    movl    $99, %eax               #   0:     if     99 >= 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t2
    movb    %al, -21(%ebp)         
    jmp     l_f2_9                  #   9:     goto   9
l_f2_9:
    movl    $1, %eax                #  11:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_8                  #  12:     goto   8
    movl    $0, %eax                #  13:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f2_8:
    movzbl  -14(%ebp), %eax         #  15:     return t3
    jmp     l_f2_exit              
    leal    _str_1, %eax            #  16:     &()    t4 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #  18:     call   WriteStr
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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

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
    call    f2                      #   0:     call   t0 <- f2
    movb    %al, -13(%ebp)         
l_test_2_while_cond:
    jmp     l_test_2_while_cond     #   2:     goto   2_while_cond
    movl    $8836, %eax             #   3:     mul    t1 <- 8836, 65402
    movl    $65402, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     assign v0 <- t1
    movl    %eax, v0               

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
