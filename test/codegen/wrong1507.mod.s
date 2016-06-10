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
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 63 of <array 90 of <array 65 of <array 8 of <array 52 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 85 of <array 69 of <array 95 of <array 26 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]
    #    -15(%ebp)   1  [ $v5       <bool> %ebp-15 ]

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
    call    dummyBOOLfunc           #   0:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $82070, %eax            #   1:     if     82070 < 40478 goto 2_if_true
    movl    $40478, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_5                  #   4:     goto   5
l_f0_5:
    movl    $98, %eax               #   6:     if     98 = 97 goto 9
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_9                 
    jmp     l_f0_10                 #   7:     goto   10
l_f0_9:
    movl    $1, %eax                #   9:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_11                 #  10:     goto   11
l_f0_10:
    movl    $0, %eax                #  12:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f0_11:
    movzbl  -14(%ebp), %eax         #  14:     assign v5 <- t7
    movb    %al, -15(%ebp)         
    jmp     l_f0_1                  #  15:     goto   1
l_f0_3_if_false:
l_f0_1:
l_f0_14_while_cond:
    jmp     l_f0_15_while_body      #  19:     goto   15_while_body
    jmp     l_f0_15_while_body      #  20:     goto   15_while_body
    jmp     l_f0_15_while_body      #  21:     goto   15_while_body
    jmp     l_f0_15_while_body      #  22:     goto   15_while_body
    jmp     l_f0_13                 #  23:     goto   13
l_f0_15_while_body:
    jmp     l_f0_25_if_false        #  25:     goto   25_if_false
    jmp     l_f0_23                 #  26:     goto   23
l_f0_25_if_false:
l_f0_23:
    jmp     l_f0_14_while_cond      #  29:     goto   14_while_cond
l_f0_13:

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
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 64 of <array 51 of <array 80 of <array 98 of <array 99 of <char>>>>>>> %ebp+8 ]

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
l_f1_1_while_cond:
    movl    $63299, %eax            #   1:     div    t6 <- 63299, 8675
    movl    $8675, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t7 <- t6, 42742
    movl    $42742, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $81125, %eax            #   3:     if     81125 = t7 goto 2_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    movl    $98, %eax               #   8:     if     98 < 97 goto 5_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   9:     goto   6_if_false
l_f1_5_if_true:
l_f1_9_while_cond:
    movl    $0, %eax                #  12:     if     0 = 0 goto 10_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_10_while_body     
    jmp     l_f1_8                  #  13:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  15:     goto   9_while_cond
l_f1_8:
    movl    $7654, %eax             #  17:     return 7654
    jmp     l_f1_exit              
    jmp     l_f1_15_if_false        #  18:     goto   15_if_false
    jmp     l_f1_13                 #  19:     goto   13
l_f1_15_if_false:
l_f1_13:
    jmp     l_f1_4                  #  22:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $51467, %eax            #  25:     add    t8 <- 51467, 30522
    movl    $30522, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $83267, %eax            #  26:     mul    t9 <- 83267, 78909
    movl    $78909, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  27:     add    t10 <- t8, t9
    movl    -32(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  28:     return t10
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t8       <ptr(4) to <array 3 of <array 85 of <array 69 of <array 95 of <array 26 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t9       <ptr(4) to <array 63 of <array 90 of <array 65 of <array 8 of <array 52 of <int>>>>>>> %ebp-24 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v3       <char> %ebp-29 ]
    #   -613267256(%ebp)  613267224  [ $v4       <array 63 of <array 90 of <array 65 of <array 8 of <array 52 of <int>>>>>> %ebp-613267256 ]
    #   -656726932(%ebp)  43459674  [ $v5       <array 3 of <array 85 of <array 69 of <array 95 of <array 26 of <char>>>>>> %ebp-656726932 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $656726920, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $164181730, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-613267256(%ebp)     # local array 'v4': 5 dimensions
    movl    $63,-613267252(%ebp)    #   dimension 1: 63 elements
    movl    $90,-613267248(%ebp)    #   dimension 2: 90 elements
    movl    $65,-613267244(%ebp)    #   dimension 3: 65 elements
    movl    $8,-613267240(%ebp)     #   dimension 4: 8 elements
    movl    $52,-613267236(%ebp)    #   dimension 5: 52 elements
    movl    $5,-656726932(%ebp)     # local array 'v5': 5 dimensions
    movl    $3,-656726928(%ebp)     #   dimension 1: 3 elements
    movl    $85,-656726924(%ebp)    #   dimension 2: 85 elements
    movl    $69,-656726920(%ebp)    #   dimension 3: 69 elements
    movl    $95,-656726916(%ebp)    #   dimension 4: 95 elements
    movl    $26,-656726912(%ebp)    #   dimension 5: 26 elements

    # function body
