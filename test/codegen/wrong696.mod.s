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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t8       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t9       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 7 of <array 5 of <array 7 of <array 4 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 6 of <array 1 of <array 8 of <array 3 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
l_f0_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t5 < 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    movl    $87198, %eax            #   5:     if     87198 >= 28088 goto 5
    movl    $28088, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_5                 
    jmp     l_f0_6                  #   6:     goto   6
l_f0_5:
    movl    $1, %eax                #   8:     assign t6 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_7                  #   9:     goto   7
l_f0_6:
    movl    $0, %eax                #  11:     assign t6 <- 0
    movb    %al, -14(%ebp)         
l_f0_7:
    movzbl  -14(%ebp), %eax         #  13:     return t6
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  14:     call   t7 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movl    $86971, %eax            #  15:     if     86971 >= 32277 goto 11
    movl    $32277, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_11                
    jmp     l_f0_12                 #  16:     goto   12
l_f0_11:
    movl    $1, %eax                #  18:     assign t8 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_13                 #  19:     goto   13
l_f0_12:
    movl    $0, %eax                #  21:     assign t8 <- 0
    movb    %al, -16(%ebp)         
l_f0_13:
    movzbl  -16(%ebp), %eax         #  23:     assign v3 <- t8
    movb    %al, 20(%ebp)          
    jmp     l_f0_1_while_cond       #  24:     goto   1_while_cond
l_f0_0:
    movl    $1, %eax                #  26:     if     1 = 0 goto 16
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_16                
    jmp     l_f0_17                 #  27:     goto   17
l_f0_16:
    movl    $1, %eax                #  29:     assign t9 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_18                 #  30:     goto   18
l_f0_17:
    movl    $0, %eax                #  32:     assign t9 <- 0
    movb    %al, -17(%ebp)         
l_f0_18:
    movzbl  -17(%ebp), %eax         #  34:     return t9
    jmp     l_f0_exit              
l_f0_22_while_cond:
    jmp     l_f0_21                 #  36:     goto   21
    movl    $74304, %eax            #  37:     if     74304 > 93737 goto 25_if_true
    movl    $93737, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_25_if_true        
    jmp     l_f0_26_if_false        #  38:     goto   26_if_false
l_f0_25_if_true:
    jmp     l_f0_24                 #  40:     goto   24
l_f0_26_if_false:
l_f0_24:
    movl    $99, %eax               #  43:     if     99 <= 97 goto 29_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_29_if_true        
    jmp     l_f0_30_if_false        #  44:     goto   30_if_false
l_f0_29_if_true:
    jmp     l_f0_28                 #  46:     goto   28
l_f0_30_if_false:
l_f0_28:
    jmp     l_f0_22_while_cond      #  49:     goto   22_while_cond
l_f0_21:

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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -14(%ebp)   1  [ $v2       <bool> %ebp-14 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t5
    jmp     l_f1_exit              
    movl    $0, %eax                #   2:     if     0 = 1 goto 2_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   3:     goto   3_if_false
l_f1_2_if_true:
    jmp     l_f1_8                  #   5:     goto   8
l_f1_8:
    movl    $98, %eax               #   7:     if     98 <= 97 goto 12_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_12_if_true        
    jmp     l_f1_13_if_false        #   8:     goto   13_if_false
l_f1_12_if_true:
    jmp     l_f1_11                 #  10:     goto   11
l_f1_13_if_false:
l_f1_11:
l_f1_16_while_cond:
    movl    $90571, %eax            #  14:     if     90571 < 12819 goto 17_while_body
    movl    $12819, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_17_while_body     
    jmp     l_f1_15                 #  15:     goto   15
l_f1_17_while_body:
    jmp     l_f1_16_while_cond      #  17:     goto   16_while_cond
l_f1_15:
    movl    $99, %eax               #  19:     assign v0 <- 99
    movb    %al, 8(%ebp)           
    movl    $0, %eax                #  20:     assign v2 <- 0
    movb    %al, -14(%ebp)         
    jmp     l_f1_5                  #  21:     goto   5
l_f1_5:
    jmp     l_f1_1                  #  23:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $98, %eax               #  26:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  27:     call   WriteChar
    addl    $4, %esp               

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t5       <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $t6       <ptr(4) to <array 6 of <array 6 of <array 1 of <array 8 of <array 3 of <int>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t7       <ptr(4) to <array 5 of <array 7 of <array 5 of <array 7 of <array 4 of <int>>>>>>> %ebp-48 ]
    #    -49(%ebp)   1  [ $t8       <bool> %ebp-49 ]
    #    -50(%ebp)   1  [ $t9       <char> %ebp-50 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 5 of <array 1 of <array 6 of <array 4 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 2 of <array 8 of <array 7 of <array 1 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 10 of <array 3 of <array 1 of <array 6 of <bool>>>>>>> %ebp+16 ]
    #   -19676(%ebp)  19624  [ $v3       <array 5 of <array 7 of <array 5 of <array 7 of <array 4 of <int>>>>>> %ebp-19676 ]
    #   -23156(%ebp)  3480  [ $v4       <array 6 of <array 6 of <array 1 of <array 8 of <array 3 of <int>>>>>> %ebp-23156 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $23144, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5786, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-19676(%ebp)         # local array 'v3': 5 dimensions
    movl    $5,-19672(%ebp)         #   dimension 1: 5 elements
    movl    $7,-19668(%ebp)         #   dimension 2: 7 elements
    movl    $5,-19664(%ebp)         #   dimension 3: 5 elements
    movl    $7,-19660(%ebp)         #   dimension 4: 7 elements
    movl    $4,-19656(%ebp)         #   dimension 5: 4 elements
    movl    $5,-23156(%ebp)         # local array 'v4': 5 dimensions
    movl    $6,-23152(%ebp)         #   dimension 1: 6 elements
    movl    $6,-23148(%ebp)         #   dimension 2: 6 elements
    movl    $1,-23144(%ebp)         #   dimension 3: 1 elements
    movl    $8,-23140(%ebp)         #   dimension 4: 8 elements
    movl    $3,-23136(%ebp)         #   dimension 5: 3 elements

    # function body
    movl    $11495, %eax            #   0:     if     11495 <= 38255 goto 1
    movl    $38255, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t5 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t5 <- 0
    movb    %al, -37(%ebp)         
