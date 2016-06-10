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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 4 of <array 1 of <array 5 of <array 4 of <char>>>>>>> %ebp+12 ]

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
    jmp     l_f0_exit              
    call    ReadInt                 #   1:     call   t7 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f0_3_while_cond:
    call    dummyBOOLfunc           #   3:     call   t8 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   4:     if     t8 = 1 goto 4_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_4_while_body      
l_f0_4_while_body:
    jmp     l_f0_3_while_cond       #   6:     goto   3_while_cond

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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f1_2_while_cond:
    movl    $98, %eax               #   2:     if     98 >= 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_3_while_body      
    jmp     l_f1_1                  #   3:     goto   1
l_f1_3_while_body:
    movl    $99, %eax               #   5:     assign v0 <- 99
    movb    %al, 8(%ebp)           
    movl    $22306, %eax            #   6:     if     22306 < 21510 goto 7_if_true
    movl    $21510, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   7:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_6                  #   9:     goto   6
l_f1_8_if_false:
l_f1_6:
l_f1_11_while_cond:
    movl    $97, %eax               #  13:     if     97 = 97 goto 12_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_12_while_body     
    jmp     l_f1_10                 #  14:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  16:     goto   11_while_cond
l_f1_10:
    movl    $96779, %eax            #  18:     if     96779 # 82858 goto 15
    movl    $82858, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_15                
    jmp     l_f1_16                 #  19:     goto   16
l_f1_15:
    movl    $1, %eax                #  21:     assign t8 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_17                 #  22:     goto   17
l_f1_16:
    movl    $0, %eax                #  24:     assign t8 <- 0
    movb    %al, -14(%ebp)         
l_f1_17:
    movzbl  -14(%ebp), %eax         #  26:     return t8
    jmp     l_f1_exit              
    jmp     l_f1_2_while_cond       #  27:     goto   2_while_cond
l_f1_1:
    call    dummyBOOLfunc           #  29:     call   t9 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  30:     if     t9 = 1 goto 20_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_20_if_true        
    jmp     l_f1_21_if_false        #  31:     goto   21_if_false
l_f1_20_if_true:
l_f1_23_while_cond:
    jmp     l_f1_23_while_cond      #  34:     goto   23_while_cond
    jmp     l_f1_19                 #  35:     goto   19
l_f1_21_if_false:
l_f1_19:

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 8 of <array 2 of <array 3 of <array 3 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 7 of <array 3 of <array 9 of <array 6 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 6 of <array 5 of <array 8 of <array 5 of <char>>>>>>> %ebp+20 ]

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
l_f2_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t7 > 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    movl    $35514, %eax            #   7:     sub    t8 <- 35514, 3918
    movl    $3918, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $97267, %eax            #   8:     if     97267 # t8 goto 5_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   9:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_10_if_false        #  11:     goto   10_if_false
    jmp     l_f2_8                  #  12:     goto   8
l_f2_10_if_false:
l_f2_8:
    jmp     l_f2_4                  #  15:     goto   4
l_f2_6_if_false:
l_f2_4:
l_f2_12_while_cond:
    call    dummyBOOLfunc           #  19:     call   t9 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  20:     if     t9 = 1 goto 14
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_14                
    jmp     l_f2_11                 #  21:     goto   11
l_f2_14:
    jmp     l_f2_11                 #  23:     goto   11
    jmp     l_f2_12_while_cond      #  24:     goto   12_while_cond
l_f2_11:

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
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]

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
    movl    $66067, %eax            #   0:     add    t0 <- 66067, 56566
    movl    $56566, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 54934
    movl    $54934, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t2 <- t1, 20747
    movl    $20747, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t3 <- t2, 65119
    movl    $65119, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t4 <- t3, 13335
    movl    $13335, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     sub    t5 <- t4, 63647
    movl    $63647, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $20090, %eax            #   6:     if     20090 = t5 goto 1_if_true
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   7:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    movl    $29319, %eax            #  10:     if     29319 > 65930 goto 6_while_body
    movl    $65930, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_6_while_body    
    jmp     l_test_4                #  11:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #  13:     goto   5_while_cond
l_test_4:
    jmp     l_test_0                #  15:     goto   0
l_test_2_if_false:
l_test_0:
l_test_9_while_cond:
    movl    $97, %eax               #  19:     if     97 < 100 goto 10_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_10_while_body   
    jmp     l_test_8                #  20:     goto   8
l_test_10_while_body:
    jmp     l_test_14_if_false      #  22:     goto   14_if_false
    jmp     l_test_12               #  23:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_9_while_cond     #  26:     goto   9_while_cond
l_test_8:
    call    dummyBOOLfunc           #  28:     call   t6 <- dummyBOOLfunc
    movb    %al, -37(%ebp)         
    movl    $98, %eax               #  29:     if     98 = 100 goto 17_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_17_if_true      
    jmp     l_test_18_if_false      #  30:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_exit            
    jmp     l_test_16               #  33:     goto   16
l_test_18_if_false:
l_test_16:

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
