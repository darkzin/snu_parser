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
    #    -13(%ebp)   1  [ $t8       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t8 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v2 <- t8
    movb    %al, 8(%ebp)           
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    movl    $97, %eax               #   4:     if     97 >= 99 goto 8_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_8_if_true         
    jmp     l_f0_9_if_false         #   5:     goto   9_if_false
l_f0_8_if_true:
    jmp     l_f0_7                  #   7:     goto   7
l_f0_9_if_false:
l_f0_7:
    jmp     l_f0_11                 #  10:     goto   11
l_f0_11:
    jmp     l_f0_2                  #  12:     goto   2
l_f0_2:

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
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $1127, %eax             #   5:     add    t8 <- 1127, 88785
    movl    $88785, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     sub    t9 <- t8, 30483
    movl    $30483, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $50321, %eax            #   7:     div    t10 <- 50321, 75301
    movl    $75301, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     div    t11 <- t10, 25719
    movl    $25719, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -32(%ebp), %eax         #   9:     sub    t12 <- t9, t11
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     return t12
    jmp     l_f1_exit              
    jmp     l_f1_7_if_false         #  11:     goto   7_if_false
    jmp     l_f1_7_if_false         #  12:     goto   7_if_false
    movl    $56486, %eax            #  13:     return 56486
    jmp     l_f1_exit              
    jmp     l_f1_10                 #  14:     goto   10
l_f1_10:
    jmp     l_f1_5                  #  16:     goto   5
l_f1_7_if_false:
l_f1_5:

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $v2       <bool> %ebp-22 ]

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
    movl    $1, %eax                #   0:     assign v2 <- 1
    movb    %al, -22(%ebp)         
    movl    $50751, %eax            #   1:     sub    t8 <- 50751, 79689
    movl    $79689, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $56243, %eax            #   2:     if     56243 <= t8 goto 2
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_2                 
    jmp     l_f2_3                  #   3:     goto   3
l_f2_2:
    movl    $1, %eax                #   5:     assign t9 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_4                  #   6:     goto   4
l_f2_3:
    movl    $0, %eax                #   8:     assign t9 <- 0
    movb    %al, -21(%ebp)         
l_f2_4:
    movzbl  -21(%ebp), %eax         #  10:     assign v2 <- t9
    movb    %al, -22(%ebp)         
    call    dummyINTfunc            #  11:     call   t10 <- dummyINTfunc
    movl    %eax, -16(%ebp)        

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t5       <char> %ebp-23 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $40894, %eax            #   0:     if     40894 = 18064 goto 5
    movl    $18064, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_5               
    jmp     l_test_5                #   1:     goto   5
    jmp     l_test_5                #   2:     goto   5
l_test_5:
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_7                #   5:     goto   7
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_7:
    movzbl  -13(%ebp), %eax         #   8:     if     t0 = 0 goto 1
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_1               
    jmp     l_test_2                #   9:     goto   2
l_test_1:
    movl    $1, %eax                #  11:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_3                #  12:     goto   3
l_test_2:
    movl    $0, %eax                #  14:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_3:
    movzbl  -14(%ebp), %eax         #  16:     assign v0 <- t1
    movb    %al, v0                
    movl    $96493, %eax            #  17:     div    t2 <- 96493, 33124
    movl    $33124, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     assign v1 <- t2
    movl    %eax, v1               
    jmp     l_test_17_if_false      #  19:     goto   17_if_false
l_test_19_while_cond:
    movl    $98, %eax               #  21:     if     98 >= 100 goto 20_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_20_while_body   
    jmp     l_test_18               #  22:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  24:     goto   19_while_cond
l_test_18:
    jmp     l_test_22               #  26:     goto   22
l_test_22:
    jmp     l_test_15               #  28:     goto   15
l_test_17_if_false:
l_test_15:
l_test_26_while_cond:
    call    dummyBOOLfunc           #  32:     call   t3 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  33:     if     t3 = 1 goto 27_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_27_while_body   
    jmp     l_test_25               #  34:     goto   25
l_test_27_while_body:
l_test_29_while_cond:
    movl    $99, %eax               #  37:     if     99 >= 98 goto 30_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_30_while_body   
    jmp     l_test_28               #  38:     goto   28
l_test_30_while_body:
    jmp     l_test_29_while_cond    #  40:     goto   29_while_cond
l_test_28:
    jmp     l_test_exit            
    jmp     l_test_26_while_cond    #  43:     goto   26_while_cond
l_test_25:
l_test_34_while_cond:
    call    dummyCHARfunc           #  46:     call   t4 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  47:     if     t4 >= 100 goto 35_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_35_while_body   
    jmp     l_test_33               #  48:     goto   33
l_test_35_while_body:
    call    dummyCHARfunc           #  50:     call   t5 <- dummyCHARfunc
    movb    %al, -23(%ebp)         
    movl    $98, %eax               #  51:     if     98 >= 100 goto 39_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_39_if_true      
    jmp     l_test_40_if_false      #  52:     goto   40_if_false
l_test_39_if_true:
    jmp     l_test_38               #  54:     goto   38
l_test_40_if_false:
l_test_38:
    call    dummyINTfunc            #  57:     call   t6 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    call    f1                      #  58:     call   t7 <- f1
    movl    %eax, -32(%ebp)        
l_test_45_while_cond:
    jmp     l_test_45_while_cond    #  60:     goto   45_while_cond
    jmp     l_test_34_while_cond    #  61:     goto   34_while_cond
l_test_33:

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