l_f2_3:
    movzbl  -37(%ebp), %eax         #   8:     param  3 <- t5
    pushl   %eax                   
    movl    $57462, %eax            #   9:     param  2 <- 57462
    pushl   %eax                   
    leal    -23156(%ebp), %eax      #  10:     &()    t6 <- v4
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  11:     param  1 <- t6
    pushl   %eax                   
    leal    -19676(%ebp), %eax      #  12:     &()    t7 <- v3
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  13:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  14:     call   t8 <- f0
    addl    $16, %esp              
    movb    %al, -49(%ebp)         
    movl    $99, %eax               #  15:     param  1 <- 99
    pushl   %eax                   
    call    dummyCHARfunc           #  16:     call   t9 <- dummyCHARfunc
    movb    %al, -50(%ebp)         
    movzbl  -50(%ebp), %eax         #  17:     param  0 <- t9
    pushl   %eax                   
    call    f1                      #  18:     call   t10 <- f1
    addl    $8, %esp               
    movb    %al, -13(%ebp)         
    movl    $80604, %eax            #  19:     div    t11 <- 80604, 17232
    movl    $17232, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     mul    t12 <- t11, 56174
    movl    $56174, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     mul    t13 <- t12, 44474
    movl    $44474, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     sub    t14 <- t13, 67230
    movl    $67230, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  23:     add    t15 <- t14, 58442
    movl    $58442, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  24:     return t15
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $23144, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 1 of <array 10 of <array 3 of <array 1 of <array 6 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 6 of <array 2 of <array 8 of <array 7 of <array 1 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <array 5 of <array 1 of <array 6 of <array 4 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]

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
    leal    v2, %eax                #   0:     &()    t0 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  2 <- t0
    pushl   %eax                   
    leal    v1, %eax                #   2:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  1 <- t1
    pushl   %eax                   
    leal    v0, %eax                #   4:     &()    t2 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     param  0 <- t2
    pushl   %eax                   
    call    f2                      #   6:     call   t3 <- f2
    addl    $12, %esp              
    movl    %eax, -28(%ebp)        
l_test_2_while_cond:
    call    dummyCHARfunc           #   8:     call   t4 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #   9:     if     t4 < 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_3_while_body    
    jmp     l_test_1                #  10:     goto   1
l_test_3_while_body:
l_test_6_while_cond:
    movl    $24014, %eax            #  13:     if     24014 < 29159 goto 7_while_body
    movl    $29159, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_7_while_body    
    jmp     l_test_5                #  14:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  16:     goto   6_while_cond
l_test_5:
    jmp     l_test_2_while_cond     #  18:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v0:                                 # <array 7 of <array 5 of <array 1 of <array 6 of <array 4 of <int>>>>>>
    .long    5
    .long    7
    .long    5
    .long    1
    .long    6
    .long    4
    .skip 3360
v1:                                 # <array 6 of <array 2 of <array 8 of <array 7 of <array 1 of <bool>>>>>>
    .long    5
    .long    6
    .long    2
    .long    8
    .long    7
    .long    1
    .skip  672
v2:                                 # <array 1 of <array 10 of <array 3 of <array 1 of <array 6 of <bool>>>>>>
    .long    5
    .long    1
    .long   10
    .long    3
    .long    1
    .long    6
    .skip  180








    # end of global data section
    #-----------------------------------------

    .end
##################################################
