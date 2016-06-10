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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 48 of <array 49 of <array 22 of <array 71 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 39 of <array 54 of <array 82 of <array 82 of <array 75 of <bool>>>>>>> %ebp+12 ]
    #    -52(%ebp)   4  [ $v2       <int> %ebp-52 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t3 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     mul    t4 <- t3, 34619
    movl    $34619, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   2:     div    t5 <- t4, 5234
    movl    $5234, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   3:     div    t6 <- t5, 36663
    movl    $36663, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   4:     div    t7 <- t6, 68160
    movl    $68160, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   5:     return t7
    jmp     l_f0_exit              
l_f0_2_while_cond:
    movl    $97, %eax               #   7:     if     97 >= 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_3_while_body      
    jmp     l_f0_1                  #   8:     goto   1
l_f0_3_while_body:
    movl    $79613, %eax            #  10:     sub    t8 <- 79613, 96407
    movl    $96407, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  11:     add    t9 <- t8, 55483
    movl    $55483, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  12:     assign v2 <- t9
    movl    %eax, -52(%ebp)        
    jmp     l_f0_2_while_cond       #  13:     goto   2_while_cond
l_f0_1:
l_f0_7_while_cond:
    call    dummyCHARfunc           #  16:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  17:     if     t10 = 99 goto 8_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_8_while_body      
    jmp     l_f0_6                  #  18:     goto   6
l_f0_8_while_body:
    movl    $52657, %eax            #  20:     return 52657
    jmp     l_f0_exit              
    leal    _str_1, %eax            #  21:     &()    t11 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     param  0 <- t11
    pushl   %eax                   
    call    WriteStr                #  23:     call   WriteStr
    addl    $4, %esp               
l_f0_13_while_cond:
    movl    $25623, %eax            #  25:     if     25623 >= 99376 goto 14_while_body
    movl    $99376, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_14_while_body     
    jmp     l_f0_12                 #  26:     goto   12
l_f0_14_while_body:
    jmp     l_f0_13_while_cond      #  28:     goto   13_while_cond
l_f0_12:
    jmp     l_f0_7_while_cond       #  30:     goto   7_while_cond
l_f0_6:

l_f0_exit:
    # epilogue
    addl    $40, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -21(%ebp)   1  [ $v1       <char> %ebp-21 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    call    dummyBOOLfunc           #   2:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_1_while_cond       #   3:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #   5:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   6:     assign v1 <- t4
    movb    %al, -21(%ebp)         
    leal    _str_2, %eax            #   7:     &()    t5 <- _str_2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     param  0 <- t5
    pushl   %eax                   
    call    WriteStr                #   9:     call   WriteStr
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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 98 of <array 50 of <array 73 of <array 61 of <array 68 of <char>>>>>>> %ebp+12 ]
    #    -15(%ebp)   1  [ $v2       <bool> %ebp-15 ]

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
    jmp     l_f2_1                  #   0:     goto   1
    jmp     l_f2_1                  #   1:     goto   1
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   9:     assign v2 <- t3
    movb    %al, -15(%ebp)         
    jmp     l_f2_exit              
    jmp     l_f2_8                  #  11:     goto   8
    jmp     l_f2_9                  #  12:     goto   9
l_f2_8:
    movl    $1, %eax                #  14:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_10                 #  15:     goto   10
l_f2_9:
    movl    $0, %eax                #  17:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f2_10:
    movzbl  -14(%ebp), %eax         #  19:     assign v2 <- t4
    movb    %al, -15(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]

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
    movl    $0, %eax                #   0:     if     0 = 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $98, %eax               #   3:     if     98 < 97 goto 5_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_5_if_true       
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   6:     goto   4
l_test_6_if_false:
l_test_4:
l_test_9_while_cond:
    movl    $42909, %eax            #  10:     if     42909 <= 96697 goto 10_while_body
    movl    $96697, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_10_while_body   
    jmp     l_test_8                #  11:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  13:     goto   9_while_cond
l_test_8:
    jmp     l_test_0                #  15:     goto   0
l_test_2_if_false:
l_test_0:
l_test_13_while_cond:
l_test_16_while_cond:
    jmp     l_test_16_while_cond    #  20:     goto   16_while_cond
    jmp     l_test_13_while_cond    #  21:     goto   13_while_cond
l_test_19_while_cond:
    call    dummyCHARfunc           #  23:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  24:     if     t0 <= 98 goto 20_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_20_while_body   
    jmp     l_test_18               #  25:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  27:     goto   19_while_cond
l_test_18:
l_test_23_while_cond:
    movl    $34213, %eax            #  30:     add    t1 <- 34213, 50509
    movl    $50509, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  31:     sub    t2 <- t1, 73112
    movl    $73112, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $33280, %eax            #  32:     if     33280 > t2 goto 24_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_24_while_body   
    jmp     l_test_22               #  33:     goto   22
l_test_24_while_body:
    movl    $97, %eax               #  35:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_23_while_cond    #  36:     goto   23_while_cond
l_test_22:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    .align   4
_str_2:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
