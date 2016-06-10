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
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 10 of <array 4 of <array 2 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 8 of <array 4 of <array 6 of <array 1 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 7 of <array 5 of <array 1 of <array 9 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 3 of <array 9 of <array 5 of <array 10 of <array 2 of <char>>>>>>> %ebp+20 ]
    #    -49(%ebp)   1  [ $v5       <bool> %ebp-49 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $75585, %eax            #   0:     add    t4 <- 75585, 5295
    movl    $5295, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     add    t5 <- t4, 6829
    movl    $6829, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   2:     add    t6 <- t5, 36380
    movl    $36380, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   3:     sub    t7 <- t6, 49927
    movl    $49927, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   4:     add    t8 <- t7, 29684
    movl    $29684, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $95593, %eax            #   5:     mul    t9 <- 95593, 60116
    movl    $60116, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #   6:     if     t8 > t9 goto 1
    movl    -48(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_1                 
    jmp     l_f0_2                  #   7:     goto   2
l_f0_1:
    movl    $1, %eax                #   9:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #  10:     goto   3
l_f0_2:
    movl    $0, %eax                #  12:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #  14:     return t10
    jmp     l_f0_exit              
    call    ReadInt                 #  15:     call   t11 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $93757, %eax            #  16:     if     93757 > 48296 goto 7
    movl    $48296, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_7                 
    jmp     l_f0_8                  #  17:     goto   8
l_f0_7:
    movl    $1, %eax                #  19:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_9                  #  20:     goto   9
l_f0_8:
    movl    $0, %eax                #  22:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f0_9:
    movzbl  -21(%ebp), %eax         #  24:     assign v5 <- t12
    movb    %al, -49(%ebp)         

l_f0_exit:
    # epilogue
    addl    $40, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v2       <bool> %ebp-29 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    movl    $1309, %eax             #   1:     assign v1 <- 1309
    movl    %eax, -28(%ebp)        
    call    dummyINTfunc            #   2:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $24242, %eax            #   3:     if     24242 = 84756 goto 6_if_true
    movl    $84756, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   4:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   6:     goto   5
l_f1_7_if_false:
l_f1_5:
    jmp     l_f1_0                  #   9:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    ReadInt                 #  12:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     if     t5 >= 76133 goto 10
    movl    $76133, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_10                
    jmp     l_f1_11                 #  14:     goto   11
l_f1_10:
    movl    $1, %eax                #  16:     assign t6 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_12                 #  17:     goto   12
l_f1_11:
    movl    $0, %eax                #  19:     assign t6 <- 0
    movb    %al, -21(%ebp)         
l_f1_12:
    movzbl  -21(%ebp), %eax         #  21:     assign v2 <- t6
    movb    %al, -29(%ebp)         
    jmp     l_f1_16_if_false        #  22:     goto   16_if_false
    jmp     l_f1_16_if_false        #  23:     goto   16_if_false
    jmp     l_f1_14                 #  24:     goto   14
l_f1_16_if_false:
l_f1_14:

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
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t6       <ptr(4) to <array 3 of <array 9 of <array 5 of <array 10 of <array 2 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <ptr(4) to <array 4 of <array 7 of <array 5 of <array 1 of <array 9 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <ptr(4) to <array 5 of <array 8 of <array 4 of <array 6 of <array 1 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <ptr(4) to <array 2 of <array 10 of <array 4 of <array 2 of <array 3 of <bool>>>>>>> %ebp-40 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 2 of <array 9 of <array 7 of <array 5 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 9 of <array 8 of <array 4 of <array 9 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]
    #   -544(%ebp)  504  [ $v5       <array 2 of <array 10 of <array 4 of <array 2 of <array 3 of <bool>>>>>> %ebp-544 ]
    #   -1528(%ebp)  984  [ $v6       <array 5 of <array 8 of <array 4 of <array 6 of <array 1 of <bool>>>>>> %ebp-1528 ]
    #   -6592(%ebp)  5064  [ $v7       <array 4 of <array 7 of <array 5 of <array 1 of <array 9 of <int>>>>>> %ebp-6592 ]
    #   -9316(%ebp)  2724  [ $v8       <array 3 of <array 9 of <array 5 of <array 10 of <array 2 of <char>>>>>> %ebp-9316 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $9304, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2326, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-544(%ebp)           # local array 'v5': 5 dimensions
    movl    $2,-540(%ebp)           #   dimension 1: 2 elements
    movl    $10,-536(%ebp)          #   dimension 2: 10 elements
    movl    $4,-532(%ebp)           #   dimension 3: 4 elements
    movl    $2,-528(%ebp)           #   dimension 4: 2 elements
    movl    $3,-524(%ebp)           #   dimension 5: 3 elements
    movl    $5,-1528(%ebp)          # local array 'v6': 5 dimensions
    movl    $5,-1524(%ebp)          #   dimension 1: 5 elements
    movl    $8,-1520(%ebp)          #   dimension 2: 8 elements
    movl    $4,-1516(%ebp)          #   dimension 3: 4 elements
    movl    $6,-1512(%ebp)          #   dimension 4: 6 elements
    movl    $1,-1508(%ebp)          #   dimension 5: 1 elements
    movl    $5,-6592(%ebp)          # local array 'v7': 5 dimensions
    movl    $4,-6588(%ebp)          #   dimension 1: 4 elements
    movl    $7,-6584(%ebp)          #   dimension 2: 7 elements
    movl    $5,-6580(%ebp)          #   dimension 3: 5 elements
    movl    $1,-6576(%ebp)          #   dimension 4: 1 elements
    movl    $9,-6572(%ebp)          #   dimension 5: 9 elements
    movl    $5,-9316(%ebp)          # local array 'v8': 5 dimensions
    movl    $3,-9312(%ebp)          #   dimension 1: 3 elements
    movl    $9,-9308(%ebp)          #   dimension 2: 9 elements
    movl    $5,-9304(%ebp)          #   dimension 3: 5 elements
    movl    $10,-9300(%ebp)         #   dimension 4: 10 elements
    movl    $2,-9296(%ebp)          #   dimension 5: 2 elements

    # function body
    leal    _str_1, %eax            #   0:     &()    t4 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    call    f1                      #   3:     call   t5 <- f1
    movb    %al, -21(%ebp)         
    leal    -9316(%ebp), %eax       #   4:     &()    t6 <- v8
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     param  3 <- t6
    pushl   %eax                   
    leal    -6592(%ebp), %eax       #   6:     &()    t7 <- v7
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     param  2 <- t7
    pushl   %eax                   
    leal    -1528(%ebp), %eax       #   8:     &()    t8 <- v6
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   9:     param  1 <- t8
    pushl   %eax                   
    leal    -544(%ebp), %eax        #  10:     &()    t9 <- v5
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  11:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  12:     call   t10 <- f0
    addl    $16, %esp              
    movb    %al, -13(%ebp)         

