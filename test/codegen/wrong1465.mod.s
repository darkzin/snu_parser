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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 92 of <array 14 of <array 37 of <array 20 of <array 34 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]

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
    movl    $53706, %eax            #   1:     if     53706 < 26512 goto 2_while_body
    movl    $26512, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_0:
    movl    $100, %eax              #   6:     assign v2 <- 100
    movb    %al, 12(%ebp)          
    call    dummyBOOLfunc           #   7:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

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
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 92 of <array 14 of <array 37 of <array 20 of <array 34 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 69 of <array 75 of <array 98 of <array 84 of <array 98 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #   -32406148(%ebp)  32406104  [ $v4       <array 92 of <array 14 of <array 37 of <array 20 of <array 34 of <char>>>>>> %ebp-32406148 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32406136, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8101534, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-32406148(%ebp)      # local array 'v4': 5 dimensions
    movl    $92,-32406144(%ebp)     #   dimension 1: 92 elements
    movl    $14,-32406140(%ebp)     #   dimension 2: 14 elements
    movl    $37,-32406136(%ebp)     #   dimension 3: 37 elements
    movl    $20,-32406132(%ebp)     #   dimension 4: 20 elements
    movl    $34,-32406128(%ebp)     #   dimension 5: 34 elements

    # function body
l_f1_1_while_cond:
    movl    $80275, %eax            #   1:     sub    t10 <- 80275, 8867
    movl    $8867, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t10 >= 37842 goto 2_while_body
    movl    $37842, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
l_f1_5_while_cond:
    jmp     l_f1_4                  #   6:     goto   4
    jmp     l_f1_5_while_cond       #   7:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_1_while_cond       #   9:     goto   1_while_cond
l_f1_0:
    movl    $97, %eax               #  11:     param  1 <- 97
    pushl   %eax                   
    leal    -32406148(%ebp), %eax   #  12:     &()    t11 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     param  0 <- t11
    pushl   %eax                   
    call    f0                      #  14:     call   t12 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    movl    $69633, %eax            #  15:     sub    t13 <- 69633, 68264
    movl    $68264, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     add    t14 <- t13, 12184
    movl    $12184, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  17:     sub    t15 <- t14, 50649
    movl    $50649, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $88316, %eax            #  18:     div    t16 <- 88316, 66681
    movl    $66681, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  19:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  20:     return t17
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $32406136, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 92 of <array 14 of <array 37 of <array 20 of <array 34 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t12      <bool> %ebp-18 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 15 of <array 7 of <array 16 of <array 73 of <array 63 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 22 of <array 5 of <array 53 of <array 23 of <array 62 of <int>>>>>>> %ebp+20 ]
    #   -32406124(%ebp)  32406104  [ $v5       <array 92 of <array 14 of <array 37 of <array 20 of <array 34 of <char>>>>>> %ebp-32406124 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32406112, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8101528, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-32406124(%ebp)      # local array 'v5': 5 dimensions
    movl    $92,-32406120(%ebp)     #   dimension 1: 92 elements
    movl    $14,-32406116(%ebp)     #   dimension 2: 14 elements
    movl    $37,-32406112(%ebp)     #   dimension 3: 37 elements
    movl    $20,-32406108(%ebp)     #   dimension 4: 20 elements
    movl    $34,-32406104(%ebp)     #   dimension 5: 34 elements

    # function body
l_f2_1_while_cond:
    movl    $99, %eax               #   1:     param  1 <- 99
    pushl   %eax                   
    leal    -32406124(%ebp), %eax   #   2:     &()    t10 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #   4:     call   t11 <- f0
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    movl    $100, %eax              #   5:     if     100 <= t11 goto 2_while_body
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   6:     goto   0
l_f2_2_while_body:
    call    dummyBOOLfunc           #   8:     call   t12 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    jmp     l_f2_1_while_cond       #   9:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_6_if_true          #  11:     goto   6_if_true
    jmp     l_f2_6_if_true          #  12:     goto   6_if_true
    jmp     l_f2_6_if_true          #  13:     goto   6_if_true
    jmp     l_f2_7_if_false         #  14:     goto   7_if_false
l_f2_6_if_true:
l_f2_13_while_cond:
    movl    $0, %eax                #  17:     if     0 # 0 goto 14_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_14_while_body     
    jmp     l_f2_12                 #  18:     goto   12
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  20:     goto   13_while_cond
l_f2_12:
l_f2_17_while_cond:
    jmp     l_f2_17_while_cond      #  23:     goto   17_while_cond
    jmp     l_f2_5                  #  24:     goto   5
l_f2_7_if_false:
l_f2_5:
    movl    $99, %eax               #  27:     if     99 # 98 goto 20_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_20_if_true        
    jmp     l_f2_21_if_false        #  28:     goto   21_if_false
l_f2_20_if_true:
    movl    $24349, %eax            #  30:     return 24349
    jmp     l_f2_exit              
    movl    $99, %eax               #  31:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  32:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_19                 #  33:     goto   19
l_f2_21_if_false:
l_f2_19:

l_f2_exit:
    # epilogue
    addl    $32406112, %esp         # remove locals
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
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 69 of <array 75 of <array 98 of <array 84 of <array 98 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t7       <char> %ebp-26 ]
    #    -32(%ebp)   4  [ $t8       <ptr(4) to <array 69 of <array 75 of <array 98 of <array 84 of <array 98 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t0 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
l_test_1_if_true:
    jmp     l_test_0                #   3:     goto   0
l_test_0:
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_7                #   6:     goto   7
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_7:
    movzbl  -14(%ebp), %eax         #   9:     assign v0 <- t1
    movb    %al, v0                
    call    dummyCHARfunc           #  10:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $0, %eax                #  11:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_16               #  12:     goto   16
    jmp     l_test_16               #  13:     goto   16
l_test_16:
    movl    $1, %eax                #  15:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_18               #  16:     goto   18
    movl    $0, %eax                #  17:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_18:
    movzbl  -16(%ebp), %eax         #  19:     param  2 <- t3
    pushl   %eax                   
    movl    $97, %eax               #  20:     param  1 <- 97
    pushl   %eax                   
    leal    v1, %eax                #  21:     &()    t4 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #  23:     call   t5 <- f1
    addl    $12, %esp              
    movl    %eax, -24(%ebp)        
    jmp     l_test_10               #  24:     goto   10
l_test_10:
    movl    $99, %eax               #  26:     if     99 # 97 goto 23
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_23              
    jmp     l_test_24               #  27:     goto   24
l_test_23:
    movl    $1, %eax                #  29:     assign t6 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_25               #  30:     goto   25
l_test_24:
    movl    $0, %eax                #  32:     assign t6 <- 0
    movb    %al, -25(%ebp)         
l_test_25:
    movzbl  -25(%ebp), %eax         #  34:     param  2 <- t6
    pushl   %eax                   
    call    dummyCHARfunc           #  35:     call   t7 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  36:     param  1 <- t7
    pushl   %eax                   
    leal    v1, %eax                #  37:     &()    t8 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  38:     param  0 <- t8
    pushl   %eax                   
    call    f1                      #  39:     call   t9 <- f1
    addl    $12, %esp              
    movl    %eax, -36(%ebp)        
    jmp     l_test_exit            

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <array 69 of <array 75 of <array 98 of <array 84 of <array 98 of <char>>>>>>
    .long    5
    .long   69
    .long   75
    .long   98
    .long   84
    .long   98
    .skip -120108496








    # end of global data section
    #-----------------------------------------

    .end
##################################################
