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
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 67 of <array 98 of <array 48 of <array 34 of <array 58 of <int>>>>>>> %ebp+12 ]
    #    -20(%ebp)   4  [ $v3       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t2 >= 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyBOOLfunc           #   7:     call   t3 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_f0_9_while_cond:
    jmp     l_f0_9_while_cond       #   9:     goto   9_while_cond
l_f0_12_while_cond:
    movl    $100, %eax              #  11:     if     100 # 100 goto 13_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f0_13_while_body     
    jmp     l_f0_11                 #  12:     goto   11
l_f0_13_while_body:
    jmp     l_f0_12_while_cond      #  14:     goto   12_while_cond
l_f0_11:
l_f0_16_while_cond:
    jmp     l_f0_16_while_cond      #  17:     goto   16_while_cond
    movl    $1, %eax                #  18:     assign v1 <- 1
    movb    %al, 8(%ebp)           
    movl    $5894, %eax             #  19:     assign v3 <- 5894
    movl    %eax, -20(%ebp)        
    jmp     l_f0_4                  #  20:     goto   4
l_f0_4:
    jmp     l_f0_21                 #  22:     goto   21
    jmp     l_f0_21                 #  23:     goto   21
l_f0_21:
    movl    $1, %eax                #  25:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_23                 #  26:     goto   23
    movl    $0, %eax                #  27:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f0_23:
    movzbl  -15(%ebp), %eax         #  29:     assign v1 <- t4
    movb    %al, 8(%ebp)           

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v1       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $v2       <bool> %ebp-17 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v1 <- t2
    movb    %al, -16(%ebp)         
    movl    $1, %eax                #   2:     assign v2 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_4_if_false         #   3:     goto   4_if_false
    jmp     l_f1_4_if_false         #   4:     goto   4_if_false
    movl    $84429, %eax            #   5:     if     84429 > 35309 goto 10
    movl    $35309, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_10                
    jmp     l_f1_11                 #   6:     goto   11
l_f1_10:
    movl    $1, %eax                #   8:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_12                 #   9:     goto   12
l_f1_11:
    movl    $0, %eax                #  11:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f1_12:
    movzbl  -14(%ebp), %eax         #  13:     return t3
    jmp     l_f1_exit              
    movl    $99, %eax               #  14:     if     99 < 98 goto 15
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_15                
    jmp     l_f1_16                 #  15:     goto   16
l_f1_15:
    movl    $1, %eax                #  17:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_17                 #  18:     goto   17
l_f1_16:
    movl    $0, %eax                #  20:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f1_17:
    movzbl  -15(%ebp), %eax         #  22:     return t4
    jmp     l_f1_exit              
    movl    $97, %eax               #  23:     assign v1 <- 97
    movb    %al, -16(%ebp)         
    jmp     l_f1_2                  #  24:     goto   2
l_f1_4_if_false:
l_f1_2:

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

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
    movl    $35315, %eax            #   0:     mul    t2 <- 35315, 63962
    movl    $63962, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t2
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #   2:     call   t3 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_f2_3_if_true          #   3:     goto   3_if_true
l_f2_3_if_true:
    movl    $53855, %eax            #   5:     if     53855 > 91490 goto 7
    movl    $91490, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_7                 
    jmp     l_f2_8                  #   6:     goto   8
l_f2_7:
    movl    $1, %eax                #   8:     assign t4 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_9                  #   9:     goto   9
l_f2_8:
    movl    $0, %eax                #  11:     assign t4 <- 0
    movb    %al, -18(%ebp)         
l_f2_9:
    movzbl  -18(%ebp), %eax         #  13:     assign v4 <- t4
    movb    %al, 20(%ebp)          
    jmp     l_f2_2                  #  14:     goto   2
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    movl    $13937, %eax            #   0:     if     13937 > 40199 goto 1_if_true
    movl    $40199, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    movl    $97, %eax               #   4:     if     97 >= 97 goto 6_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_6_if_true       
    jmp     l_test_7_if_false       #   5:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   7:     goto   5
l_test_7_if_false:
l_test_5:
    movl    $97, %eax               #  10:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $97, %eax               #  12:     if     97 < 97 goto 12_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_12_if_true      
    jmp     l_test_13_if_false      #  13:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_11               #  15:     goto   11
l_test_13_if_false:
l_test_11:
    jmp     l_test_0                #  18:     goto   0
l_test_2_if_false:
l_test_0:
l_test_16_while_cond:
    movl    $82463, %eax            #  22:     if     82463 # 37994 goto 17_while_body
    movl    $37994, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_17_while_body   
    jmp     l_test_15               #  23:     goto   15
l_test_17_while_body:
l_test_20_while_cond:
    movl    $100, %eax              #  26:     if     100 < 97 goto 21_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_21_while_body   
    jmp     l_test_19               #  27:     goto   19
l_test_21_while_body:
    jmp     l_test_20_while_cond    #  29:     goto   20_while_cond
l_test_19:
    call    dummyBOOLfunc           #  31:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_16_while_cond    #  32:     goto   16_while_cond
l_test_15:
    movl    $97, %eax               #  34:     if     97 >= 97 goto 25
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_25              
    jmp     l_test_26               #  35:     goto   26
l_test_25:
    movl    $1, %eax                #  37:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_27               #  38:     goto   27
l_test_26:
    movl    $0, %eax                #  40:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_27:
    movzbl  -14(%ebp), %eax         #  42:     assign v1 <- t1
    movb    %al, v1                
    movl    $3775, %eax             #  43:     if     3775 < 35286 goto 31_if_true
    movl    $35286, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_31_if_true      
    jmp     l_test_32_if_false      #  44:     goto   32_if_false
l_test_31_if_true:
    jmp     l_test_exit            
    movl    $47362, %eax            #  47:     if     47362 < 59442 goto 36_if_true
    movl    $59442, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_36_if_true      
    jmp     l_test_37_if_false      #  48:     goto   37_if_false
l_test_36_if_true:
    jmp     l_test_35               #  50:     goto   35
l_test_37_if_false:
l_test_35:
l_test_40_while_cond:
    jmp     l_test_39               #  54:     goto   39
    jmp     l_test_40_while_cond    #  55:     goto   40_while_cond
l_test_39:
l_test_43_while_cond:
    movl    $99, %eax               #  58:     if     99 <= 97 goto 44_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_44_while_body   
    jmp     l_test_42               #  59:     goto   42
l_test_44_while_body:
    jmp     l_test_43_while_cond    #  61:     goto   43_while_cond
l_test_42:
    movl    $100, %eax              #  63:     if     100 <= 100 goto 47_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_47_if_true      
    jmp     l_test_48_if_false      #  64:     goto   48_if_false
l_test_47_if_true:
    jmp     l_test_46               #  66:     goto   46
l_test_48_if_false:
l_test_46:
    movl    $18081, %eax            #  69:     assign v2 <- 18081
    movl    %eax, v2               
    jmp     l_test_30               #  70:     goto   30
l_test_32_if_false:
l_test_30:

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
