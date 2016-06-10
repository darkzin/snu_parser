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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t14      <char> %ebp-26 ]
    #    -27(%ebp)   1  [ $t15      <bool> %ebp-27 ]
    #    -32(%ebp)   4  [ $t7       <ptr(4) to <array 5 of <char>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 47 of <array 37 of <array 48 of <array 85 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 16 of <array 88 of <array 47 of <array 85 of <array 85 of <bool>>>>>>> %ebp+16 ]
    #    -44(%ebp)   4  [ $v4       <int> %ebp-44 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    movl    $14432, %eax            #   1:     if     14432 >= 85381 goto 2_while_body
    movl    $85381, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $99, %eax               #   4:     if     99 > 98 goto 5_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   5:     goto   6_if_false
l_f0_5_if_true:
l_f0_9_while_cond:
    jmp     l_f0_9_while_cond       #   8:     goto   9_while_cond
    leal    _str_1, %eax            #   9:     &()    t7 <- _str_1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  10:     param  0 <- t7
    pushl   %eax                   
    call    WriteStr                #  11:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_4                  #  12:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_1_while_cond       #  15:     goto   1_while_cond
l_f0_0:
    movl    $51669, %eax            #  17:     mul    t8 <- 51669, 89553
    movl    $89553, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  18:     mul    t9 <- t8, 79211
    movl    $79211, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  19:     div    t10 <- t9, 96543
    movl    $96543, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    call    ReadInt                 #  20:     call   t11 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  21:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     assign v4 <- t12
    movl    %eax, -44(%ebp)        
    jmp     l_f0_15_if_false        #  23:     goto   15_if_false
    movl    $0, %eax                #  24:     return 0
    jmp     l_f0_exit              
    movl    $0, %eax                #  25:     return 0
    jmp     l_f0_exit              
    movl    $100, %eax              #  26:     if     100 > 97 goto 19
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_19                
    jmp     l_f0_20                 #  27:     goto   20
l_f0_19:
    movl    $1, %eax                #  29:     assign t13 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_21                 #  30:     goto   21
l_f0_20:
    movl    $0, %eax                #  32:     assign t13 <- 0
    movb    %al, -25(%ebp)         
l_f0_21:
    movzbl  -25(%ebp), %eax         #  34:     return t13
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  35:     call   t14 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
l_f0_25_while_cond:
    movl    $100, %eax              #  37:     if     100 # 97 goto 26_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_26_while_body     
    jmp     l_f0_24                 #  38:     goto   24
l_f0_26_while_body:
    jmp     l_f0_25_while_cond      #  40:     goto   25_while_cond
l_f0_24:
    movl    $38481, %eax            #  42:     if     38481 # 73670 goto 29
    movl    $73670, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_29                
    jmp     l_f0_30                 #  43:     goto   30
l_f0_29:
    movl    $1, %eax                #  45:     assign t15 <- 1
    movb    %al, -27(%ebp)         
    jmp     l_f0_31                 #  46:     goto   31
l_f0_30:
    movl    $0, %eax                #  48:     assign t15 <- 0
    movb    %al, -27(%ebp)         
l_f0_31:
    movzbl  -27(%ebp), %eax         #  50:     return t15
    jmp     l_f0_exit              
    jmp     l_f0_13                 #  51:     goto   13
l_f0_15_if_false:
l_f0_13:

l_f0_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #    -20(%ebp)   4  [ $v4       <int> %ebp-20 ]

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
    movl    $82055, %eax            #   0:     assign v4 <- 82055
    movl    %eax, -20(%ebp)        
l_f1_2_while_cond:
    jmp     l_f1_1                  #   2:     goto   1
    jmp     l_f1_exit              
l_f1_6_while_cond:
    jmp     l_f1_5                  #   5:     goto   5
    jmp     l_f1_6_while_cond       #   6:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_8                  #   8:     goto   8
l_f1_8:
    jmp     l_f1_exit              
l_f1_13_while_cond:
    jmp     l_f1_13_while_cond      #  12:     goto   13_while_cond
    jmp     l_f1_2_while_cond       #  13:     goto   2_while_cond
l_f1_1:
    movl    $0, %eax                #  15:     if     0 # 1 goto 16_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_16_if_true        
    jmp     l_f1_17_if_false        #  16:     goto   17_if_false
l_f1_16_if_true:
    call    WriteLn                 #  18:     call   WriteLn
    call    dummyCHARfunc           #  19:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_23_if_false        #  20:     goto   23_if_false
    jmp     l_f1_21                 #  21:     goto   21
l_f1_23_if_false:
l_f1_21:
    jmp     l_f1_15                 #  24:     goto   15
