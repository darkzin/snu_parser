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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 3 of <array 8 of <array 2 of <array 3 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    call    dummyINTfunc            #   0:     call   t9 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    call    dummyCHARfunc           #   1:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   2:     call   t11 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 6 of <array 5 of <array 5 of <array 8 of <int>>>>>>> %ebp+8 ]
    #    -15(%ebp)   1  [ $v1       <bool> %ebp-15 ]

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
    call    dummyBOOLfunc           #   0:     call   t9 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $1, %eax                #   1:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_4                  #   2:     goto   4
    movl    $0, %eax                #   3:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f1_4:
    movzbl  -13(%ebp), %eax         #   5:     assign v1 <- t10
    movb    %al, -15(%ebp)         
    jmp     l_f1_8_if_false         #   6:     goto   8_if_false
    jmp     l_f1_11_if_false        #   7:     goto   11_if_false
    movl    $99, %eax               #   8:     return 99
    jmp     l_f1_exit              
    movl    $32262, %eax            #   9:     if     32262 <= 35774 goto 14_if_true
    movl    $35774, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_14_if_true        
    jmp     l_f1_15_if_false        #  10:     goto   15_if_false
l_f1_14_if_true:
    jmp     l_f1_13                 #  12:     goto   13
l_f1_15_if_false:
l_f1_13:
    jmp     l_f1_9                  #  15:     goto   9
l_f1_11_if_false:
l_f1_9:
    jmp     l_f1_6                  #  18:     goto   6
l_f1_8_if_false:
l_f1_6:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <ptr(4) to <array 2 of <array 3 of <array 8 of <array 2 of <array 3 of <int>>>>>>> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 4 of <array 9 of <array 4 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -40(%ebp)   4  [ $v2       <int> %ebp-40 ]
    #   -1216(%ebp)  1176  [ $v3       <array 2 of <array 3 of <array 8 of <array 2 of <array 3 of <int>>>>>> %ebp-1216 ]
    #   -1217(%ebp)   1  [ $v4       <bool> %ebp-1217 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1208, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $302, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1216(%ebp)          # local array 'v3': 5 dimensions
    movl    $2,-1212(%ebp)          #   dimension 1: 2 elements
    movl    $3,-1208(%ebp)          #   dimension 2: 3 elements
    movl    $8,-1204(%ebp)          #   dimension 3: 8 elements
    movl    $2,-1200(%ebp)          #   dimension 4: 2 elements
    movl    $3,-1196(%ebp)          #   dimension 5: 3 elements

    # function body
    movl    $0, %eax                #   0:     param  3 <- 0
    pushl   %eax                   
    leal    -1216(%ebp), %eax       #   1:     &()    t9 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   2:     param  2 <- t9
    pushl   %eax                   
    movl    $18042, %eax            #   3:     param  1 <- 18042
    pushl   %eax                   
    movl    $58269, %eax            #   4:     div    t10 <- 58269, 75543
    movl    $75543, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #   6:     call   t11 <- f0
    addl    $16, %esp              
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     assign v2 <- t11
    movl    %eax, -40(%ebp)        
    jmp     l_f2_3_if_false         #   8:     goto   3_if_false
    movl    $97, %eax               #   9:     if     97 < 98 goto 5
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_5                 
    jmp     l_f2_6                  #  10:     goto   6
l_f2_5:
    movl    $1, %eax                #  12:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_7                  #  13:     goto   7
l_f2_6:
    movl    $0, %eax                #  15:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f2_7:
    movzbl  -21(%ebp), %eax         #  17:     assign v4 <- t12
    movb    %al, -1217(%ebp)       
    movl    $82115, %eax            #  18:     return 82115
    jmp     l_f2_exit              
    jmp     l_f2_1                  #  19:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_11_while_cond:
    movl    $65177, %eax            #  23:     add    t13 <- 65177, 40620
    movl    $40620, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     sub    t14 <- t13, 85790
    movl    $85790, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  25:     if     t14 < 69250 goto 12_while_body
    movl    $69250, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_12_while_body     
    jmp     l_f2_10                 #  26:     goto   10
l_f2_12_while_body:
    jmp     l_f2_14                 #  28:     goto   14
l_f2_14:
    jmp     l_f2_11_while_cond      #  30:     goto   11_while_cond
l_f2_10:

l_f2_exit:
    # epilogue
    addl    $1208, %esp             # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <char> %ebp-37 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t8       <bool> %ebp-45 ]

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
    movl    $42776, %eax            #   0:     add    t0 <- 42776, 8791
    movl    $8791, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 18064
    movl    $18064, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $71632, %eax            #   2:     add    t2 <- 71632, 55751
    movl    $55751, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t3 <- t2, 1136
    movl    $1136, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t4 <- t3, 52950
    movl    $52950, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     sub    t5 <- t4, 87790
    movl    $87790, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -20(%ebp), %eax         #   6:     if     t1 # t5 goto 1_if_true
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   7:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_0                #   9:     goto   0
l_test_2_if_false:
l_test_0:
l_test_5_while_cond:
    jmp     l_test_6_while_body     #  13:     goto   6_while_body
    jmp     l_test_6_while_body     #  14:     goto   6_while_body
l_test_6_while_body:
    call    dummyCHARfunc           #  16:     call   t6 <- dummyCHARfunc
    movb    %al, -37(%ebp)         
    call    dummyINTfunc            #  17:     call   t7 <- dummyINTfunc
    movl    %eax, -44(%ebp)        
l_test_12_while_cond:
    movl    $99497, %eax            #  19:     if     99497 > 27606 goto 13_while_body
    movl    $27606, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_13_while_body   
    jmp     l_test_11               #  20:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  22:     goto   12_while_cond
l_test_11:
    jmp     l_test_5_while_cond     #  24:     goto   5_while_cond
    jmp     l_test_exit            
l_test_17_while_cond:
    call    dummyBOOLfunc           #  27:     call   t8 <- dummyBOOLfunc
    movb    %al, -45(%ebp)         
    movzbl  -45(%ebp), %eax         #  28:     if     t8 = 1 goto 18_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_18_while_body   
    jmp     l_test_16               #  29:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  31:     goto   17_while_cond
l_test_16:
l_test_21_while_cond:
    movl    $65069, %eax            #  34:     if     65069 > 19135 goto 22_while_body
    movl    $19135, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_22_while_body   
    jmp     l_test_20               #  35:     goto   20
l_test_22_while_body:
    jmp     l_test_exit            
    jmp     l_test_21_while_cond    #  38:     goto   21_while_cond
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
