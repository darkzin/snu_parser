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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]

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
l_f0_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   2:     if     97 > t5 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
l_f0_5_while_cond:
    jmp     l_f0_4                  #   8:     goto   4
    movl    $0, %eax                #   9:     if     0 # 1 goto 9_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_9_if_true         
    jmp     l_f0_10_if_false        #  10:     goto   10_if_false
l_f0_9_if_true:
    jmp     l_f0_8                  #  12:     goto   8
l_f0_10_if_false:
l_f0_8:
    jmp     l_f0_5_while_cond       #  15:     goto   5_while_cond
l_f0_4:
    call    dummyCHARfunc           #  17:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  18:     assign v1 <- t6
    movb    %al, 8(%ebp)           

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
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t22      <char> %ebp-61 ]
    #    -62(%ebp)   1  [ $t5       <char> %ebp-62 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 16 of <array 13 of <array 54 of <array 20 of <array 9 of <char>>>>>>> %ebp+8 ]
    #    -81(%ebp)   1  [ $v2       <char> %ebp-81 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -62(%ebp)         
    movl    $2, %eax                #   1:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   2:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   3:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $47686, %eax            #   4:     mul    t7 <- 47686, t6
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   5:     add    t8 <- t7, 20252
    movl    $20252, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #   6:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   7:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   8:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #   9:     mul    t10 <- t8, t9
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     add    t11 <- t10, 7436
    movl    $7436, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  12:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  13:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  14:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     add    t14 <- t13, 4841
    movl    $4841, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  16:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  18:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  19:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  20:     add    t17 <- t16, 61618
    movl    $61618, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  21:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  22:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  23:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  24:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    8(%ebp), %eax           #  25:     add    t21 <- v1, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movzbl  -62(%ebp), %eax         #  26:     assign @t21 <- t5
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_2_if_true          #  27:     goto   2_if_true
l_f1_2_if_true:
    movl    $11092, %eax            #  29:     return 11092
    jmp     l_f1_exit              
    movl    $7378, %eax             #  30:     return 7378
    jmp     l_f1_exit              
    movl    $39622, %eax            #  31:     return 39622
    jmp     l_f1_exit              
    jmp     l_f1_1                  #  32:     goto   1
l_f1_1:
l_f1_10_while_cond:
    call    dummyCHARfunc           #  35:     call   t22 <- dummyCHARfunc
    movb    %al, -61(%ebp)         
    movzbl  -61(%ebp), %eax         #  36:     if     t22 <= 97 goto 11_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_11_while_body     
    jmp     l_f1_9                  #  37:     goto   9
l_f1_11_while_body:
    jmp     l_f1_15_if_false        #  39:     goto   15_if_false
    jmp     l_f1_13                 #  40:     goto   13
l_f1_15_if_false:
l_f1_13:
    jmp     l_f1_10_while_cond      #  43:     goto   10_while_cond
l_f1_9:

l_f1_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v1       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $v2       <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $v3       <int> %ebp-28 ]

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
    movl    $100, %eax              #   0:     if     100 < 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $89770, %eax            #   3:     if     89770 = 17298 goto 5
    movl    $17298, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_5                 
    jmp     l_f2_6                  #   4:     goto   6
l_f2_5:
    movl    $1, %eax                #   6:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_7                  #   7:     goto   7
l_f2_6:
    movl    $0, %eax                #   9:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f2_7:
    movzbl  -13(%ebp), %eax         #  11:     return t5
    jmp     l_f2_exit              
    movl    $97, %eax               #  12:     assign v1 <- 97
    movb    %al, -21(%ebp)         
    jmp     l_f2_0                  #  13:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyBOOLfunc           #  16:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  17:     if     t6 = 1 goto 11
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_11                
    jmp     l_f2_11                 #  18:     goto   11
    jmp     l_f2_11                 #  19:     goto   11
    jmp     l_f2_11                 #  20:     goto   11
    jmp     l_f2_11                 #  21:     goto   11
    jmp     l_f2_11                 #  22:     goto   11
    jmp     l_f2_11                 #  23:     goto   11
    jmp     l_f2_11                 #  24:     goto   11
    jmp     l_f2_11                 #  25:     goto   11
    jmp     l_f2_11                 #  26:     goto   11
