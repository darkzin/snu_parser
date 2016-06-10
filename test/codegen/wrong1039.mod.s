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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 19 of <array 3 of <array 3 of <array 46 of <array 68 of <int>>>>>>> %ebp+8 ]
    #    -25(%ebp)   1  [ $v1       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $v2       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v3       <char> %ebp-33 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    movl    $98, %eax               #   1:     if     98 >= 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $51178, %eax            #   4:     if     51178 <= 38247 goto 5
    movl    $38247, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_5                 
    jmp     l_f0_6                  #   5:     goto   6
l_f0_5:
    movl    $1, %eax                #   7:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_7                  #   8:     goto   7
l_f0_6:
    movl    $0, %eax                #  10:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f0_7:
    movzbl  -13(%ebp), %eax         #  12:     assign v1 <- t6
    movb    %al, -25(%ebp)         
    jmp     l_f0_1_while_cond       #  13:     goto   1_while_cond
l_f0_0:
    movl    $76413, %eax            #  15:     add    t7 <- 76413, 34871
    movl    $34871, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     sub    t8 <- t7, 30389
    movl    $30389, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     assign v2 <- t8
    movl    %eax, -32(%ebp)        
    jmp     l_f0_12_if_false        #  18:     goto   12_if_false
    jmp     l_f0_exit              
    movl    $99, %eax               #  20:     assign v3 <- 99
    movb    %al, -33(%ebp)         
    jmp     l_f0_10                 #  21:     goto   10
l_f0_12_if_false:
l_f0_10:

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -14(%ebp)   1  [ $v2       <char> %ebp-14 ]

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
    movl    $100, %eax              #   0:     assign v2 <- 100
    movb    %al, -14(%ebp)         
l_f1_2_while_cond:
    call    dummyCHARfunc           #   2:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t6 <= 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_3_while_body      
    jmp     l_f1_1                  #   4:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   6:     goto   2_while_cond
l_f1_1:
l_f1_6_while_cond:
    jmp     l_f1_10_if_false        #   9:     goto   10_if_false
    jmp     l_f1_8                  #  10:     goto   8
l_f1_10_if_false:
l_f1_8:
    movl    $98, %eax               #  13:     if     98 < 99 goto 12_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  14:     goto   13_if_false
l_f1_12_if_true:
    jmp     l_f1_11                 #  16:     goto   11
l_f1_13_if_false:
l_f1_11:
    movl    $24596, %eax            #  19:     if     24596 <= 57200 goto 16_if_true
    movl    $57200, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_16_if_true        
    jmp     l_f1_17_if_false        #  20:     goto   17_if_false
l_f1_16_if_true:
    jmp     l_f1_15                 #  22:     goto   15
l_f1_17_if_false:
l_f1_15:
    jmp     l_f1_exit              
    jmp     l_f1_6_while_cond       #  26:     goto   6_while_cond

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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v0       <bool> %ebp-29 ]

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
    movl    $81853, %eax            #   0:     mul    t6 <- 81853, 53389
    movl    $53389, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t6
    jmp     l_f2_exit              
    movl    $100, %eax              #   2:     if     100 # 97 goto 5
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_5                 
    jmp     l_f2_6                  #   3:     goto   6
l_f2_5:
    movl    $1, %eax                #   5:     assign t7 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_7                  #   6:     goto   7
l_f2_6:
    movl    $0, %eax                #   8:     assign t7 <- 0
    movb    %al, -17(%ebp)         
l_f2_7:
    movzbl  -17(%ebp), %eax         #  10:     assign v0 <- t7
    movb    %al, -29(%ebp)         
    movl    $47100, %eax            #  11:     return 47100
    jmp     l_f2_exit              
    jmp     l_f2_1                  #  12:     goto   1
l_f2_1:
    call    dummyINTfunc            #  14:     call   t8 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     div    t9 <- t8, 97551
    movl    $97551, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     return t9
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <bool> %ebp-18 ]

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
l_test_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $1, %eax                #   2:     if     1 # t0 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    call    dummyCHARfunc           #   5:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_exit            
l_test_7_while_cond:
    movl    $21523, %eax            #   8:     if     21523 = 86780 goto 8_while_body
    movl    $86780, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_8_while_body    
    jmp     l_test_6                #   9:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  11:     goto   7_while_cond
l_test_6:
    jmp     l_test_1_while_cond     #  13:     goto   1_while_cond
l_test_0:
    call    dummyBOOLfunc           #  15:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  16:     if     t2 = 1 goto 11_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_11_if_true      
    jmp     l_test_12_if_false      #  17:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_exit            
    jmp     l_test_10               #  20:     goto   10
l_test_12_if_false:
l_test_10:
l_test_15_while_cond:
    movl    $45153, %eax            #  24:     if     45153 # 24253 goto 18_if_true
    movl    $24253, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_18_if_true      
    jmp     l_test_19_if_false      #  25:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  27:     goto   17
l_test_19_if_false:
l_test_17:
    jmp     l_test_21               #  30:     goto   21
l_test_21:
    call    dummyBOOLfunc           #  32:     call   t3 <- dummyBOOLfunc
    movb    %al, -16(%ebp)         
    movl    $98, %eax               #  33:     if     98 < 99 goto 26_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_26_if_true      
    jmp     l_test_27_if_false      #  34:     goto   27_if_false
l_test_26_if_true:
    jmp     l_test_25               #  36:     goto   25
l_test_27_if_false:
l_test_25:
l_test_30_while_cond:
    movl    $100, %eax              #  40:     if     100 >= 99 goto 31_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_31_while_body   
    jmp     l_test_29               #  41:     goto   29
l_test_31_while_body:
    jmp     l_test_30_while_cond    #  43:     goto   30_while_cond
l_test_29:
l_test_34_while_cond:
    movl    $54551, %eax            #  46:     if     54551 # 46947 goto 35_while_body
    movl    $46947, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_35_while_body   
    jmp     l_test_33               #  47:     goto   33
l_test_35_while_body:
    call    dummyBOOLfunc           #  49:     call   t4 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_34_while_cond    #  50:     goto   34_while_cond
l_test_33:
    jmp     l_test_15_while_cond    #  52:     goto   15_while_cond
    jmp     l_test_40               #  53:     goto   40
    jmp     l_test_40               #  54:     goto   40
    movl    $1, %eax                #  55:     assign t5 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_41               #  56:     goto   41
l_test_40:
    movl    $0, %eax                #  58:     assign t5 <- 0
    movb    %al, -18(%ebp)         
l_test_41:
    movzbl  -18(%ebp), %eax         #  60:     assign v0 <- t5
    movb    %al, v0                
l_test_47_while_cond:
    jmp     l_test_49               #  62:     goto   49
l_test_49:
    jmp     l_test_47_while_cond    #  64:     goto   47_while_cond

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
