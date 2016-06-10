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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t7       <bool> %ebp-26 ]

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
l_f0_1_while_cond:
    movl    $0, %eax                #   1:     if     0 # 1 goto 4
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_4                 
    jmp     l_f0_5                  #   2:     goto   5
l_f0_4:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   5:     goto   6
l_f0_5:
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    movl    $1, %eax                #   9:     if     1 # t3 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #  10:     goto   0
l_f0_2_while_body:
    jmp     l_f0_10_if_false        #  12:     goto   10_if_false
    jmp     l_f0_8                  #  13:     goto   8
l_f0_10_if_false:
l_f0_8:
l_f0_12_while_cond:
    movl    $58934, %eax            #  17:     if     58934 < 63957 goto 13_while_body
    movl    $63957, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_13_while_body     
    jmp     l_f0_11                 #  18:     goto   11
l_f0_13_while_body:
    jmp     l_f0_12_while_cond      #  20:     goto   12_while_cond
l_f0_11:
    jmp     l_f0_1_while_cond       #  22:     goto   1_while_cond
l_f0_0:
    movl    $89208, %eax            #  24:     div    t4 <- 89208, 22039
    movl    $22039, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  25:     div    t5 <- t4, 88774
    movl    $88774, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $62575, %eax            #  26:     if     62575 > t5 goto 16
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_16                
    jmp     l_f0_17                 #  27:     goto   17
l_f0_16:
    movl    $1, %eax                #  29:     assign t6 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_18                 #  30:     goto   18
l_f0_17:
    movl    $0, %eax                #  32:     assign t6 <- 0
    movb    %al, -25(%ebp)         
l_f0_18:
    movzbl  -25(%ebp), %eax         #  34:     return t6
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  35:     call   t7 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <char> %ebp-33 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #    -40(%ebp)   4  [ $v3       <int> %ebp-40 ]

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
    movl    $66480, %eax            #   0:     add    t3 <- 66480, 63112
    movl    $63112, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t4 <- t3, 35378
    movl    $35378, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t5 <- t4, 46355
    movl    $46355, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t6 <- t5, 59473
    movl    $59473, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t7 <- t6, 16069
    movl    $16069, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     if     t7 > 97098 goto 1_if_true
    movl    $97098, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   6:     goto   2_if_false
l_f1_1_if_true:
    movl    $99, %eax               #   8:     assign v1 <- 99
    movb    %al, 8(%ebp)           
    jmp     l_f1_0                  #   9:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_6_while_cond:
    movl    $100, %eax              #  13:     if     100 = 98 goto 9
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_9                 
    jmp     l_f1_5                  #  14:     goto   5
l_f1_9:
    jmp     l_f1_5                  #  16:     goto   5
    jmp     l_f1_6_while_cond       #  17:     goto   6_while_cond
l_f1_5:
    call    dummyCHARfunc           #  19:     call   t8 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    movl    $97, %eax               #  20:     if     97 < t8 goto 12_if_true
    movzbl  -33(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  21:     goto   13_if_false
l_f1_12_if_true:
    movl    $1, %eax                #  23:     if     1 = 1 goto 16_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_16_if_true        
    jmp     l_f1_17_if_false        #  24:     goto   17_if_false
l_f1_16_if_true:
    jmp     l_f1_15                 #  26:     goto   15
l_f1_17_if_false:
l_f1_15:
l_f1_20_while_cond:
    movl    $0, %eax                #  30:     if     0 # 1 goto 21_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_21_while_body     
    jmp     l_f1_19                 #  31:     goto   19
l_f1_21_while_body:
    jmp     l_f1_20_while_cond      #  33:     goto   20_while_cond
l_f1_19:
    movl    $55327, %eax            #  35:     assign v3 <- 55327
    movl    %eax, -40(%ebp)        
    movl    $23650, %eax            #  36:     return 23650
    jmp     l_f1_exit              
    jmp     l_f1_11                 #  37:     goto   11
l_f1_13_if_false:
l_f1_11:

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 44 of <array 14 of <array 59 of <array 40 of <array 53 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 30 of <array 56 of <array 18 of <array 82 of <array 97 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

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
    call    ReadInt                 #   0:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $1, %eax                #   1:     assign v4 <- 1
    movb    %al, 20(%ebp)          
    call    dummyCHARfunc           #   2:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    movl    $100, %eax              #   0:     assign v0 <- 100
    movb    %al, v0                
    movl    $97, %eax               #   1:     if     97 >= 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    movl    $48197, %eax            #   4:     if     48197 # 54392 goto 6_if_true
    movl    $54392, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_6_if_true       
    jmp     l_test_7_if_false       #   5:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   7:     goto   5
l_test_7_if_false:
l_test_5:
l_test_10_while_cond:
    jmp     l_test_10_while_cond    #  11:     goto   10_while_cond
    movl    $99, %eax               #  12:     if     99 >= 100 goto 13_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_13_if_true      
    jmp     l_test_14_if_false      #  13:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  15:     goto   12
l_test_14_if_false:
l_test_12:
    call    dummyBOOLfunc           #  18:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_18_while_cond:
    jmp     l_test_17               #  20:     goto   17
    jmp     l_test_18_while_cond    #  21:     goto   18_while_cond
l_test_17:
    jmp     l_test_1                #  23:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_exit            
    call    ReadInt                 #  27:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  28:     add    t2 <- t1, 77642
    movl    $77642, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  29:     assign v1 <- t2
    movl    %eax, v1               

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