l_f2_11:
    movl    $1, %eax                #  28:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_13                 #  29:     goto   13
    movl    $0, %eax                #  30:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f2_13:
    movzbl  -15(%ebp), %eax         #  32:     assign v2 <- t7
    movb    %al, -22(%ebp)         
    movl    $90495, %eax            #  33:     sub    t8 <- 90495, 98361
    movl    $98361, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  34:     assign v3 <- t8
    movl    %eax, -28(%ebp)        

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
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <char> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <char>>> %ebp-20 ]

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
    movl    $1, %eax                #   0:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   1:     goto   3
    movl    $0, %eax                #   2:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   4:     assign v0 <- t0
    movb    %al, v0                
l_test_9_while_cond:
    movl    $17523, %eax            #   6:     if     17523 = 88136 goto 10_while_body
    movl    $88136, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_10_while_body   
    jmp     l_test_8                #   7:     goto   8
l_test_10_while_body:
l_test_13_while_cond:
    jmp     l_test_12               #  10:     goto   12
l_test_16_while_cond:
    movl    $98, %eax               #  12:     if     98 = 98 goto 17_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_17_while_body   
    jmp     l_test_15               #  13:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  15:     goto   16_while_cond
l_test_15:
    jmp     l_test_13_while_cond    #  17:     goto   13_while_cond
l_test_12:
    jmp     l_test_9_while_cond     #  19:     goto   9_while_cond
l_test_8:
    call    dummyCHARfunc           #  21:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #  22:     if     99 = t1 goto 20
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_20              
    jmp     l_test_21               #  23:     goto   21
l_test_20:
    movl    $1, %eax                #  25:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_22               #  26:     goto   22
l_test_21:
    movl    $0, %eax                #  28:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_22:
    movzbl  -15(%ebp), %eax         #  30:     assign v0 <- t2
    movb    %al, v0                
l_test_25_while_cond:
    movl    $100, %eax              #  32:     if     100 > 100 goto 26_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_26_while_body   
    jmp     l_test_24               #  33:     goto   24
l_test_26_while_body:
    movl    $98, %eax               #  35:     assign v1 <- 98
    movb    %al, v1                
    movl    $98, %eax               #  36:     assign v1 <- 98
    movb    %al, v1                
    call    dummyCHARfunc           #  37:     call   t3 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movl    $100, %eax              #  38:     if     100 <= 97 goto 32_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_32_if_true      
    jmp     l_test_33_if_false      #  39:     goto   33_if_false
l_test_32_if_true:
    jmp     l_test_31               #  41:     goto   31
l_test_33_if_false:
l_test_31:
    jmp     l_test_25_while_cond    #  44:     goto   25_while_cond
l_test_24:
    jmp     l_test_exit            
l_test_37_while_cond:
    movl    $49651, %eax            #  48:     if     49651 <= 71783 goto 40_if_true
    movl    $71783, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_40_if_true      
    jmp     l_test_41_if_false      #  49:     goto   41_if_false
l_test_40_if_true:
    jmp     l_test_39               #  51:     goto   39
l_test_41_if_false:
l_test_39:
l_test_44_while_cond:
    movl    $0, %eax                #  55:     if     0 # 1 goto 45_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_45_while_body   
    jmp     l_test_43               #  56:     goto   43
l_test_45_while_body:
    jmp     l_test_44_while_cond    #  58:     goto   44_while_cond
l_test_43:
    leal    _str_1, %eax            #  60:     &()    t4 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  61:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #  62:     call   WriteStr
    addl    $4, %esp               
    movl    $7647, %eax             #  63:     assign v2 <- 7647
    movl    %eax, v2               
    jmp     l_test_37_while_cond    #  64:     goto   37_while_cond

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
