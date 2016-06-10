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
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
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
    movl    $100, %eax              #   0:     assign v0 <- 100
    movb    %al, 8(%ebp)           
    movl    $57097, %eax            #   1:     sub    t2 <- 57097, 42839
    movl    $42839, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t3 <- t2, 57492
    movl    $57492, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     assign v2 <- t3
    movl    %eax, -28(%ebp)        
    movl    $100, %eax              #   4:     if     100 >= 99 goto 3_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   5:     goto   4_if_false
l_f0_3_if_true:
    jmp     l_f0_6                  #   7:     goto   6
l_f0_6:
    movl    $1, %eax                #   9:     return 1
    jmp     l_f0_exit              
    movl    $41650, %eax            #  10:     assign v2 <- 41650
    movl    %eax, -28(%ebp)        
l_f0_12_while_cond:
    movl    $59335, %eax            #  12:     if     59335 <= 73603 goto 13_while_body
    movl    $73603, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_13_while_body     
    jmp     l_f0_11                 #  13:     goto   11
l_f0_13_while_body:
    jmp     l_f0_12_while_cond      #  15:     goto   12_while_cond
l_f0_11:
    call    ReadInt                 #  17:     call   t4 <- ReadInt
    movl    %eax, -24(%ebp)        
    jmp     l_f0_2                  #  18:     goto   2
l_f0_4_if_false:
l_f0_2:

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t5       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $v0       <bool> %ebp-19 ]

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
    movl    $91477, %eax            #   0:     if     91477 >= 55932 goto 4
    movl    $55932, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_4                 
    jmp     l_f1_5                  #   1:     goto   5
l_f1_4:
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   4:     goto   6
l_f1_5:
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    movzbl  -13(%ebp), %eax         #   8:     return t2
    jmp     l_f1_exit              
    movl    $97538, %eax            #   9:     if     97538 < 46524 goto 9
    movl    $46524, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_9                 
    jmp     l_f1_10                 #  10:     goto   10
l_f1_9:
    movl    $1, %eax                #  12:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_11                 #  13:     goto   11
l_f1_10:
    movl    $0, %eax                #  15:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f1_11:
    movzbl  -14(%ebp), %eax         #  17:     return t3
    jmp     l_f1_exit              
    movl    $100, %eax              #  18:     if     100 <= 98 goto 14
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_14                
    jmp     l_f1_15                 #  19:     goto   15
l_f1_14:
    movl    $1, %eax                #  21:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_16                 #  22:     goto   16
l_f1_15:
    movl    $0, %eax                #  24:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f1_16:
    movzbl  -15(%ebp), %eax         #  26:     param  1 <- t4
    pushl   %eax                   
    movl    $99, %eax               #  27:     param  0 <- 99
    pushl   %eax                   
    call    f0                      #  28:     call   t5 <- f0
    addl    $8, %esp               
    movb    %al, -16(%ebp)         
    jmp     l_f1_20_if_false        #  29:     goto   20_if_false
    jmp     l_f1_18                 #  30:     goto   18
l_f1_20_if_false:
l_f1_18:
    movl    $1, %eax                #  33:     if     1 = 0 goto 22
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_22                
    jmp     l_f1_23                 #  34:     goto   23
l_f1_22:
    movl    $1, %eax                #  36:     assign t6 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_24                 #  37:     goto   24
l_f1_23:
    movl    $0, %eax                #  39:     assign t6 <- 0
    movb    %al, -17(%ebp)         
l_f1_24:
    movzbl  -17(%ebp), %eax         #  41:     return t6
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  42:     goto   0
l_f1_0:
    jmp     l_f1_28                 #  44:     goto   28
    jmp     l_f1_28                 #  45:     goto   28
    movl    $1, %eax                #  46:     assign t7 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_29                 #  47:     goto   29
l_f1_28:
    movl    $0, %eax                #  49:     assign t7 <- 0
    movb    %al, -18(%ebp)         
l_f1_29:
    movzbl  -18(%ebp), %eax         #  51:     assign v0 <- t7
    movb    %al, -19(%ebp)         
    movl    $1, %eax                #  52:     assign v0 <- 1
    movb    %al, -19(%ebp)         

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $v0       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v1       <char> %ebp-16 ]

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
    movl    $97, %eax               #   0:     if     97 <= 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_1                 
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
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #   9:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_f2_7_while_cond:
    jmp     l_f2_6                  #  11:     goto   6
    movl    $99, %eax               #  12:     assign v1 <- 99
    movb    %al, -16(%ebp)         
    jmp     l_f2_7_while_cond       #  13:     goto   7_while_cond
l_f2_6:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_0                #   1:     goto   0
l_test_0:
l_test_5_while_cond:
    movl    $89208, %eax            #   4:     div    t1 <- 89208, 51607
    movl    $51607, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $73111, %eax            #   5:     if     73111 < t1 goto 6_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_6_while_body    
    jmp     l_test_4                #   6:     goto   4
l_test_6_while_body:
    jmp     l_test_exit            
    jmp     l_test_5_while_cond     #   9:     goto   5_while_cond
l_test_4:
    movl    $0, %eax                #  11:     assign v0 <- 0
    movb    %al, v0                

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
