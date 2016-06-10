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
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 98 of <array 44 of <array 61 of <array 30 of <array 64 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 11 of <array 45 of <array 81 of <array 45 of <array 62 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <int> %ebp+20 ]

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
    movl    $58008, %eax            #   1:     if     58008 # 28823 goto 2_while_body
    movl    $28823, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    leal    _str_1, %eax            #   4:     &()    t5 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     param  0 <- t5
    pushl   %eax                   
    call    WriteStr                #   6:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_1_while_cond       #   7:     goto   1_while_cond
l_f0_0:
    call    dummyBOOLfunc           #   9:     call   t6 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
l_f0_7_while_cond:
    jmp     l_f0_6                  #  11:     goto   6
    movl    $99, %eax               #  12:     return 99
    jmp     l_f0_exit              
    jmp     l_f0_12_if_false        #  13:     goto   12_if_false
    jmp     l_f0_10                 #  14:     goto   10
l_f0_12_if_false:
l_f0_10:
    jmp     l_f0_7_while_cond       #  17:     goto   7_while_cond
l_f0_6:

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]

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
    call    dummyINTfunc            #   0:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f1_3_if_false         #   1:     goto   3_if_false
    jmp     l_f1_9_if_false         #   2:     goto   9_if_false
    jmp     l_f1_7                  #   3:     goto   7
l_f1_9_if_false:
l_f1_7:
    jmp     l_f1_1                  #   6:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyBOOLfunc           #   9:     call   t6 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #    -32(%ebp)   4  [ $v3       <int> %ebp-32 ]

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
    movl    $12978, %eax            #   0:     mul    t5 <- 12978, 9261
    movl    $9261, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t6 <- t5, 56976
    movl    $56976, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v3 <- t6
    movl    %eax, -32(%ebp)        
    movl    $71832, %eax            #   3:     mul    t7 <- 71832, 29725
    movl    $29725, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     sub    t8 <- t7, 71936
    movl    $71936, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     return t8
    jmp     l_f2_exit              
l_f2_3_while_cond:
    jmp     l_f2_4_while_body       #   7:     goto   4_while_body
    movl    $1, %eax                #   8:     if     1 = 0 goto 4_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_4_while_body      
    jmp     l_f2_2                  #   9:     goto   2
l_f2_4_while_body:
    jmp     l_f2_3_while_cond       #  11:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
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
    movl    $32939, %eax            #   0:     sub    t0 <- 32939, 66079
    movl    $66079, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $60441, %eax            #   1:     if     60441 < t0 goto 1_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
    movl    $99747, %eax            #   4:     assign v0 <- 99747
    movl    %eax, v0               
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
l_test_6_while_cond:
    call    dummyINTfunc            #   9:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    call    dummyBOOLfunc           #  10:     call   t2 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_test_6_while_cond     #  11:     goto   6_while_cond
    movl    $100, %eax              #  12:     if     100 <= 100 goto 11_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_11_if_true      
    jmp     l_test_12_if_false      #  13:     goto   12_if_false
l_test_11_if_true:
    movl    $99, %eax               #  15:     if     99 <= 97 goto 15
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_15              
    jmp     l_test_16               #  16:     goto   16
l_test_15:
    movl    $1, %eax                #  18:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_17               #  19:     goto   17
l_test_16:
    movl    $0, %eax                #  21:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_17:
    movzbl  -22(%ebp), %eax         #  23:     assign v1 <- t3
    movb    %al, v1                
l_test_20_while_cond:
    jmp     l_test_20_while_cond    #  25:     goto   20_while_cond
    call    ReadInt                 #  26:     call   t4 <- ReadInt
    movl    %eax, -28(%ebp)        
    jmp     l_test_10               #  27:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_24_if_true       #  30:     goto   24_if_true
    jmp     l_test_24_if_true       #  31:     goto   24_if_true
l_test_24_if_true:
    jmp     l_test_23               #  33:     goto   23
l_test_23:
l_test_30_while_cond:
    jmp     l_test_29               #  36:     goto   29
    movl    $34509, %eax            #  37:     assign v0 <- 34509
    movl    %eax, v0               
    jmp     l_test_exit            
l_test_36_while_cond:
    jmp     l_test_35               #  40:     goto   35
    jmp     l_test_36_while_cond    #  41:     goto   36_while_cond
l_test_35:
    jmp     l_test_30_while_cond    #  43:     goto   30_while_cond
l_test_29:
l_test_39_while_cond:
    movl    $99, %eax               #  46:     if     99 > 100 goto 40_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_40_while_body   
    jmp     l_test_38               #  47:     goto   38
l_test_40_while_body:
    jmp     l_test_39_while_cond    #  49:     goto   39_while_cond
l_test_38:

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
