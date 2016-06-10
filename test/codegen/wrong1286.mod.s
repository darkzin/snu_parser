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
    #    -13(%ebp)   1  [ $t11      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t12      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t13      <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t14      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v1       <bool> %ebp-21 ]

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
    movl    $0, %eax                #   0:     assign v1 <- 0
    movb    %al, -21(%ebp)         
    call    dummyCHARfunc           #   1:     call   t11 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   2:     call   t12 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t11 # t12 goto 2
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_2                 
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $1, %eax                #   6:     assign t13 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_4                  #   7:     goto   4
l_f0_3:
    movl    $0, %eax                #   9:     assign t13 <- 0
    movb    %al, -15(%ebp)         
l_f0_4:
    movzbl  -15(%ebp), %eax         #  11:     assign v1 <- t13
    movb    %al, -21(%ebp)         
    call    dummyINTfunc            #  12:     call   t14 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     return t14
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t12      <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #    -21(%ebp)   1  [ $v2       <bool> %ebp-21 ]
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
    movl    $100, %eax              #   0:     if     100 >= 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $1, %eax                #   3:     assign v2 <- 1
    movb    %al, -21(%ebp)         
    movl    $22406, %eax            #   4:     if     22406 < 14400 goto 6
    movl    $14400, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_6                 
    jmp     l_f1_7                  #   5:     goto   7
l_f1_6:
    movl    $1, %eax                #   7:     assign t11 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_8                  #   8:     goto   8
l_f1_7:
    movl    $0, %eax                #  10:     assign t11 <- 0
    movb    %al, -13(%ebp)         
l_f1_8:
    movzbl  -13(%ebp), %eax         #  12:     assign v2 <- t11
    movb    %al, -21(%ebp)         
    movl    $0, %eax                #  13:     return 0
    jmp     l_f1_exit              
    leal    _str_1, %eax            #  14:     &()    t12 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     param  0 <- t12
    pushl   %eax                   
    call    WriteStr                #  16:     call   WriteStr
    addl    $4, %esp               
l_f1_13_while_cond:
    movl    $98, %eax               #  18:     if     98 >= 98 goto 14_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_14_while_body     
    jmp     l_f1_12                 #  19:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  21:     goto   13_while_cond
l_f1_12:
    jmp     l_f1_0                  #  23:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_17_while_cond:
    movl    $100, %eax              #  27:     if     100 = 97 goto 18_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_18_while_body     
    jmp     l_f1_16                 #  28:     goto   16
l_f1_18_while_body:
    jmp     l_f1_17_while_cond      #  30:     goto   17_while_cond
l_f1_16:
    movl    $14989, %eax            #  32:     if     14989 >= 98461 goto 21_if_true
    movl    $98461, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_21_if_true        
    jmp     l_f1_22_if_false        #  33:     goto   22_if_false
l_f1_21_if_true:
    movl    $1, %eax                #  35:     return 1
    jmp     l_f1_exit              
    movl    $76180, %eax            #  36:     assign v3 <- 76180
    movl    %eax, -28(%ebp)        
    jmp     l_f1_20                 #  37:     goto   20
l_f1_22_if_false:
l_f1_20:

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
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t12      <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 15 of <array 20 of <array 77 of <array 97 of <array 38 of <bool>>>>>>> %ebp+8 ]

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
l_f2_1_while_cond:
    jmp     l_f2_4                  #   1:     goto   4
    jmp     l_f2_4                  #   2:     goto   4
    jmp     l_f2_4                  #   3:     goto   4
    jmp     l_f2_4                  #   4:     goto   4
l_f2_4:
    movl    $1, %eax                #   6:     assign t11 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_6                  #   7:     goto   6
    movl    $0, %eax                #   8:     assign t11 <- 0
    movb    %al, -13(%ebp)         
l_f2_6:
    movl    $1, %eax                #  10:     if     1 # t11 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #  11:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #  13:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_15                 #  15:     goto   15
    movl    $1, %eax                #  16:     assign t12 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_16                 #  17:     goto   16
l_f2_15:
    movl    $0, %eax                #  19:     assign t12 <- 0
    movb    %al, -14(%ebp)         
l_f2_16:
    movzbl  -14(%ebp), %eax         #  21:     return t12
    jmp     l_f2_exit              
l_f2_20_while_cond:
    movl    $98, %eax               #  23:     if     98 <= 97 goto 21_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_21_while_body     
    jmp     l_f2_19                 #  24:     goto   19
