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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 10 of <array 8 of <array 10 of <array 6 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v4       <ptr(4) to <array 5 of <array 7 of <array 5 of <array 3 of <array 6 of <char>>>>>>> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f0_2_while_cond:
    movl    $100, %eax              #   2:     if     100 >= 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_3_while_body      
    jmp     l_f0_3_while_body       #   3:     goto   3_while_body
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   6:     goto   2_while_cond
l_f0_1:
l_f0_8_while_cond:
    jmp     l_f0_9_while_body       #   9:     goto   9_while_body
    jmp     l_f0_9_while_body       #  10:     goto   9_while_body
    jmp     l_f0_9_while_body       #  11:     goto   9_while_body
    jmp     l_f0_7                  #  12:     goto   7
l_f0_9_while_body:
    movl    $100, %eax              #  14:     if     100 <= 97 goto 17_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_17_if_true        
    jmp     l_f0_18_if_false        #  15:     goto   18_if_false
l_f0_17_if_true:
    jmp     l_f0_16                 #  17:     goto   16
l_f0_18_if_false:
l_f0_16:
    jmp     l_f0_8_while_cond       #  20:     goto   8_while_cond
l_f0_7:

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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 8 of <array 10 of <array 10 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v4       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v5       <char> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t7
    jmp     l_f1_exit              
    movl    $100, %eax              #   2:     assign v5 <- 100
    movb    %al, 16(%ebp)          
    call    dummyBOOLfunc           #   3:     call   t8 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

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
    #    -16(%ebp)   4  [ $t7       <ptr(4) to <array 4 of <array 8 of <array 10 of <array 10 of <array 5 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #   -16048(%ebp)  16024  [ $v3       <array 4 of <array 8 of <array 10 of <array 10 of <array 5 of <bool>>>>>> %ebp-16048 ]
    #   -16052(%ebp)   4  [ $v4       <int> %ebp-16052 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16040, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $4010, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-16048(%ebp)         # local array 'v3': 5 dimensions
    movl    $4,-16044(%ebp)         #   dimension 1: 4 elements
    movl    $8,-16040(%ebp)         #   dimension 2: 8 elements
    movl    $10,-16036(%ebp)        #   dimension 3: 10 elements
    movl    $10,-16032(%ebp)        #   dimension 4: 10 elements
    movl    $5,-16028(%ebp)         #   dimension 5: 5 elements

    # function body
    movl    $99, %eax               #   0:     param  2 <- 99
    pushl   %eax                   
    movl    $49596, %eax            #   1:     param  1 <- 49596
    pushl   %eax                   
    leal    -16048(%ebp), %eax      #   2:     &()    t7 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  0 <- t7
    pushl   %eax                   
    call    f1                      #   4:     call   t8 <- f1
    addl    $12, %esp              
    movb    %al, -17(%ebp)         
    call    ReadInt                 #   5:     call   t9 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     assign v4 <- t9
    movl    %eax, -16052(%ebp)     
l_f2_6_while_cond:
    movl    $97, %eax               #   8:     if     97 # 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_7_while_body      
    jmp     l_f2_5                  #   9:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  11:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_11_if_false        #  13:     goto   11_if_false
    jmp     l_f2_9                  #  14:     goto   9
l_f2_11_if_false:
l_f2_9:
l_f2_13_while_cond:
    jmp     l_f2_12                 #  18:     goto   12
    jmp     l_f2_13_while_cond      #  19:     goto   13_while_cond
l_f2_12:
    jmp     l_f2_exit              
    jmp     l_f2_2                  #  22:     goto   2
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $16040, %esp            # remove locals
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
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 4 of <array 8 of <array 10 of <array 10 of <array 5 of <bool>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <char> %ebp-33 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]

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
l_test_1_while_cond:
    movl    $99, %eax               #   1:     if     99 # 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_exit            
    movl    $98, %eax               #   5:     if     98 # 99 goto 6
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_6               
    jmp     l_test_7                #   6:     goto   7
l_test_6:
    movl    $1, %eax                #   8:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_8                #   9:     goto   8
l_test_7:
    movl    $0, %eax                #  11:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_8:
    movzbl  -13(%ebp), %eax         #  13:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $97, %eax               #  17:     if     97 < 99 goto 14_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_14_if_true      
    jmp     l_test_15_if_false      #  18:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  20:     goto   13
l_test_15_if_false:
l_test_13:
    jmp     l_test_19_if_false      #  23:     goto   19_if_false
    jmp     l_test_17               #  24:     goto   17
l_test_19_if_false:
l_test_17:
    jmp     l_test_1_while_cond     #  27:     goto   1_while_cond
l_test_0:
    movl    $100, %eax              #  29:     if     100 > 99 goto 21_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_21_if_true      
    jmp     l_test_22_if_false      #  30:     goto   22_if_false
l_test_21_if_true:
    call    ReadInt                 #  32:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $74843, %eax            #  33:     if     74843 > 29741 goto 26_if_true
    movl    $29741, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_26_if_true      
    jmp     l_test_27_if_false      #  34:     goto   27_if_false
l_test_26_if_true:
    jmp     l_test_25               #  36:     goto   25
l_test_27_if_false:
l_test_25:
    movl    $32635, %eax            #  39:     if     32635 # 37755 goto 30_if_true
    movl    $37755, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_30_if_true      
    jmp     l_test_31_if_false      #  40:     goto   31_if_false
l_test_30_if_true:
    jmp     l_test_29               #  42:     goto   29
l_test_31_if_false:
l_test_29:
    movl    $99, %eax               #  45:     assign v1 <- 99
    movb    %al, v1                
l_test_35_while_cond:
    jmp     l_test_34               #  47:     goto   34
    jmp     l_test_35_while_cond    #  48:     goto   35_while_cond
l_test_34:
    jmp     l_test_exit            
l_test_39_while_cond:
    movl    $822, %eax              #  52:     if     822 > 93459 goto 40_while_body
    movl    $93459, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_40_while_body   
    jmp     l_test_38               #  53:     goto   38
l_test_40_while_body:
    jmp     l_test_39_while_cond    #  55:     goto   39_while_cond
l_test_38:
    jmp     l_test_exit            
    movl    $38889, %eax            #  58:     assign v2 <- 38889
    movl    %eax, v2               
    movl    $1, %eax                #  59:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_20               #  60:     goto   20
l_test_22_if_false:
l_test_20:
    movl    $98, %eax               #  63:     if     98 < 97 goto 46_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_46_if_true      
    jmp     l_test_47_if_false      #  64:     goto   47_if_false
l_test_46_if_true:
    call    dummyBOOLfunc           #  66:     call   t2 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movl    $99, %eax               #  67:     param  2 <- 99
    pushl   %eax                   
    movl    $416, %eax              #  68:     div    t3 <- 416, 70097
    movl    $70097, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  69:     param  1 <- t3
    pushl   %eax                   
    leal    v3, %eax                #  70:     &()    t4 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  71:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #  72:     call   t5 <- f1
    addl    $12, %esp              
    movb    %al, -33(%ebp)         
    jmp     l_test_45               #  73:     goto   45
l_test_47_if_false:
l_test_45:
    jmp     l_test_exit            
    call    ReadInt                 #  77:     call   t6 <- ReadInt
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  78:     assign v2 <- t6
    movl    %eax, v2               

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4
v3:                                 # <array 4 of <array 8 of <array 10 of <array 10 of <array 5 of <bool>>>>>>
    .long    5
    .long    4
    .long    8
    .long   10
    .long   10
    .long    5
    .skip 16000








    # end of global data section
    #-----------------------------------------

    .end
##################################################
