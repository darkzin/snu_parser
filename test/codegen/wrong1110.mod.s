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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 37 of <array 86 of <array 89 of <array 85 of <array 15 of <char>>>>>>> %ebp+12 ]

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
    movl    $97, %eax               #   0:     if     97 <= 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    call    dummyCHARfunc           #   3:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   4:     return 98
    jmp     l_f0_exit              
l_f0_7_while_cond:
    jmp     l_f0_6                  #   6:     goto   6
    jmp     l_f0_7_while_cond       #   7:     goto   7_while_cond
l_f0_6:
    jmp     l_f0_0                  #   9:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  12:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  13:     return t3
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  14:     call   t4 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  15:     return t4
    jmp     l_f0_exit              
    jmp     l_f0_10                 #  16:     goto   10
l_f0_10:

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t2       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t3       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t4       <bool> %ebp-34 ]
    #    -35(%ebp)   1  [ $t5       <bool> %ebp-35 ]
    #    -36(%ebp)   1  [ $t6       <bool> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -49(%ebp)   1  [ $v1       <bool> %ebp-49 ]

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
    movl    $100, %eax              #   0:     if     100 > 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    ReadInt                 #   3:     call   t2 <- ReadInt
    movl    %eax, -32(%ebp)        
    movl    $1, %eax                #   4:     assign v1 <- 1
    movb    %al, -49(%ebp)         
    movl    $332, %eax              #   5:     if     332 <= 63430 goto 7
    movl    $63430, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_7                 
    jmp     l_f1_8                  #   6:     goto   8
l_f1_7:
    movl    $1, %eax                #   8:     assign t3 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f1_9                  #   9:     goto   9
l_f1_8:
    movl    $0, %eax                #  11:     assign t3 <- 0
    movb    %al, -33(%ebp)         
l_f1_9:
    movzbl  -33(%ebp), %eax         #  13:     return t3
    jmp     l_f1_exit              
    movl    $1, %eax                #  14:     if     1 # 0 goto 12
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_12                
    jmp     l_f1_13                 #  15:     goto   13
l_f1_12:
    movl    $1, %eax                #  17:     assign t4 <- 1
    movb    %al, -34(%ebp)         
    jmp     l_f1_14                 #  18:     goto   14
l_f1_13:
    movl    $0, %eax                #  20:     assign t4 <- 0
    movb    %al, -34(%ebp)         
l_f1_14:
    movzbl  -34(%ebp), %eax         #  22:     return t4
    jmp     l_f1_exit              
    jmp     l_f1_18_if_false        #  23:     goto   18_if_false
    jmp     l_f1_16                 #  24:     goto   16
l_f1_18_if_false:
l_f1_16:
    jmp     l_f1_0                  #  27:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyBOOLfunc           #  30:     call   t5 <- dummyBOOLfunc
    movb    %al, -35(%ebp)         
    movzbl  -35(%ebp), %eax         #  31:     if     t5 = 1 goto 23
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_23                
    jmp     l_f1_21                 #  32:     goto   21
l_f1_23:
    jmp     l_f1_21                 #  34:     goto   21
    movl    $1, %eax                #  35:     assign t6 <- 1
    movb    %al, -36(%ebp)         
    jmp     l_f1_22                 #  36:     goto   22
l_f1_21:
    movl    $0, %eax                #  38:     assign t6 <- 0
    movb    %al, -36(%ebp)         
l_f1_22:
    movzbl  -36(%ebp), %eax         #  40:     return t6
    jmp     l_f1_exit              
    movl    $34435, %eax            #  41:     div    t7 <- 34435, 48759
    movl    $48759, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  42:     div    t8 <- t7, 35512
    movl    $35512, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  43:     div    t9 <- t8, 30906
    movl    $30906, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  44:     div    t10 <- t9, 52947
    movl    $52947, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  45:     div    t11 <- t10, 79602
    movl    $79602, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  46:     div    t12 <- t11, 53715
    movl    $53715, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  47:     if     t12 > 44844 goto 25
    movl    $44844, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_25                
    jmp     l_f1_26                 #  48:     goto   26
l_f1_25:
    movl    $1, %eax                #  50:     assign t13 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_27                 #  51:     goto   27
l_f1_26:
    movl    $0, %eax                #  53:     assign t13 <- 0
    movb    %al, -25(%ebp)         
l_f1_27:
    movzbl  -25(%ebp), %eax         #  55:     assign v1 <- t13
    movb    %al, -49(%ebp)         

l_f1_exit:
    # epilogue
    addl    $40, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]

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
    movl    $74015, %eax            #   0:     div    t2 <- 74015, 37198
    movl    $37198, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     sub    t3 <- t2, 25842
    movl    $25842, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   2:     return t3
    jmp     l_f2_exit              
    movl    $50158, %eax            #   3:     div    t4 <- 50158, 41791
    movl    $41791, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     div    t5 <- t4, 80372
    movl    $80372, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   5:     return t5
    jmp     l_f2_exit              
    movl    $92278, %eax            #   6:     sub    t6 <- 92278, 1241
    movl    $1241, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   7:     sub    t7 <- t6, 3129
    movl    $3129, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   8:     add    t8 <- t7, 77257
    movl    $77257, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   9:     add    t9 <- t8, 66869
    movl    $66869, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  10:     sub    t10 <- t9, 87167
    movl    $87167, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     add    t11 <- t10, 66585
    movl    $66585, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     return t11
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $40, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]

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
    movl    $92443, %eax            #   0:     if     92443 >= 23206 goto 1_if_true
    movl    $23206, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $97, %eax               #   3:     param  0 <- 97
    pushl   %eax                   
    call    f1                      #   4:     call   t0 <- f1
    addl    $4, %esp               
    movb    %al, -13(%ebp)         
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_7_if_false       #   8:     goto   7_if_false
    movl    $42732, %eax            #   9:     if     42732 = 85514 goto 9_if_true
    movl    $85514, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_9_if_true       
    jmp     l_test_10_if_false      #  10:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #  12:     goto   8
l_test_10_if_false:
l_test_8:
l_test_13_while_cond:
    movl    $73373, %eax            #  16:     if     73373 >= 72333 goto 14_while_body
    movl    $72333, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_14_while_body   
    jmp     l_test_12               #  17:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  19:     goto   13_while_cond
l_test_12:
    movl    $0, %eax                #  21:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_5                #  22:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $0, %eax                #  25:     if     0 # 0 goto 18
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_18              
    jmp     l_test_19               #  26:     goto   19
l_test_18:
    movl    $1, %eax                #  28:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_20               #  29:     goto   20
l_test_19:
    movl    $0, %eax                #  31:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_20:
    movzbl  -14(%ebp), %eax         #  33:     assign v0 <- t1
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