l_f2_21_while_body:
    movl    $1, %eax                #  26:     if     1 # 0 goto 24_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_24_if_true        
    jmp     l_f2_25_if_false        #  27:     goto   25_if_false
l_f2_24_if_true:
    jmp     l_f2_23                 #  29:     goto   23
l_f2_25_if_false:
l_f2_23:
l_f2_28_while_cond:
    movl    $9589, %eax             #  33:     if     9589 <= 43280 goto 29_while_body
    movl    $43280, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_29_while_body     
    jmp     l_f2_27                 #  34:     goto   27
l_f2_29_while_body:
    jmp     l_f2_28_while_cond      #  36:     goto   28_while_cond
l_f2_27:
l_f2_32_while_cond:
    jmp     l_f2_32_while_cond      #  39:     goto   32_while_cond
    jmp     l_f2_20_while_cond      #  40:     goto   20_while_cond
l_f2_19:

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
    #    -21(%ebp)   1  [ $t10      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t2       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t3       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t4       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t5       <bool> %ebp-34 ]
    #    -35(%ebp)   1  [ $t6       <bool> %ebp-35 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
l_test_2_while_cond:
    movl    $29375, %eax            #   2:     add    t1 <- 29375, 13335
    movl    $13335, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t2 <- t1, 17544
    movl    $17544, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t3 <- t2, 98245
    movl    $98245, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     if     t3 >= 24788 goto 3_while_body
    movl    $24788, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_3_while_body    
    jmp     l_test_1                #   6:     goto   1
l_test_3_while_body:
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   9:     goto   6_while_cond
    movl    $98, %eax               #  10:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_2_while_cond     #  11:     goto   2_while_cond
l_test_1:
l_test_10_while_cond:
    call    dummyBOOLfunc           #  14:     call   t4 <- dummyBOOLfunc
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  15:     if     t4 = 1 goto 11_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_11_while_body   
    jmp     l_test_9                #  16:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  18:     goto   10_while_cond
l_test_9:
    movl    $100, %eax              #  20:     param  0 <- 100
    pushl   %eax                   
    call    f1                      #  21:     call   t5 <- f1
    addl    $4, %esp               
    movb    %al, -34(%ebp)         
    movzbl  -34(%ebp), %eax         #  22:     if     t5 = 1 goto 14
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_14              
l_test_14:
    movl    $1, %eax                #  24:     assign t6 <- 1
    movb    %al, -35(%ebp)         
    jmp     l_test_16               #  25:     goto   16
    movl    $0, %eax                #  26:     assign t6 <- 0
    movb    %al, -35(%ebp)         
l_test_16:
    movzbl  -35(%ebp), %eax         #  28:     assign v1 <- t6
    movb    %al, v1                
    movl    $53915, %eax            #  29:     div    t7 <- 53915, 43806
    movl    $43806, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  30:     mul    t8 <- t7, 47239
    movl    $47239, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    $15498, %eax            #  31:     sub    t9 <- 15498, t8
    movl    -44(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  32:     assign v2 <- t9
    movl    %eax, v2               
    movl    $69517, %eax            #  33:     if     69517 <= 16865 goto 21_if_true
    movl    $16865, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_21_if_true      
    jmp     l_test_22_if_false      #  34:     goto   22_if_false
l_test_21_if_true:
    movl    $1, %eax                #  36:     assign v1 <- 1
    movb    %al, v1                
    movl    $72999, %eax            #  37:     if     72999 <= 73426 goto 26_if_true
    movl    $73426, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_26_if_true      
    jmp     l_test_27_if_false      #  38:     goto   27_if_false
l_test_26_if_true:
    jmp     l_test_25               #  40:     goto   25
l_test_27_if_false:
l_test_25:
    movl    $97, %eax               #  43:     if     97 = 98 goto 30
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_30              
    jmp     l_test_31               #  44:     goto   31
l_test_30:
    movl    $1, %eax                #  46:     assign t10 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_32               #  47:     goto   32
l_test_31:
    movl    $0, %eax                #  49:     assign t10 <- 0
    movb    %al, -21(%ebp)         
l_test_32:
    movzbl  -21(%ebp), %eax         #  51:     assign v1 <- t10
    movb    %al, v1                
    jmp     l_test_20               #  52:     goto   20
l_test_22_if_false:
l_test_20:

l_test_exit:
    # epilogue
    addl    $36, %esp               # remove locals
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
