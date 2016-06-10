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
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t8       <bool> %ebp-37 ]
    #    -38(%ebp)   1  [ $t9       <char> %ebp-38 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -39(%ebp)   1  [ $v1       <bool> %ebp-39 ]

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
    movl    $93315, %eax            #   0:     mul    t2 <- 93315, 8042
    movl    $8042, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t3 <- t2, 11020
    movl    $11020, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     div    t4 <- t3, 85981
    movl    $85981, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     div    t5 <- t4, 44402
    movl    $44402, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $86279, %eax            #   4:     if     86279 >= t5 goto 1_if_true
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   5:     goto   2_if_false
l_f0_1_if_true:
    call    dummyBOOLfunc           #   7:     call   t6 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
l_f0_6_while_cond:
    movl    $97, %eax               #   9:     if     97 = 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_7_while_body      
    jmp     l_f0_5                  #  10:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #  12:     goto   6_while_cond
l_f0_5:
    jmp     l_f0_0                  #  14:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $63146, %eax            #  17:     add    t7 <- 63146, 70579
    movl    $70579, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  18:     if     t7 = 28975 goto 10
    movl    $28975, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_10                
    jmp     l_f0_11                 #  19:     goto   11
l_f0_10:
    movl    $1, %eax                #  21:     assign t8 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f0_12                 #  22:     goto   12
l_f0_11:
    movl    $0, %eax                #  24:     assign t8 <- 0
    movb    %al, -37(%ebp)         
l_f0_12:
    movzbl  -37(%ebp), %eax         #  26:     assign v1 <- t8
    movb    %al, -39(%ebp)         
l_f0_15_while_cond:
    call    dummyCHARfunc           #  28:     call   t9 <- dummyCHARfunc
    movb    %al, -38(%ebp)         
    movl    $98, %eax               #  29:     if     98 <= t9 goto 16_while_body
    movzbl  -38(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_16_while_body     
    jmp     l_f0_14                 #  30:     goto   14
l_f0_16_while_body:
    movl    $1, %eax                #  32:     if     1 # 0 goto 19_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_19_if_true        
    jmp     l_f0_20_if_false        #  33:     goto   20_if_false
l_f0_19_if_true:
    jmp     l_f0_18                 #  35:     goto   18
l_f0_20_if_false:
l_f0_18:
    jmp     l_f0_15_while_cond      #  38:     goto   15_while_cond
l_f0_14:

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 8 of <array 3 of <array 9 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
    call    WriteLn                 #   0:     call   WriteLn
l_f1_2_while_cond:
    jmp     l_f1_3_while_body       #   2:     goto   3_while_body
    jmp     l_f1_3_while_body       #   3:     goto   3_while_body
    jmp     l_f1_3_while_body       #   4:     goto   3_while_body
    jmp     l_f1_1                  #   5:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   7:     goto   2_while_cond
l_f1_1:
    call    dummyBOOLfunc           #   9:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 7 of <array 5 of <array 5 of <array 3 of <bool>>>>>>> %ebp+12 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]

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
    movl    $29781, %eax            #   0:     sub    t2 <- 29781, 66699
    movl    $66699, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t3 <- t2, 53759
    movl    $53759, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v2 <- t3
    movl    %eax, -28(%ebp)        
    call    ReadInt                 #   3:     call   t4 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $99, %eax               #   4:     if     99 < 99 goto 3_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   5:     goto   4_if_false
l_f2_3_if_true:
l_f2_7_while_cond:
    movl    $99, %eax               #   8:     if     99 # 100 goto 8_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f2_8_while_body      
    jmp     l_f2_6                  #   9:     goto   6
l_f2_8_while_body:
    movl    $73058, %eax            #  11:     return 73058
    jmp     l_f2_exit              
    jmp     l_f2_7_while_cond       #  12:     goto   7_while_cond
l_f2_6:
    jmp     l_f2_2                  #  14:     goto   2
l_f2_4_if_false:
l_f2_2:

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
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 2_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_if_true       
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_2_if_true:
    movl    $0, %eax                #   5:     if     0 # 1 goto 5_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_5_if_true       
    jmp     l_test_6_if_false       #   6:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   8:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_1                #  11:     goto   1
l_test_3_if_false:
l_test_1:
l_test_9_while_cond:
    movl    $53721, %eax            #  15:     sub    t1 <- 53721, 51927
    movl    $51927, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     if     t1 = 55328 goto 10_while_body
    movl    $55328, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_10_while_body   
    jmp     l_test_8                #  17:     goto   8
l_test_10_while_body:
    movl    $45145, %eax            #  19:     assign v0 <- 45145
    movl    %eax, v0               
l_test_14_while_cond:
    jmp     l_test_14_while_cond    #  21:     goto   14_while_cond
    jmp     l_test_9_while_cond     #  22:     goto   9_while_cond
l_test_8:
l_test_17_while_cond:
    jmp     l_test_16               #  25:     goto   16
    jmp     l_test_17_while_cond    #  26:     goto   17_while_cond
l_test_16:

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
