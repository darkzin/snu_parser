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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 35 of <array 35 of <array 74 of <array 28 of <array 38 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 58 of <array 59 of <array 79 of <array 15 of <array 13 of <bool>>>>>>> %ebp+12 ]
    #    -85(%ebp)   1  [ $v2       <char> %ebp-85 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $2, %eax                #   1:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   2:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   3:     call   t1 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $27498, %eax            #   4:     mul    t2 <- 27498, t1
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   5:     add    t3 <- t2, 72729
    movl    $72729, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $3, %eax                #   6:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   7:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   8:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #   9:     mul    t5 <- t3, t4
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  10:     add    t6 <- t5, 8954
    movl    $8954, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  12:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  13:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  14:     mul    t8 <- t6, t7
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  15:     add    t9 <- t8, 12640
    movl    $12640, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $5, %eax                #  16:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  18:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -84(%ebp), %eax         #  19:     mul    t11 <- t9, t10
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     add    t12 <- t11, 65461
    movl    $65461, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     mul    t13 <- t12, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    8(%ebp), %eax           #  22:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  23:     call   t14 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  24:     add    t15 <- t13, t14
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  25:     add    t16 <- v0, t15
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movzbl  -13(%ebp), %eax         #  26:     assign @t16 <- t0
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyINTfunc            #  27:     call   t17 <- dummyINTfunc
    movl    %eax, -52(%ebp)        
l_f0_3_while_cond:
    jmp     l_f0_3_while_cond       #  29:     goto   3_while_cond

l_f0_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 27 of <array 88 of <array 20 of <array 33 of <array 95 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t0
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t1
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   4:     call   t2 <- dummyBOOLfunc
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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 27 of <array 88 of <array 20 of <array 33 of <array 95 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t5       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t6       <bool> %ebp-27 ]
    #    -28(%ebp)   1  [ $t7       <bool> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <bool> %ebp-29 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #   -148975256(%ebp)  148975224  [ $v2       <array 27 of <array 88 of <array 20 of <array 33 of <array 95 of <char>>>>>> %ebp-148975256 ]
    #   -148975257(%ebp)   1  [ $v3       <bool> %ebp-148975257 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $148975248, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $37243812, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-148975256(%ebp)     # local array 'v2': 5 dimensions
    movl    $27,-148975252(%ebp)    #   dimension 1: 27 elements
    movl    $88,-148975248(%ebp)    #   dimension 2: 88 elements
    movl    $20,-148975244(%ebp)    #   dimension 3: 20 elements
    movl    $33,-148975240(%ebp)    #   dimension 4: 33 elements
    movl    $95,-148975236(%ebp)    #   dimension 5: 95 elements

    # function body
l_f2_1_while_cond:
    movl    $49069, %eax            #   1:     if     49069 <= 73005 goto 2_while_body
    movl    $73005, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    call    ReadInt                 #   4:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $97, %eax               #   5:     assign v0 <- 97
    movb    %al, 8(%ebp)           
    movl    $1, %eax                #   6:     return 1
    jmp     l_f2_exit              
l_f2_8_while_cond:
    jmp     l_f2_7                  #   8:     goto   7
    jmp     l_f2_8_while_cond       #   9:     goto   8_while_cond
l_f2_7:
    movl    $99, %eax               #  11:     if     99 > 98 goto 11_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  12:     goto   12_if_false
l_f2_11_if_true:
    movl    $1, %eax                #  14:     return 1
    jmp     l_f2_exit              
    movl    $97, %eax               #  15:     if     97 >= 97 goto 16
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_16                
    jmp     l_f2_17                 #  16:     goto   17
l_f2_16:
    movl    $1, %eax                #  18:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_18                 #  19:     goto   18
l_f2_17:
    movl    $0, %eax                #  21:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_f2_18:
    movzbl  -17(%ebp), %eax         #  23:     return t1
    jmp     l_f2_exit              
    movl    $0, %eax                #  24:     if     0 = 1 goto 21
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_21                
    jmp     l_f2_22                 #  25:     goto   22
l_f2_21:
    movl    $1, %eax                #  27:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_23                 #  28:     goto   23
l_f2_22:
    movl    $0, %eax                #  30:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_f2_23:
    movzbl  -18(%ebp), %eax         #  32:     param  1 <- t2
    pushl   %eax                   
    leal    -148975256(%ebp), %eax  #  33:     &()    t3 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  34:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  35:     call   t4 <- f1
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
l_f2_26_while_cond:
    jmp     l_f2_26_while_cond      #  37:     goto   26_while_cond
    jmp     l_f2_10                 #  38:     goto   10
l_f2_12_if_false:
l_f2_10:
    jmp     l_f2_1_while_cond       #  41:     goto   1_while_cond
l_f2_0:
l_f2_29_while_cond:
    jmp     l_f2_30_while_body      #  44:     goto   30_while_body
l_f2_30_while_body:
    movl    $100, %eax              #  46:     if     100 <= 99 goto 35
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_35                
    jmp     l_f2_36                 #  47:     goto   36
l_f2_35:
    movl    $1, %eax                #  49:     assign t5 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f2_37                 #  50:     goto   37
l_f2_36:
    movl    $0, %eax                #  52:     assign t5 <- 0
    movb    %al, -26(%ebp)         
l_f2_37:
    movzbl  -26(%ebp), %eax         #  54:     assign v3 <- t5
    movb    %al, -148975257(%ebp)  
    movl    $26211, %eax            #  55:     assign v1 <- 26211
    movl    %eax, 12(%ebp)         
    jmp     l_f2_29_while_cond      #  56:     goto   29_while_cond
    jmp     l_f2_45                 #  57:     goto   45
    call    dummyBOOLfunc           #  58:     call   t6 <- dummyBOOLfunc
    movb    %al, -27(%ebp)         
    movzbl  -27(%ebp), %eax         #  59:     if     t6 = 1 goto 45
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_45                
    jmp     l_f2_46                 #  60:     goto   46
l_f2_45:
    movl    $1, %eax                #  62:     assign t7 <- 1
    movb    %al, -28(%ebp)         
    jmp     l_f2_47                 #  63:     goto   47
l_f2_46:
    movl    $0, %eax                #  65:     assign t7 <- 0
    movb    %al, -28(%ebp)         
l_f2_47:
    movzbl  -28(%ebp), %eax         #  67:     if     t7 = 1 goto 41
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_41                
    jmp     l_f2_42                 #  68:     goto   42
l_f2_41:
    movl    $1, %eax                #  70:     assign t8 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f2_43                 #  71:     goto   43
l_f2_42:
    movl    $0, %eax                #  73:     assign t8 <- 0
    movb    %al, -29(%ebp)         
l_f2_43:
    movzbl  -29(%ebp), %eax         #  75:     return t8
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $148975248, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $14502, %eax            #   0:     assign v0 <- 14502
    movl    %eax, v0               
    movl    $37198, %eax            #   1:     assign v0 <- 37198
    movl    %eax, v0               
    movl    $1, %eax                #   2:     assign v1 <- 1
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
