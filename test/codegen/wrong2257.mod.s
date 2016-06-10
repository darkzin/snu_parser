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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $v2       <bool> %ebp-26 ]

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
l_f0_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     return t1
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #   3:     goto   1_while_cond
l_f0_5_while_cond:
    jmp     l_f0_6_while_body       #   5:     goto   6_while_body
    jmp     l_f0_6_while_body       #   6:     goto   6_while_body
    jmp     l_f0_4                  #   7:     goto   4
    jmp     l_f0_4                  #   8:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #  10:     goto   5_while_cond
l_f0_4:
    movl    $62887, %eax            #  12:     div    t2 <- 62887, 48402
    movl    $48402, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     mul    t3 <- t2, 84639
    movl    $84639, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     if     t3 = 76490 goto 11
    movl    $76490, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_11                
    jmp     l_f0_12                 #  15:     goto   12
l_f0_11:
    movl    $1, %eax                #  17:     assign t4 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_13                 #  18:     goto   13
l_f0_12:
    movl    $0, %eax                #  20:     assign t4 <- 0
    movb    %al, -25(%ebp)         
l_f0_13:
    movzbl  -25(%ebp), %eax         #  22:     assign v2 <- t4
    movb    %al, -26(%ebp)         

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 93 of <array 60 of <array 20 of <array 17 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 97 of <array 51 of <array 39 of <array 46 of <array 80 of <int>>>>>>> %ebp+12 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    jmp     l_f1_6_if_false         #   2:     goto   6_if_false
    jmp     l_f1_4                  #   3:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
l_f1_8_while_cond:
    movl    $99, %eax               #   9:     if     99 <= 100 goto 9_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_9_while_body      
    jmp     l_f1_7                  #  10:     goto   7
l_f1_9_while_body:
    jmp     l_f1_8_while_cond       #  12:     goto   8_while_cond
l_f1_7:
l_f1_12_while_cond:
    call    f0                      #  15:     call   t1 <- f0
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  16:     if     t1 <= 97 goto 13_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_13_while_body     
    jmp     l_f1_11                 #  17:     goto   11
l_f1_13_while_body:
    movl    $96169, %eax            #  19:     if     96169 = 91278 goto 16
    movl    $91278, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_16                
    jmp     l_f1_17                 #  20:     goto   17
l_f1_16:
    movl    $1, %eax                #  22:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_18                 #  23:     goto   18
l_f1_17:
    movl    $0, %eax                #  25:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f1_18:
    movzbl  -14(%ebp), %eax         #  27:     return t2
    jmp     l_f1_exit              
l_f1_21_while_cond:
    jmp     l_f1_21_while_cond      #  29:     goto   21_while_cond
l_f1_24_while_cond:
    jmp     l_f1_24_while_cond      #  31:     goto   24_while_cond
    jmp     l_f1_12_while_cond      #  32:     goto   12_while_cond
l_f1_11:

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t6       <char> %ebp-33 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]

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
l_f2_1_while_cond:
    call    f0                      #   1:     call   t1 <- f0
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t1 = 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    movl    $98763, %eax            #   7:     mul    t2 <- 98763, 45254
    movl    $45254, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     mul    t3 <- t2, 61565
    movl    $61565, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     div    t4 <- t3, 67668
    movl    $67668, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     add    t5 <- t4, 62570
    movl    $62570, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  11:     return t5
    jmp     l_f2_exit              
    jmp     l_f2_7_if_false         #  12:     goto   7_if_false
    jmp     l_f2_7_if_false         #  13:     goto   7_if_false
    movl    $82925, %eax            #  14:     if     82925 >= 41334 goto 11_if_true
    movl    $41334, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  15:     goto   12_if_false
l_f2_11_if_true:
    jmp     l_f2_10                 #  17:     goto   10
l_f2_12_if_false:
l_f2_10:
    jmp     l_f2_16_if_false        #  20:     goto   16_if_false
    jmp     l_f2_14                 #  21:     goto   14
l_f2_16_if_false:
l_f2_14:
    call    dummyCHARfunc           #  24:     call   t6 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    jmp     l_f2_20_if_false        #  25:     goto   20_if_false
    jmp     l_f2_18                 #  26:     goto   18
l_f2_20_if_false:
l_f2_18:
    movl    $99, %eax               #  29:     if     99 = 98 goto 22_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_22_if_true        
    jmp     l_f2_23_if_false        #  30:     goto   23_if_false
l_f2_22_if_true:
    jmp     l_f2_21                 #  32:     goto   21
l_f2_23_if_false:
l_f2_21:
    jmp     l_f2_25                 #  35:     goto   25
l_f2_25:
l_f2_29_while_cond:
    movl    $100, %eax              #  38:     if     100 < 97 goto 30_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_30_while_body     
    jmp     l_f2_28                 #  39:     goto   28
l_f2_30_while_body:
    jmp     l_f2_29_while_cond      #  41:     goto   29_while_cond
l_f2_28:
    jmp     l_f2_5                  #  43:     goto   5
l_f2_7_if_false:
l_f2_5:

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
    jmp     l_test_exit            
    jmp     l_test_3_if_false       #   1:     goto   3_if_false
l_test_5_while_cond:
    jmp     l_test_4                #   3:     goto   4
    jmp     l_test_exit            
    movl    $99, %eax               #   5:     assign v0 <- 99
    movb    %al, v0                
    movl    $24573, %eax            #   6:     if     24573 < 86487 goto 10
    movl    $86487, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_10              
    jmp     l_test_11               #   7:     goto   11
l_test_10:
    movl    $1, %eax                #   9:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_12               #  10:     goto   12
l_test_11:
    movl    $0, %eax                #  12:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_12:
    movzbl  -13(%ebp), %eax         #  14:     assign v1 <- t0
    movb    %al, v1                
    jmp     l_test_5_while_cond     #  15:     goto   5_while_cond
l_test_4:
    jmp     l_test_1                #  17:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_17_while_cond:
    movl    $0, %eax                #  23:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_17_while_cond    #  24:     goto   17_while_cond

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