l_f1_17_if_false:
l_f1_15:

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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 29 of <array 74 of <array 75 of <array 92 of <array 36 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 58 of <array 37 of <array 37 of <array 97 of <array 12 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 47 of <array 56 of <array 87 of <array 85 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 78 of <array 78 of <array 4 of <array 49 of <array 80 of <char>>>>>>> %ebp+20 ]

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
    jmp     l_f2_4                  #   0:     goto   4
l_f2_4:
    movl    $1, %eax                #   2:     assign t7 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   3:     goto   3
    movl    $0, %eax                #   4:     assign t7 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   6:     return t7
    jmp     l_f2_exit              
    movl    $28023, %eax            #   7:     if     28023 # 90427 goto 10
    movl    $90427, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_10                
    jmp     l_f2_11                 #   8:     goto   11
l_f2_10:
    movl    $1, %eax                #  10:     assign t8 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_12                 #  11:     goto   12
l_f2_11:
    movl    $0, %eax                #  13:     assign t8 <- 0
    movb    %al, -14(%ebp)         
l_f2_12:
    movzbl  -14(%ebp), %eax         #  15:     return t8
    jmp     l_f2_exit              
    call    ReadInt                 #  16:     call   t9 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]

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
    movl    $99, %eax               #   0:     assign v0 <- 99
    movb    %al, v0                
l_test_2_while_cond:
    jmp     l_test_3_while_body     #   2:     goto   3_while_body
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    movl    $67871, %eax            #   5:     if     67871 = 79925 goto 6_if_true
    movl    $79925, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_6_if_true       
    jmp     l_test_7_if_false       #   6:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   8:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_2_while_cond     #  11:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            
l_test_11_while_cond:
    call    dummyCHARfunc           #  15:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  16:     if     t0 = 99 goto 12_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_12_while_body   
    jmp     l_test_10               #  17:     goto   10
l_test_12_while_body:
    jmp     l_test_16_if_false      #  19:     goto   16_if_false
    jmp     l_test_14               #  20:     goto   14
l_test_16_if_false:
l_test_14:
    jmp     l_test_exit            
    movl    $98, %eax               #  24:     if     98 = 98 goto 19_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_19_if_true      
    jmp     l_test_20_if_false      #  25:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_18               #  27:     goto   18
l_test_20_if_false:
l_test_18:
    jmp     l_test_11_while_cond    #  30:     goto   11_while_cond
l_test_10:
    movl    $73950, %eax            #  32:     if     73950 <= 39206 goto 23_if_true
    movl    $39206, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_23_if_true      
    jmp     l_test_24_if_false      #  33:     goto   24_if_false
l_test_23_if_true:
    call    dummyCHARfunc           #  35:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyINTfunc            #  36:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    call    dummyINTfunc            #  37:     call   t3 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
l_test_30_while_cond:
    movl    $99333, %eax            #  39:     if     99333 >= 74952 goto 31_while_body
    movl    $74952, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_31_while_body   
    jmp     l_test_29               #  40:     goto   29
l_test_31_while_body:
    jmp     l_test_30_while_cond    #  42:     goto   30_while_cond
l_test_29:
    jmp     l_test_33               #  44:     goto   33
l_test_33:
    call    dummyCHARfunc           #  46:     call   t4 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
l_test_38_while_cond:
    jmp     l_test_38_while_cond    #  48:     goto   38_while_cond
    movl    $0, %eax                #  49:     assign v1 <- 0
    movb    %al, v1                
l_test_42_while_cond:
    movl    $99, %eax               #  51:     if     99 > 100 goto 43_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_43_while_body   
    jmp     l_test_41               #  52:     goto   41
l_test_43_while_body:
    jmp     l_test_42_while_cond    #  54:     goto   42_while_cond
l_test_41:
    jmp     l_test_22               #  56:     goto   22
l_test_24_if_false:
l_test_22:
    jmp     l_test_47_if_false      #  59:     goto   47_if_false
    movl    $99, %eax               #  60:     if     99 = 100 goto 49_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_49_if_true      
    jmp     l_test_50_if_false      #  61:     goto   50_if_false
l_test_49_if_true:
    jmp     l_test_48               #  63:     goto   48
l_test_50_if_false:
l_test_48:
    movl    $1462, %eax             #  66:     assign v2 <- 1462
    movl    %eax, v2               
    movl    $24660, %eax            #  67:     sub    t5 <- 24660, 64947
    movl    $64947, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  68:     sub    t6 <- t5, 49285
    movl    $49285, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  69:     assign v2 <- t6
    movl    %eax, v2               
    jmp     l_test_45               #  70:     goto   45
l_test_47_if_false:
l_test_45:

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
