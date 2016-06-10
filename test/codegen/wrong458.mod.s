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
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $v1       <bool> %ebp-26 ]

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
    call    ReadInt                 #   0:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f0_2_while_cond:
    call    dummyBOOLfunc           #   2:     call   t5 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     if     t5 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
l_f0_5_while_cond:
    movl    $28900, %eax            #   7:     if     28900 >= 76443 goto 6_while_body
    movl    $76443, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_6_while_body      
    jmp     l_f0_4                  #   8:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #  10:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_2_while_cond       #  12:     goto   2_while_cond
l_f0_1:
    movl    $2592, %eax             #  14:     sub    t6 <- 2592, 10685
    movl    $10685, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     if     t6 >= 17647 goto 9
    movl    $17647, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_9                 
    jmp     l_f0_10                 #  16:     goto   10
l_f0_9:
    movl    $1, %eax                #  18:     assign t7 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_11                 #  19:     goto   11
l_f0_10:
    movl    $0, %eax                #  21:     assign t7 <- 0
    movb    %al, -25(%ebp)         
l_f0_11:
    movzbl  -25(%ebp), %eax         #  23:     assign v1 <- t7
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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t7       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t9       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #    -19(%ebp)   1  [ $v3       <bool> %ebp-19 ]

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
    movl    $1, %eax                #   0:     if     1 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    jmp     l_f1_4                  #   4:     goto   4
    jmp     l_f1_5_while_cond       #   5:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_9_if_false         #   7:     goto   9_if_false
    jmp     l_f1_7                  #   8:     goto   7
l_f1_9_if_false:
l_f1_7:
    movl    $99, %eax               #  11:     if     99 <= 98 goto 11
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_11                
    jmp     l_f1_12                 #  12:     goto   12
l_f1_11:
    movl    $1, %eax                #  14:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_13                 #  15:     goto   13
l_f1_12:
    movl    $0, %eax                #  17:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f1_13:
    movzbl  -13(%ebp), %eax         #  19:     return t4
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  20:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $1, %eax                #  21:     return 1
    jmp     l_f1_exit              
    movl    $83725, %eax            #  22:     assign v1 <- 83725
    movl    %eax, 8(%ebp)          
    movl    $100, %eax              #  23:     assign v2 <- 100
    movb    %al, 12(%ebp)          
    movl    $11702, %eax            #  24:     if     11702 < 25871 goto 20_if_true
    movl    $25871, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_20_if_true        
    jmp     l_f1_21_if_false        #  25:     goto   21_if_false
l_f1_20_if_true:
    jmp     l_f1_19                 #  27:     goto   19
l_f1_21_if_false:
l_f1_19:
    movl    $0, %eax                #  30:     if     0 = 0 goto 24
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_24                
    jmp     l_f1_25                 #  31:     goto   25
l_f1_24:
    movl    $1, %eax                #  33:     assign t6 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_26                 #  34:     goto   26
l_f1_25:
    movl    $0, %eax                #  36:     assign t6 <- 0
    movb    %al, -15(%ebp)         
l_f1_26:
    movzbl  -15(%ebp), %eax         #  38:     assign v3 <- t6
    movb    %al, -19(%ebp)         
l_f1_29_while_cond:
    jmp     l_f1_28                 #  40:     goto   28
    jmp     l_f1_29_while_cond      #  41:     goto   29_while_cond
l_f1_28:
    jmp     l_f1_0                  #  43:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #  46:     call   t7 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movzbl  -16(%ebp), %eax         #  47:     if     t7 < 100 goto 32
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_32                
    jmp     l_f1_33                 #  48:     goto   33
l_f1_32:
    movl    $1, %eax                #  50:     assign t8 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_34                 #  51:     goto   34
l_f1_33:
    movl    $0, %eax                #  53:     assign t8 <- 0
    movb    %al, -17(%ebp)         
l_f1_34:
    movzbl  -17(%ebp), %eax         #  55:     return t8
    jmp     l_f1_exit              
    jmp     l_f1_38                 #  56:     goto   38
    movl    $1, %eax                #  57:     assign t9 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_39                 #  58:     goto   39
l_f1_38:
    movl    $0, %eax                #  60:     assign t9 <- 0
    movb    %al, -18(%ebp)         
l_f1_39:
    movzbl  -18(%ebp), %eax         #  62:     return t9
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <char> %ebp-22 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]

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
    movl    $99, %eax               #   0:     param  1 <- 99
    pushl   %eax                   
    call    dummyINTfunc            #   1:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $40327, %eax            #   2:     div    t5 <- 40327, t4
    movl    -16(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #   4:     call   t6 <- f1
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    call    dummyCHARfunc           #   5:     call   t7 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
l_f2_3_while_cond:
    movl    $74284, %eax            #   7:     if     74284 >= 73053 goto 4_while_body
    movl    $73053, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_4_while_body      
    jmp     l_f2_2                  #   8:     goto   2
l_f2_4_while_body:
    call    dummyINTfunc            #  10:     call   t8 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    jmp     l_f2_3_while_cond       #  11:     goto   3_while_cond
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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
l_test_4_while_cond:
    jmp     l_test_4_while_cond     #   2:     goto   4_while_cond
    call    dummyINTfunc            #   3:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_7                #   4:     goto   7
l_test_7:
    movl    $65219, %eax            #   6:     assign v0 <- 65219
    movl    %eax, v0               
l_test_12_while_cond:
    jmp     l_test_11               #   8:     goto   11
    jmp     l_test_12_while_cond    #   9:     goto   12_while_cond
l_test_11:
    jmp     l_test_0                #  11:     goto   0
l_test_2_if_false:
l_test_0:
l_test_15_while_cond:
    jmp     l_test_14               #  15:     goto   14
    jmp     l_test_15_while_cond    #  16:     goto   15_while_cond
l_test_14:
    jmp     l_test_exit            
    movl    $178, %eax              #  19:     assign v0 <- 178
    movl    %eax, v0               
    jmp     l_test_23_if_false      #  20:     goto   23_if_false
    movl    $9290, %eax             #  21:     sub    t1 <- 9290, 16722
    movl    $16722, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     sub    t2 <- t1, 84641
    movl    $84641, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     add    t3 <- t2, 18227
    movl    $18227, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     assign v0 <- t3
    movl    %eax, v0               
    jmp     l_test_21               #  25:     goto   21
l_test_23_if_false:
l_test_21:
    jmp     l_test_exit            

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
