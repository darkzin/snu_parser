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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 34 of <array 78 of <array 90 of <array 6 of <array 2 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 4 of <array 29 of <array 69 of <array 95 of <array 100 of <int>>>>>>> %ebp+20 ]

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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    movl    $97, %eax               #   2:     assign v2 <- 97
    movb    %al, 12(%ebp)          
    jmp     l_f0_1_while_cond       #   3:     goto   1_while_cond
l_f0_0:
l_f0_7_while_cond:
    movl    $23899, %eax            #   6:     sub    t4 <- 23899, 45593
    movl    $45593, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $32468, %eax            #   7:     if     32468 > t4 goto 8_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_8_while_body      
    jmp     l_f0_6                  #   8:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #  10:     goto   7_while_cond
l_f0_6:
    call    dummyBOOLfunc           #  12:     call   t5 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t4
    jmp     l_f1_exit              
l_f1_2_while_cond:
    call    dummyCHARfunc           #   3:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   4:     call   t6 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -14(%ebp), %eax         #   5:     if     t5 > t6 goto 3_while_body
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_3_while_body      
    jmp     l_f1_1                  #   6:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   8:     goto   2_while_cond
l_f1_1:
    movl    $86325, %eax            #  10:     sub    t7 <- 86325, 81740
    movl    $81740, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     add    t8 <- t7, 17409
    movl    $17409, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     param  0 <- t8
    pushl   %eax                   
    call    WriteInt                #  13:     call   WriteInt
    addl    $4, %esp               

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
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 27 of <array 72 of <array 66 of <array 99 of <array 96 of <int>>>>>>> %ebp+8 ]

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
    movl    $28034, %eax            #   0:     add    t4 <- 28034, 81061
    movl    $81061, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     sub    t5 <- t4, 78846
    movl    $78846, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   2:     sub    t6 <- t5, 45479
    movl    $45479, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   3:     add    t7 <- t6, 29771
    movl    $29771, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   4:     add    t8 <- t7, 58217
    movl    $58217, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   5:     sub    t9 <- t8, 36383
    movl    $36383, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   6:     add    t10 <- t9, 55539
    movl    $55539, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     return t10
    jmp     l_f2_exit              
    movl    $16648, %eax            #   8:     add    t11 <- 16648, 19643
    movl    $19643, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     return t11
    jmp     l_f2_exit              
    call    ReadInt                 #  10:     call   t12 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     return t12
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $36, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <char>>> %ebp-24 ]
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
    movl    $100, %eax              #   0:     if     100 < 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    jmp     l_test_4                #   4:     goto   4
    jmp     l_test_5_while_cond     #   5:     goto   5_while_cond
l_test_4:
    movl    $46635, %eax            #   7:     assign v0 <- 46635
    movl    %eax, v0               
    jmp     l_test_exit            
l_test_10_while_cond:
    movl    $62188, %eax            #  10:     if     62188 < 75426 goto 11_while_body
    movl    $75426, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_11_while_body   
    jmp     l_test_9                #  11:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  13:     goto   10_while_cond
l_test_9:
    jmp     l_test_exit            
    jmp     l_test_0                #  16:     goto   0
l_test_2_if_false:
l_test_0:
l_test_15_while_cond:
l_test_19_while_cond:
    jmp     l_test_18               #  21:     goto   18
    jmp     l_test_19_while_cond    #  22:     goto   19_while_cond
l_test_18:
    jmp     l_test_15_while_cond    #  24:     goto   15_while_cond
l_test_22_while_cond:
    movl    $45510, %eax            #  26:     sub    t0 <- 45510, 37733
    movl    $37733, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  27:     sub    t1 <- t0, 55690
    movl    $55690, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  28:     if     t1 <= 962 goto 23_while_body
    movl    $962, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_23_while_body   
    jmp     l_test_21               #  29:     goto   21
l_test_23_while_body:
    jmp     l_test_25               #  31:     goto   25
l_test_25:
    jmp     l_test_22_while_cond    #  33:     goto   22_while_cond
l_test_21:
l_test_29_while_cond:
    movl    $98, %eax               #  36:     if     98 < 100 goto 30_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_30_while_body   
    jmp     l_test_28               #  37:     goto   28
l_test_30_while_body:
    leal    _str_1, %eax            #  39:     &()    t2 <- _str_1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  40:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #  41:     call   WriteStr
    addl    $4, %esp               
l_test_34_while_cond:
    jmp     l_test_33               #  43:     goto   33
    jmp     l_test_34_while_cond    #  44:     goto   34_while_cond
l_test_33:
    movl    $98, %eax               #  46:     if     98 # 99 goto 37
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_37              
    jmp     l_test_38               #  47:     goto   38
l_test_37:
    movl    $1, %eax                #  49:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_39               #  50:     goto   39
l_test_38:
    movl    $0, %eax                #  52:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_39:
    movzbl  -25(%ebp), %eax         #  54:     assign v1 <- t3
    movb    %al, v1                
    jmp     l_test_29_while_cond    #  55:     goto   29_while_cond
l_test_28:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