l_f2_exit:
    # epilogue
    addl    $9304, %esp             # remove locals
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
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]

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
    movl    $54870, %eax            #   0:     if     54870 < 11983 goto 1_if_true
    movl    $11983, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $99, %eax               #   3:     if     99 <= 97 goto 5
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_5               
    jmp     l_test_6                #   4:     goto   6
l_test_5:
    movl    $1, %eax                #   6:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_7                #   7:     goto   7
l_test_6:
    movl    $0, %eax                #   9:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_7:
    movzbl  -13(%ebp), %eax         #  11:     assign v0 <- t0
    movb    %al, v0                
l_test_10_while_cond:
    movl    $99, %eax               #  13:     if     99 # 98 goto 11_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_11_while_body   
    jmp     l_test_9                #  14:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  16:     goto   10_while_cond
l_test_9:
    jmp     l_test_exit            
    jmp     l_test_0                #  19:     goto   0
l_test_2_if_false:
l_test_0:
l_test_15_while_cond:
    call    dummyCHARfunc           #  23:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  24:     if     t1 = 100 goto 16_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_16_while_body   
    jmp     l_test_14               #  25:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  27:     goto   15_while_cond
l_test_14:
    leal    _str_2, %eax            #  29:     &()    t2 <- _str_2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  30:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #  31:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_exit            
l_test_21_while_cond:
    jmp     l_test_20               #  34:     goto   20
    jmp     l_test_20               #  35:     goto   20
    call    dummyINTfunc            #  36:     call   t3 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_test_21_while_cond    #  37:     goto   21_while_cond
l_test_20:

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
_str_2:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
