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
    #    -16(%ebp)   4  [ $t12      <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 2 of <array 7 of <array 7 of <array 10 of <int>>>>>>> %ebp+8 ]
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
    movl    $98, %eax               #   0:     return 98
    jmp     l_f0_exit              
    leal    _str_1, %eax            #   1:     &()    t12 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  0 <- t12
    pushl   %eax                   
    call    WriteStr                #   3:     call   WriteStr
    addl    $4, %esp               
    movl    $0, %eax                #   4:     assign v2 <- 0
    movb    %al, -17(%ebp)         

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
    #    -13(%ebp)   1  [ $t12      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t13      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t14      <ptr(4) to <array 5 of <array 2 of <array 7 of <array 7 of <array 10 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t15      <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 3 of <array 4 of <array 6 of <array 1 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]
    #   -19648(%ebp)  19624  [ $v5       <array 5 of <array 2 of <array 7 of <array 7 of <array 10 of <int>>>>>> %ebp-19648 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $19636, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $4909, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-19648(%ebp)         # local array 'v5': 5 dimensions
    movl    $5,-19644(%ebp)         #   dimension 1: 5 elements
    movl    $2,-19640(%ebp)         #   dimension 2: 2 elements
    movl    $7,-19636(%ebp)         #   dimension 3: 7 elements
    movl    $7,-19632(%ebp)         #   dimension 4: 7 elements
    movl    $10,-19628(%ebp)        #   dimension 5: 10 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t12 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $1, %eax                #   1:     assign t13 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_4                  #   2:     goto   4
    movl    $0, %eax                #   3:     assign t13 <- 0
    movb    %al, -14(%ebp)         
l_f1_4:
    movzbl  -14(%ebp), %eax         #   5:     assign v4 <- t13
    movb    %al, 20(%ebp)          
    movl    $0, %eax                #   6:     if     0 # 0 goto 8_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_8_if_true         
    jmp     l_f1_9_if_false         #   7:     goto   9_if_false
l_f1_8_if_true:
    movl    $100, %eax              #   9:     assign v3 <- 100
    movb    %al, 16(%ebp)          
l_f1_13_while_cond:
    movl    $80124, %eax            #  11:     if     80124 <= 90002 goto 14_while_body
    movl    $90002, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_14_while_body     
    jmp     l_f1_12                 #  12:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  14:     goto   13_while_cond
l_f1_12:
    leal    -19648(%ebp), %eax      #  16:     &()    t14 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     param  0 <- t14
    pushl   %eax                   
    call    f0                      #  18:     call   t15 <- f0
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
l_f1_18_while_cond:
    jmp     l_f1_17                 #  20:     goto   17
    jmp     l_f1_18_while_cond      #  21:     goto   18_while_cond
l_f1_17:
l_f1_21_while_cond:
    jmp     l_f1_20                 #  24:     goto   20
    jmp     l_f1_21_while_cond      #  25:     goto   21_while_cond
l_f1_20:
    jmp     l_f1_7                  #  27:     goto   7
l_f1_9_if_false:
l_f1_7:

