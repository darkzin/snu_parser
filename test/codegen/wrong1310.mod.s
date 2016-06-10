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
    #    -16(%ebp)   4  [ $t8       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t9       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]

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
    call    dummyINTfunc            #   0:     call   t8 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t9 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   2:     param  0 <- t9
    pushl   %eax                   
    call    WriteChar               #   3:     call   WriteChar
    addl    $4, %esp               
    call    WriteLn                 #   4:     call   WriteLn

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
    #    -16(%ebp)   4  [ $t8       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t9       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
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
    movl    $94410, %eax            #   1:     assign v1 <- 94410
    movl    %eax, 8(%ebp)          
    jmp     l_f1_exit              
    call    ReadInt                 #   3:     call   t8 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
    call    dummyCHARfunc           #   6:     call   t9 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   7:     assign v2 <- t9
    movb    %al, -18(%ebp)         
    jmp     l_f1_exit              
    jmp     l_f1_8                  #   9:     goto   8
l_f1_8:

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t8       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t9       <bool> %ebp-19 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #    -20(%ebp)   1  [ $v2       <char> %ebp-20 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]

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
    jmp     l_f2_2                  #   0:     goto   2
    jmp     l_f2_2                  #   1:     goto   2
    jmp     l_f2_2                  #   2:     goto   2
    movl    $1, %eax                #   3:     assign t8 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t8 <- 0
    movb    %al, -18(%ebp)         
l_f2_3:
    movzbl  -18(%ebp), %eax         #   8:     assign v1 <- t8
    movb    %al, 8(%ebp)           
l_f2_8_while_cond:
    call    dummyBOOLfunc           #  10:     call   t9 <- dummyBOOLfunc
    movb    %al, -19(%ebp)         
    movzbl  -19(%ebp), %eax         #  11:     if     t9 = 1 goto 9_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_9_while_body      
    jmp     l_f2_7                  #  12:     goto   7
l_f2_9_while_body:
    movl    $99, %eax               #  14:     assign v2 <- 99
    movb    %al, -20(%ebp)         
    leal    _str_1, %eax            #  15:     &()    t10 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  16:     param  0 <- t10
    pushl   %eax                   
    call    WriteStr                #  17:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f2_8_while_cond       #  18:     goto   8_while_cond
l_f2_7:
l_f2_13_while_cond:
    call    dummyBOOLfunc           #  21:     call   t11 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  22:     if     t11 = 1 goto 14_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_14_while_body     
    jmp     l_f2_12                 #  23:     goto   12
l_f2_14_while_body:
    movl    $96451, %eax            #  25:     assign v3 <- 96451
    movl    %eax, -24(%ebp)        
    movl    $99, %eax               #  26:     return 99
    jmp     l_f2_exit              
    movl    $98, %eax               #  27:     return 98
    jmp     l_f2_exit              
    jmp     l_f2_13_while_cond      #  28:     goto   13_while_cond
l_f2_12:

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t6       <bool> %ebp-30 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]

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
l_test_1_while_cond:
    movl    $22386, %eax            #   1:     if     22386 >= 69783 goto 2_while_body
    movl    $69783, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    movl    $0, %eax                #   4:     if     0 # 1 goto 5_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_5_if_true       
    jmp     l_test_6_if_false       #   5:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   7:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  11:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_1_while_cond     #  12:     goto   1_while_cond
l_test_0:
    movl    $69215, %eax            #  14:     if     69215 < 65630 goto 11_if_true
    movl    $65630, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_11_if_true      
    jmp     l_test_12_if_false      #  15:     goto   12_if_false
l_test_11_if_true:
    movl    $73062, %eax            #  17:     assign v0 <- 73062
    movl    %eax, v0               
    call    dummyBOOLfunc           #  18:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_10               #  22:     goto   10
l_test_12_if_false:
l_test_10:
    movl    $66829, %eax            #  25:     div    t2 <- 66829, 57373
    movl    $57373, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     mul    t3 <- t2, 53870
    movl    $53870, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  27:     sub    t4 <- t3, 9240
    movl    $9240, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $55120, %eax            #  28:     if     55120 < t4 goto 20_if_true
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_20_if_true      
    jmp     l_test_21_if_false      #  29:     goto   21_if_false
l_test_20_if_true:
    jmp     l_test_19               #  31:     goto   19
l_test_21_if_false:
l_test_19:
    movl    $52274, %eax            #  34:     if     52274 # 52570 goto 24_if_true
    movl    $52570, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_24_if_true      
    jmp     l_test_25_if_false      #  35:     goto   25_if_false
l_test_24_if_true:
    call    dummyBOOLfunc           #  37:     call   t5 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    call    dummyBOOLfunc           #  38:     call   t6 <- dummyBOOLfunc
    movb    %al, -30(%ebp)         
    jmp     l_test_29               #  39:     goto   29
l_test_29:
    jmp     l_test_23               #  41:     goto   23
l_test_25_if_false:
l_test_23:
    call    ReadInt                 #  44:     call   t7 <- ReadInt
    movl    %eax, -36(%ebp)        
    movl    $58891, %eax            #  45:     assign v0 <- 58891
    movl    %eax, v0               

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
