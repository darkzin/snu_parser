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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t8       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t9       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #    -18(%ebp)   1  [ $v3       <bool> %ebp-18 ]

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
    movl    $99, %eax               #   0:     if     99 < 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $63172, %eax            #   4:     if     63172 # 23188 goto 6
    movl    $23188, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_6                 
    jmp     l_f0_7                  #   5:     goto   7
l_f0_6:
    movl    $1, %eax                #   7:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_8                  #   8:     goto   8
l_f0_7:
    movl    $0, %eax                #  10:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f0_8:
    movzbl  -15(%ebp), %eax         #  12:     return t7
    jmp     l_f0_exit              
l_f0_11_while_cond:
    jmp     l_f0_10                 #  14:     goto   10
    jmp     l_f0_11_while_cond      #  15:     goto   11_while_cond
l_f0_10:
l_f0_14_while_cond:
    movl    $99, %eax               #  18:     if     99 < 97 goto 15_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_15_while_body     
    jmp     l_f0_13                 #  19:     goto   13
l_f0_15_while_body:
    jmp     l_f0_14_while_cond      #  21:     goto   14_while_cond
l_f0_13:
    jmp     l_f0_0                  #  23:     goto   0
l_f0_2_if_false:
l_f0_0:
    jmp     l_f0_23                 #  26:     goto   23
    movl    $1, %eax                #  27:     assign t8 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_24                 #  28:     goto   24
l_f0_23:
    movl    $0, %eax                #  30:     assign t8 <- 0
    movb    %al, -16(%ebp)         
l_f0_24:
    movl    $0, %eax                #  32:     if     0 = t8 goto 18
    movzbl  -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_18                
    jmp     l_f0_19                 #  33:     goto   19
l_f0_18:
    movl    $1, %eax                #  35:     assign t9 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_20                 #  36:     goto   20
l_f0_19:
    movl    $0, %eax                #  38:     assign t9 <- 0
    movb    %al, -17(%ebp)         
l_f0_20:
    movzbl  -17(%ebp), %eax         #  40:     return t9
    jmp     l_f0_exit              
    movl    $100, %eax              #  41:     if     100 >= 98 goto 28
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_28                
    jmp     l_f0_29                 #  42:     goto   29
l_f0_28:
    movl    $1, %eax                #  44:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_30                 #  45:     goto   30
l_f0_29:
    movl    $0, %eax                #  47:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_30:
    movzbl  -13(%ebp), %eax         #  49:     assign v3 <- t10
    movb    %al, -18(%ebp)         

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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    movl    $1, %eax                #   1:     return 1
    jmp     l_f1_exit              
    movl    $99, %eax               #   2:     if     99 = 97 goto 5
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_5                 
    jmp     l_f1_6                  #   3:     goto   6
l_f1_5:
    movl    $1, %eax                #   5:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_7                  #   6:     goto   7
l_f1_6:
    movl    $0, %eax                #   8:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f1_7:
    movzbl  -13(%ebp), %eax         #  10:     return t6
    jmp     l_f1_exit              
    jmp     l_f1_11_if_false        #  11:     goto   11_if_false
    jmp     l_f1_9                  #  12:     goto   9
l_f1_11_if_false:
l_f1_9:
    jmp     l_f1_14_if_false        #  15:     goto   14_if_false
    jmp     l_f1_12                 #  16:     goto   12
l_f1_14_if_false:
l_f1_12:
l_f1_16_while_cond:
    jmp     l_f1_16_while_cond      #  20:     goto   16_while_cond
    jmp     l_f1_0                  #  21:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $1, %eax                #  24:     assign v1 <- 1
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #  25:     assign v2 <- 100
    movb    %al, -15(%ebp)         

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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #    -14(%ebp)   1  [ $v3       <char> %ebp-14 ]

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
    movl    $98, %eax               #   0:     if     98 < 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $98037, %eax            #   3:     if     98037 <= 93582 goto 5_if_true
    movl    $93582, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   4:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   6:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_10_if_false        #   9:     goto   10_if_false
    jmp     l_f2_8                  #  10:     goto   8
l_f2_10_if_false:
l_f2_8:
    jmp     l_f2_0                  #  13:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #  16:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #  17:     assign v3 <- 98
    movb    %al, -14(%ebp)         

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
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <bool> %ebp-19 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]

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
l_test_4_while_cond:
    jmp     l_test_3                #   1:     goto   3
    jmp     l_test_4_while_cond     #   2:     goto   4_while_cond
l_test_3:
l_test_7_while_cond:
    movl    $42612, %eax            #   5:     if     42612 <= 20242 goto 8_while_body
    movl    $20242, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_8_while_body    
    jmp     l_test_6                #   6:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #   8:     goto   7_while_cond
l_test_6:
    movl    $7120, %eax             #  10:     assign v0 <- 7120
    movl    %eax, v0               
    movl    $32415, %eax            #  11:     if     32415 < 50810 goto 12_if_true
    movl    $50810, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_12_if_true      
    jmp     l_test_13_if_false      #  12:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_11               #  14:     goto   11
l_test_13_if_false:
l_test_11:
    call    dummyINTfunc            #  17:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $31494, %eax            #  18:     if     31494 = 18267 goto 17_if_true
    movl    $18267, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_17_if_true      
    jmp     l_test_18_if_false      #  19:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  21:     goto   16
l_test_18_if_false:
l_test_16:
    jmp     l_test_0                #  24:     goto   0
l_test_0:
    jmp     l_test_exit            
    call    f1                      #  27:     call   t1 <- f1
    movb    %al, -17(%ebp)         
    movl    $97, %eax               #  28:     param  1 <- 97
    pushl   %eax                   
    call    dummyCHARfunc           #  29:     call   t2 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  30:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  31:     call   t3 <- f0
    addl    $8, %esp               
    movb    %al, -19(%ebp)         
    movl    $43183, %eax            #  32:     div    t4 <- 43183, 80329
    movl    $80329, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  33:     div    t5 <- t4, 38454
    movl    $38454, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  34:     assign v0 <- t5
    movl    %eax, v0               

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