l_f2_4_while_cond:
    jmp     l_f2_4_while_cond       #   1:     goto   4_while_cond
    movl    $38526, %eax            #   2:     assign v2 <- 38526
    movl    %eax, -28(%ebp)        
    movl    $43061, %eax            #   3:     if     43061 = 16917 goto 8_if_true
    movl    $16917, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_8_if_true         
    jmp     l_f2_9_if_false         #   4:     goto   9_if_false
l_f2_8_if_true:
    jmp     l_f2_7                  #   6:     goto   7
l_f2_9_if_false:
l_f2_7:
    movl    $97, %eax               #   9:     assign v3 <- 97
    movb    %al, -29(%ebp)         
    call    dummyCHARfunc           #  10:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $97, %eax               #  11:     return 97
    jmp     l_f2_exit              
l_f2_15_while_cond:
    movl    $97, %eax               #  13:     if     97 <= 100 goto 16_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_16_while_body     
    jmp     l_f2_14                 #  14:     goto   14
l_f2_16_while_body:
    jmp     l_f2_15_while_cond      #  16:     goto   15_while_cond
l_f2_14:
    jmp     l_f2_0                  #  18:     goto   0
l_f2_0:
    movl    $100, %eax              #  20:     if     100 >= 98 goto 19_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_19_if_true        
    jmp     l_f2_20_if_false        #  21:     goto   20_if_false
l_f2_19_if_true:
    movl    $95612, %eax            #  23:     if     95612 < 84465 goto 23_if_true
    movl    $84465, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_23_if_true        
    jmp     l_f2_24_if_false        #  24:     goto   24_if_false
l_f2_23_if_true:
    jmp     l_f2_22                 #  26:     goto   22
l_f2_24_if_false:
l_f2_22:
    movl    $88081, %eax            #  29:     assign v2 <- 88081
    movl    %eax, -28(%ebp)        
    movl    $98, %eax               #  30:     return 98
    jmp     l_f2_exit              
    movl    $99, %eax               #  31:     if     99 # 99 goto 29
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_29                
    jmp     l_f2_30                 #  32:     goto   30
l_f2_29:
    movl    $1, %eax                #  34:     assign t7 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_31                 #  35:     goto   31
l_f2_30:
    movl    $0, %eax                #  37:     assign t7 <- 0
    movb    %al, -15(%ebp)         
l_f2_31:
    movzbl  -15(%ebp), %eax         #  39:     assign v1 <- t7
    movb    %al, 8(%ebp)           
l_f2_34_while_cond:
    movl    $96829, %eax            #  41:     if     96829 > 36278 goto 35_while_body
    movl    $36278, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_35_while_body     
    jmp     l_f2_33                 #  42:     goto   33
l_f2_35_while_body:
    jmp     l_f2_34_while_cond      #  44:     goto   34_while_cond
l_f2_33:
    movl    $99, %eax               #  46:     param  3 <- 99
    pushl   %eax                   
    leal    -656726932(%ebp), %eax  #  47:     &()    t8 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  48:     param  2 <- t8
    pushl   %eax                   
    leal    -613267256(%ebp), %eax  #  49:     &()    t9 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  50:     param  1 <- t9
    pushl   %eax                   
    movl    $100, %eax              #  51:     param  0 <- 100
    pushl   %eax                   
    call    f0                      #  52:     call   t10 <- f0
    addl    $16, %esp              
    movb    %al, -13(%ebp)         
    call    WriteLn                 #  53:     call   WriteLn
l_f2_40_while_cond:
    movl    $1, %eax                #  55:     if     1 = 0 goto 41_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_41_while_body     
    jmp     l_f2_39                 #  56:     goto   39
l_f2_41_while_body:
    jmp     l_f2_40_while_cond      #  58:     goto   40_while_cond
l_f2_39:
    jmp     l_f2_18                 #  60:     goto   18
l_f2_20_if_false:
l_f2_18:
    call    WriteLn                 #  63:     call   WriteLn

l_f2_exit:
    # epilogue
    addl    $656726920, %esp        # remove locals
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
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   3:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -14(%ebp), %eax         #   4:     if     t1 > t2 goto 2
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_2               
    jmp     l_test_3                #   5:     goto   3
l_test_2:
    movl    $1, %eax                #   7:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_4                #   8:     goto   4
l_test_3:
    movl    $0, %eax                #  10:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_4:
    movzbl  -16(%ebp), %eax         #  12:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  13:     call   t4 <- f2
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
l_test_7_while_cond:
    jmp     l_test_10               #  15:     goto   10
l_test_10:
    movl    $1, %eax                #  17:     assign t5 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_12               #  18:     goto   12
    movl    $0, %eax                #  19:     assign t5 <- 0
    movb    %al, -18(%ebp)         
l_test_12:
    movzbl  -18(%ebp), %eax         #  21:     if     t5 # 0 goto 8_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_8_while_body    
    jmp     l_test_6                #  22:     goto   6
l_test_8_while_body:
    jmp     l_test_exit            
    jmp     l_test_7_while_cond     #  25:     goto   7_while_cond
l_test_6:
    movl    $100, %eax              #  27:     assign v0 <- 100
    movb    %al, v0                

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
