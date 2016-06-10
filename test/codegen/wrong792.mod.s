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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]

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
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $92947, %eax            #   2:     div    t6 <- 92947, 61659
    movl    $61659, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $43141, %eax            #   3:     sub    t7 <- 43141, t6
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     if     t7 > 13419 goto 3
    movl    $13419, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_3                 
    jmp     l_f0_4                  #   5:     goto   4
l_f0_3:
    movl    $1, %eax                #   7:     assign t8 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_5                  #   8:     goto   5
l_f0_4:
    movl    $0, %eax                #  10:     assign t8 <- 0
    movb    %al, -25(%ebp)         
l_f0_5:
    movzbl  -25(%ebp), %eax         #  12:     return t8
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t6       <char> %ebp-18 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
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
l_f1_1_while_cond:
    call    dummyINTfunc            #   1:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #   3:     call   t5 <- f0
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   4:     if     t5 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
    call    dummyCHARfunc           #   7:     call   t6 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    call    dummyINTfunc            #   8:     call   t7 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    $95166, %eax            #   9:     mul    t8 <- 95166, t7
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     return t8
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t13      <char> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]

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
    movl    $30464, %eax            #   0:     mul    t4 <- 30464, 78937
    movl    $78937, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     mul    t5 <- t4, 75054
    movl    $75054, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     mul    t6 <- t5, 66043
    movl    $66043, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     div    t7 <- t6, 6265
    movl    $6265, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     div    t8 <- t7, 96118
    movl    $96118, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   5:     sub    t9 <- t8, 39813
    movl    $39813, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   6:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #   7:     call   t10 <- f0
    addl    $4, %esp               
    movb    %al, -13(%ebp)         
    movl    $9411, %eax             #   8:     param  0 <- 9411
    pushl   %eax                   
    call    f0                      #   9:     call   t11 <- f0
    addl    $4, %esp               
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #  10:     call   t12 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $98, %eax               #  11:     if     98 < t12 goto 3_if_true
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_3_if_true         
    jmp     l_f2_4_if_false         #  12:     goto   4_if_false
l_f2_3_if_true:
    call    dummyCHARfunc           #  14:     call   t13 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    jmp     l_f2_2                  #  15:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]

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
    movl    $98, %eax               #   0:     assign v0 <- 98
    movb    %al, v0                
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 2_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_if_true       
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_1                #   5:     goto   1
l_test_3_if_false:
l_test_1:
    leal    _str_1, %eax            #   8:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #  10:     call   WriteStr
    addl    $4, %esp               
    movl    $42684, %eax            #  11:     if     42684 = 38053 goto 9_if_true
    movl    $38053, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_9_if_true       
    jmp     l_test_10_if_false      #  12:     goto   10_if_false
l_test_9_if_true:
    movl    $1, %eax                #  14:     assign v1 <- 1
    movb    %al, v1                
    jmp     l_test_exit            
    call    WriteLn                 #  16:     call   WriteLn
    movl    $100, %eax              #  17:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $1, %eax                #  19:     assign v1 <- 1
    movb    %al, v1                
    jmp     l_test_8                #  20:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_5                #  23:     goto   5
l_test_5:
l_test_19_while_cond:
    movl    $58729, %eax            #  26:     if     58729 <= 86655 goto 20_while_body
    movl    $86655, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_20_while_body   
    jmp     l_test_18               #  27:     goto   18
l_test_20_while_body:
    jmp     l_test_exit            
l_test_24_while_cond:
    jmp     l_test_24_while_cond    #  31:     goto   24_while_cond
    movl    $49619, %eax            #  32:     if     49619 <= 62095 goto 27
    movl    $62095, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_27              
    jmp     l_test_28               #  33:     goto   28
l_test_27:
    movl    $1, %eax                #  35:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_29               #  36:     goto   29
l_test_28:
    movl    $0, %eax                #  38:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_29:
    movzbl  -21(%ebp), %eax         #  40:     param  2 <- t2
    pushl   %eax                   
    movl    $1, %eax                #  41:     param  1 <- 1
    pushl   %eax                   
    movl    $92047, %eax            #  42:     param  0 <- 92047
    pushl   %eax                   
    call    f2                      #  43:     call   t3 <- f2
    addl    $12, %esp              
    movb    %al, -22(%ebp)         
    movl    $99, %eax               #  44:     assign v0 <- 99
    movb    %al, v0                
    movl    $98, %eax               #  45:     if     98 <= 99 goto 33_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_33_if_true      
    jmp     l_test_34_if_false      #  46:     goto   34_if_false
l_test_33_if_true:
    jmp     l_test_32               #  48:     goto   32
l_test_34_if_false:
l_test_32:
    movl    $77761, %eax            #  51:     if     77761 > 83661 goto 37_if_true
    movl    $83661, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_37_if_true      
    jmp     l_test_38_if_false      #  52:     goto   38_if_false
l_test_37_if_true:
    jmp     l_test_36               #  54:     goto   36
l_test_38_if_false:
l_test_36:
l_test_41_while_cond:
    movl    $100, %eax              #  58:     if     100 # 97 goto 42_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_42_while_body   
    jmp     l_test_40               #  59:     goto   40
l_test_42_while_body:
    jmp     l_test_41_while_cond    #  61:     goto   41_while_cond
l_test_40:
    jmp     l_test_exit            
l_test_46_while_cond:
    jmp     l_test_46_while_cond    #  65:     goto   46_while_cond
l_test_49_while_cond:
    movl    $97, %eax               #  67:     if     97 # 99 goto 50_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_50_while_body   
    jmp     l_test_48               #  68:     goto   48
l_test_50_while_body:
    jmp     l_test_49_while_cond    #  70:     goto   49_while_cond
l_test_48:
    jmp     l_test_exit            
    jmp     l_test_19_while_cond    #  73:     goto   19_while_cond
l_test_18:
    movl    $98, %eax               #  75:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  76:     call   WriteChar
    addl    $4, %esp               

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
