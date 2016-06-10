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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 35 of <array 94 of <array 28 of <array 34 of <array 54 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 14 of <array 50 of <array 91 of <array 27 of <array 42 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    jmp     l_f0_1_if_true          #   0:     goto   1_if_true
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $52279, %eax            #   6:     sub    t5 <- 52279, 81763
    movl    $81763, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     sub    t6 <- t5, 6183
    movl    $6183, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     add    t7 <- t6, 27809
    movl    $27809, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     if     t7 <= 24013 goto 5
    movl    $24013, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_5                 
    jmp     l_f0_6                  #  10:     goto   6
l_f0_5:
    movl    $1, %eax                #  12:     assign t8 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_7                  #  13:     goto   7
l_f0_6:
    movl    $0, %eax                #  15:     assign t8 <- 0
    movb    %al, -25(%ebp)         
l_f0_7:
    movzbl  -25(%ebp), %eax         #  17:     assign v2 <- t8
    movb    %al, 16(%ebp)          
    movl    $99, %eax               #  18:     return 99
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    call    dummyCHARfunc           #   1:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v1 <- t5
    movb    %al, 12(%ebp)          
    movl    $50134, %eax            #   3:     mul    t6 <- 50134, 80076
    movl    $80076, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t7 <- t6, 41194
    movl    $41194, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     return t7
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t7       <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $t8       <ptr(4) to <array 14 of <array 50 of <array 91 of <array 27 of <array 42 of <int>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <ptr(4) to <array 35 of <array 94 of <array 28 of <array 34 of <array 54 of <int>>>>>>> %ebp-48 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 43 of <array 19 of <array 86 of <array 15 of <array 25 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 100 of <array 33 of <array 30 of <array 54 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #   -676529352(%ebp)  676529304  [ $v4       <array 35 of <array 94 of <array 28 of <array 34 of <array 54 of <int>>>>>> %ebp-676529352 ]
    #   -965472576(%ebp)  288943224  [ $v5       <array 14 of <array 50 of <array 91 of <array 27 of <array 42 of <int>>>>>> %ebp-965472576 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $965472564, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $241368141, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-676529352(%ebp)     # local array 'v4': 5 dimensions
    movl    $35,-676529348(%ebp)    #   dimension 1: 35 elements
    movl    $94,-676529344(%ebp)    #   dimension 2: 94 elements
    movl    $28,-676529340(%ebp)    #   dimension 3: 28 elements
    movl    $34,-676529336(%ebp)    #   dimension 4: 34 elements
    movl    $54,-676529332(%ebp)    #   dimension 5: 54 elements
    movl    $5,-965472576(%ebp)     # local array 'v5': 5 dimensions
    movl    $14,-965472572(%ebp)    #   dimension 1: 14 elements
    movl    $50,-965472568(%ebp)    #   dimension 2: 50 elements
    movl    $91,-965472564(%ebp)    #   dimension 3: 91 elements
    movl    $27,-965472560(%ebp)    #   dimension 4: 27 elements
    movl    $42,-965472556(%ebp)    #   dimension 5: 42 elements

    # function body
    movl    $32545, %eax            #   0:     sub    t5 <- 32545, 62851
    movl    $62851, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   1:     add    t6 <- t5, 17684
    movl    $17684, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   2:     return t6
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $99, %eax               #   4:     if     99 > 98 goto 5
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_5                 
    jmp     l_f2_6                  #   5:     goto   6
l_f2_5:
    movl    $1, %eax                #   7:     assign t7 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f2_7                  #   8:     goto   7
l_f2_6:
    movl    $0, %eax                #  10:     assign t7 <- 0
    movb    %al, -37(%ebp)         
l_f2_7:
    movzbl  -37(%ebp), %eax         #  12:     param  2 <- t7
    pushl   %eax                   
    leal    -965472576(%ebp), %eax  #  13:     &()    t8 <- v5
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  14:     param  1 <- t8
    pushl   %eax                   
    leal    -676529352(%ebp), %eax  #  15:     &()    t9 <- v4
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  16:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #  17:     call   t10 <- f0
    addl    $12, %esp              
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #  18:     if     97 > t10 goto 3_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_3_while_body      
    jmp     l_f2_1                  #  19:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #  21:     goto   2_while_cond
l_f2_1:
    movl    $26648, %eax            #  23:     sub    t11 <- 26648, 69826
    movl    $69826, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     add    t12 <- t11, 61853
    movl    $61853, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     add    t13 <- t12, 82805
    movl    $82805, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     return t13
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $965472564, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <char> %ebp-19 ]
    #    -20(%ebp)   1  [ $t4       <bool> %ebp-20 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    call    dummyBOOLfunc           #   2:     call   t2 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    movl    $9585, %eax             #   3:     if     9585 = 46588 goto 4_if_true
    movl    $46588, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_4_if_true       
    jmp     l_test_5_if_false       #   4:     goto   5_if_false
l_test_4_if_true:
l_test_8_while_cond:
    movl    $100, %eax              #   7:     if     100 = 97 goto 9_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_9_while_body    
    jmp     l_test_7                #   8:     goto   7
l_test_9_while_body:
    jmp     l_test_8_while_cond     #  10:     goto   8_while_cond
l_test_7:
    jmp     l_test_3                #  12:     goto   3
l_test_5_if_false:
l_test_3:
    movl    $99, %eax               #  15:     if     99 <= 99 goto 12_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_12_if_true      
    jmp     l_test_13_if_false      #  16:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_exit            
    call    dummyCHARfunc           #  19:     call   t3 <- dummyCHARfunc
    movb    %al, -19(%ebp)         
    movl    $46019, %eax            #  20:     assign v0 <- 46019
    movl    %eax, v0               
    jmp     l_test_20_if_false      #  21:     goto   20_if_false
    jmp     l_test_18               #  22:     goto   18
l_test_20_if_false:
l_test_18:
    movl    $98, %eax               #  25:     assign v1 <- 98
    movb    %al, v1                
    call    dummyBOOLfunc           #  26:     call   t4 <- dummyBOOLfunc
    movb    %al, -20(%ebp)         
    jmp     l_test_11               #  27:     goto   11
l_test_13_if_false:
l_test_11:

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
