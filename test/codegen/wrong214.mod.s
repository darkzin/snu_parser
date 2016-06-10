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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

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
    movl    $6373, %eax             #   0:     assign v1 <- 6373
    movl    %eax, -20(%ebp)        
    jmp     l_f0_exit              
l_f0_3_while_cond:
    call    dummyCHARfunc           #   3:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   4:     if     t4 > 100 goto 4_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_4_while_body      
    jmp     l_f0_2                  #   5:     goto   2
l_f0_4_while_body:
    jmp     l_f0_3_while_cond       #   7:     goto   3_while_cond
l_f0_2:

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t8       <bool> %ebp-26 ]

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
    movl    $2927, %eax             #   0:     sub    t4 <- 2927, 97743
    movl    $97743, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t5 <- t4, 67027
    movl    $67027, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t6 <- t5, 13473
    movl    $13473, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     if     t6 > 48278 goto 1
    movl    $48278, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_1                 
    jmp     l_f1_2                  #   4:     goto   2
l_f1_1:
    movl    $1, %eax                #   6:     assign t7 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_3                  #   7:     goto   3
l_f1_2:
    movl    $0, %eax                #   9:     assign t7 <- 0
    movb    %al, -25(%ebp)         
l_f1_3:
    movzbl  -25(%ebp), %eax         #  11:     return t7
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  12:     call   t8 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         
l_f1_7_while_cond:
l_f1_10_while_cond:
    jmp     l_f1_10_while_cond      #  15:     goto   10_while_cond
    jmp     l_f1_7_while_cond       #  16:     goto   7_while_cond

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <char> %ebp-22 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 2 of <array 7 of <array 6 of <array 4 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]

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
    jmp     l_f2_4                  #   0:     goto   4
l_f2_4:
    movl    $1, %eax                #   2:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_6                  #   3:     goto   6
    movl    $0, %eax                #   4:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f2_6:
    movzbl  -13(%ebp), %eax         #   6:     if     t4 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   7:     goto   2_if_false
l_f2_1_if_true:
    movl    $0, %eax                #   9:     assign v3 <- 0
    movb    %al, 16(%ebp)          
    movl    $100, %eax              #  10:     return 100
    jmp     l_f2_exit              
    call    dummyINTfunc            #  11:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f2_13_while_cond:
    movl    $99, %eax               #  13:     if     99 < 97 goto 14_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_14_while_body     
    jmp     l_f2_12                 #  14:     goto   12
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  16:     goto   13_while_cond
l_f2_12:
    jmp     l_f2_0                  #  18:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_17_while_cond:
    jmp     l_f2_20                 #  22:     goto   20
l_f2_20:
    movl    $1, %eax                #  24:     assign t6 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_22                 #  25:     goto   22
    movl    $0, %eax                #  26:     assign t6 <- 0
    movb    %al, -21(%ebp)         
l_f2_22:
    movl    $1, %eax                #  28:     if     1 = t6 goto 18_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_18_while_body     
    jmp     l_f2_16                 #  29:     goto   16
l_f2_18_while_body:
    movl    $98, %eax               #  31:     return 98
    jmp     l_f2_exit              
    jmp     l_f2_17_while_cond      #  32:     goto   17_while_cond
l_f2_16:
    call    dummyCHARfunc           #  34:     call   t7 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  35:     return t7
    jmp     l_f2_exit              

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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

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
    movl    $98, %eax               #   0:     if     98 < 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $100, %eax              #   3:     assign v0 <- 100
    movb    %al, v0                
    movl    $99, %eax               #   4:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   5:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_0                #   6:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $77867, %eax            #   9:     param  0 <- 77867
    pushl   %eax                   
    call    WriteInt                #  10:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_9_if_false       #  11:     goto   9_if_false
l_test_11_while_cond:
    jmp     l_test_11_while_cond    #  13:     goto   11_while_cond
    call    f1                      #  14:     call   t0 <- f1
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_7                #  16:     goto   7
l_test_9_if_false:
l_test_7:
    movl    $99, %eax               #  19:     if     99 > 100 goto 16_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_16_if_true      
    jmp     l_test_17_if_false      #  20:     goto   17_if_false
l_test_16_if_true:
l_test_20_while_cond:
    movl    $62519, %eax            #  23:     if     62519 >= 66008 goto 21_while_body
    movl    $66008, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_21_while_body   
    jmp     l_test_19               #  24:     goto   19
l_test_21_while_body:
    movl    $0, %eax                #  26:     assign v1 <- 0
    movb    %al, v1                
l_test_25_while_cond:
    movl    $98, %eax               #  28:     if     98 = 98 goto 26_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_26_while_body   
    jmp     l_test_24               #  29:     goto   24
l_test_26_while_body:
    jmp     l_test_25_while_cond    #  31:     goto   25_while_cond
l_test_24:
l_test_29_while_cond:
    jmp     l_test_28               #  34:     goto   28
    jmp     l_test_29_while_cond    #  35:     goto   29_while_cond
l_test_28:
    jmp     l_test_20_while_cond    #  37:     goto   20_while_cond
l_test_19:
    jmp     l_test_15               #  39:     goto   15
l_test_17_if_false:
l_test_15:
    movl    $46636, %eax            #  42:     mul    t1 <- 46636, 91495
    movl    $91495, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  43:     div    t2 <- t1, 57909
    movl    $57909, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  44:     sub    t3 <- t2, 90338
    movl    $90338, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  45:     param  0 <- t3
    pushl   %eax                   
    call    WriteInt                #  46:     call   WriteInt
    addl    $4, %esp               

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