l_f1_exit:
    # epilogue
    addl    $19636, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t12      <ptr(4) to <array 2 of <array 3 of <array 4 of <array 6 of <array 1 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t14      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t15      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t16      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t17      <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t18      <char> %ebp-37 ]
    #    -44(%ebp)   4  [ $t19      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t20      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t21      <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t22      <bool> %ebp-53 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #   -224(%ebp)  168  [ $v4       <array 2 of <array 3 of <array 4 of <array 6 of <array 1 of <char>>>>>> %ebp-224 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $212, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $53, %ecx              
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-224(%ebp)           # local array 'v4': 5 dimensions
    movl    $2,-220(%ebp)           #   dimension 1: 2 elements
    movl    $3,-216(%ebp)           #   dimension 2: 3 elements
    movl    $4,-212(%ebp)           #   dimension 3: 4 elements
    movl    $6,-208(%ebp)           #   dimension 4: 6 elements
    movl    $1,-204(%ebp)           #   dimension 5: 1 elements

    # function body
    movl    $97, %eax               #   0:     assign v3 <- 97
    movb    %al, 16(%ebp)          
    movl    $0, %eax                #   1:     param  3 <- 0
    pushl   %eax                   
    movl    $100, %eax              #   2:     param  2 <- 100
    pushl   %eax                   
    leal    -224(%ebp), %eax        #   3:     &()    t12 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  1 <- t12
    pushl   %eax                   
    movl    $45256, %eax            #   5:     mul    t13 <- 45256, 32086
    movl    $32086, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     div    t14 <- t13, 68656
    movl    $68656, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     sub    t15 <- t14, 64274
    movl    $64274, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     sub    t16 <- t15, 80737
    movl    $80737, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   9:     add    t17 <- t16, 72931
    movl    $72931, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  10:     param  0 <- t17
    pushl   %eax                   
    call    f1                      #  11:     call   t18 <- f1
    addl    $16, %esp              
    movb    %al, -37(%ebp)         
    call    ReadInt                 #  12:     call   t19 <- ReadInt
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  13:     sub    t20 <- t19, 82841
    movl    $82841, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  14:     add    t21 <- t20, 67870
    movl    $67870, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $83664, %eax            #  15:     if     83664 < t21 goto 3
    movl    -52(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_3                 
    jmp     l_f2_4                  #  16:     goto   4
l_f2_3:
    movl    $1, %eax                #  18:     assign t22 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f2_5                  #  19:     goto   5
l_f2_4:
    movl    $0, %eax                #  21:     assign t22 <- 0
    movb    %al, -53(%ebp)         
l_f2_5:
    movzbl  -53(%ebp), %eax         #  23:     return t22
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $212, %esp              # remove locals
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
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t11      <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t2       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t3       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t4       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t5       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t6       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t7       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t8       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t9       <ptr(4) to <array 2 of <array 3 of <array 4 of <array 6 of <array 1 of <char>>>>>>> %ebp-60 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $48, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $12, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
    movl    $8762, %eax             #   3:     if     8762 < 93442 goto 5_if_true
    movl    $93442, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_5_if_true       
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   6:     goto   4
l_test_6_if_false:
l_test_4:
l_test_9_while_cond:
    jmp     l_test_9_while_cond     #  10:     goto   9_while_cond
    jmp     l_test_13_if_false      #  11:     goto   13_if_false
    jmp     l_test_11               #  12:     goto   11
l_test_13_if_false:
l_test_11:
    jmp     l_test_2_while_cond     #  15:     goto   2_while_cond
l_test_1:
    movl    $32381, %eax            #  17:     add    t1 <- 32381, 37148
    movl    $37148, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     add    t2 <- t1, 63708
    movl    $63708, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $70360, %eax            #  19:     div    t3 <- 70360, 25061
    movl    $25061, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  20:     add    t4 <- t2, t3
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  21:     assign v0 <- t4
    movl    %eax, v0               
    call    dummyINTfunc            #  22:     call   t5 <- dummyINTfunc
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  23:     mul    t6 <- t5, 29427
    movl    $29427, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  24:     div    t7 <- t6, 9334
    movl    $9334, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  25:     assign v0 <- t7
    movl    %eax, v0               
    movl    $98390, %eax            #  26:     mul    t8 <- 98390, 5750
    movl    $5750, %ebx            
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  27:     assign v0 <- t8
    movl    %eax, v0               
    movl    $1, %eax                #  28:     param  3 <- 1
    pushl   %eax                   
    movl    $97, %eax               #  29:     param  2 <- 97
    pushl   %eax                   
    leal    v1, %eax                #  30:     &()    t9 <- v1
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  31:     param  1 <- t9
    pushl   %eax                   
    movl    $26669, %eax            #  32:     div    t10 <- 26669, 61947
    movl    $61947, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  33:     param  0 <- t10
    pushl   %eax                   
    call    f1                      #  34:     call   t11 <- f1
    addl    $16, %esp              
    movb    %al, -25(%ebp)         

l_test_exit:
    # epilogue
    addl    $48, %esp               # remove locals
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
v0:                                 # <int>
    .skip    4
v1:                                 # <array 2 of <array 3 of <array 4 of <array 6 of <array 1 of <char>>>>>>
    .long    5
    .long    2
    .long    3
    .long    4
    .long    6
    .long    1
    .skip  144








    # end of global data section
    #-----------------------------------------

    .end
##################################################
