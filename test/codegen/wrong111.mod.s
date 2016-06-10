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
    #    -16(%ebp)   4  [ $t11      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t13      <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 1 of <array 10 of <array 2 of <array 3 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 3 of <array 5 of <array 1 of <array 3 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

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
    jmp     l_f0_exit              
    movl    $61860, %eax            #   1:     mul    t11 <- 61860, 20455
    movl    $20455, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t12 <- t11, 58469
    movl    $58469, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  0 <- t12
    pushl   %eax                   
    call    WriteInt                #   4:     call   WriteInt
    addl    $4, %esp               
    call    dummyBOOLfunc           #   5:     call   t13 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         

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
    #    -16(%ebp)   4  [ $t11      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t14      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t15      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t16      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t17      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t18      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t19      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t20      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t21      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t22      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t23      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t24      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t25      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t26      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t27      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t28      <int> %ebp-84 ]
    #    -85(%ebp)   1  [ $t29      <bool> %ebp-85 ]
    #    -86(%ebp)   1  [ $t30      <char> %ebp-86 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 10 of <array 7 of <array 4 of <array 2 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 1 of <array 10 of <array 7 of <array 5 of <char>>>>>>> %ebp+12 ]
    #    -92(%ebp)   4  [ $v3       <int> %ebp-92 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $10908, %eax            #   0:     add    t11 <- 10908, 52345
    movl    $52345, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t12 <- t11, 49486
    movl    $49486, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   3:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   4:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $15501, %eax            #   5:     mul    t14 <- 15501, t13
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     add    t15 <- t14, 35150
    movl    $35150, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   8:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   9:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  10:     mul    t17 <- t15, t16
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  11:     add    t18 <- t17, 7278
    movl    $7278, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  14:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  15:     mul    t20 <- t18, t19
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  16:     add    t21 <- t20, 243
    movl    $243, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  20:     mul    t23 <- t21, t22
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  21:     add    t24 <- t23, 76064
    movl    $76064, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  22:     mul    t25 <- t24, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  23:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  24:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  25:     add    t27 <- t25, t26
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    8(%ebp), %eax           #  26:     add    t28 <- v1, t27
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -20(%ebp), %eax         #  27:     assign @t28 <- t12
    movl    -84(%ebp), %edi        
    movl    %eax, (%edi)           
    movl    $100, %eax              #  28:     if     100 # 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #  29:     goto   3_if_false
l_f1_2_if_true:
    call    dummyBOOLfunc           #  31:     call   t29 <- dummyBOOLfunc
    movb    %al, -85(%ebp)         
    jmp     l_f1_1                  #  32:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyCHARfunc           #  35:     call   t30 <- dummyCHARfunc
    movb    %al, -86(%ebp)         
    movzbl  -86(%ebp), %eax         #  36:     return t30
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t12      <ptr(4) to <array 9 of <array 1 of <array 10 of <array 7 of <array 5 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <ptr(4) to <array 8 of <array 10 of <array 7 of <array 4 of <array 2 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t14      <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t15      <ptr(4) to <array 9 of <array 1 of <array 10 of <array 7 of <array 5 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t16      <ptr(4) to <array 8 of <array 10 of <array 7 of <array 4 of <array 2 of <int>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t17      <char> %ebp-37 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 9 of <array 1 of <array 6 of <array 4 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 6 of <array 6 of <array 2 of <array 3 of <array 2 of <bool>>>>>>> %ebp+20 ]
    #   -17984(%ebp)  17944  [ $v5       <array 8 of <array 10 of <array 7 of <array 4 of <array 2 of <int>>>>>> %ebp-17984 ]
    #   -21160(%ebp)  3174  [ $v6       <array 9 of <array 1 of <array 10 of <array 7 of <array 5 of <char>>>>>> %ebp-21160 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $21148, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5287, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-17984(%ebp)         # local array 'v5': 5 dimensions
    movl    $8,-17980(%ebp)         #   dimension 1: 8 elements
    movl    $10,-17976(%ebp)        #   dimension 2: 10 elements
    movl    $7,-17972(%ebp)         #   dimension 3: 7 elements
    movl    $4,-17968(%ebp)         #   dimension 4: 4 elements
    movl    $2,-17964(%ebp)         #   dimension 5: 2 elements
    movl    $5,-21160(%ebp)         # local array 'v6': 5 dimensions
    movl    $9,-21156(%ebp)         #   dimension 1: 9 elements
    movl    $1,-21152(%ebp)         #   dimension 2: 1 elements
    movl    $10,-21148(%ebp)        #   dimension 3: 10 elements
    movl    $7,-21144(%ebp)         #   dimension 4: 7 elements
    movl    $5,-21140(%ebp)         #   dimension 5: 5 elements

    # function body
    call    dummyBOOLfunc           #   0:     call   t11 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    leal    -21160(%ebp), %eax      #   1:     &()    t12 <- v6
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  1 <- t12
    pushl   %eax                   
    leal    -17984(%ebp), %eax      #   3:     &()    t13 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     param  0 <- t13
    pushl   %eax                   
    call    f1                      #   5:     call   t14 <- f1
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    leal    -21160(%ebp), %eax      #   6:     &()    t15 <- v6
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     param  1 <- t15
    pushl   %eax                   
    leal    -17984(%ebp), %eax      #   8:     &()    t16 <- v5
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   9:     param  0 <- t16
    pushl   %eax                   
    call    f1                      #  10:     call   t17 <- f1
    addl    $8, %esp               
    movb    %al, -37(%ebp)         
    jmp     l_f2_1                  #  11:     goto   1
l_f2_1:
    movl    $97, %eax               #  13:     return 97
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $21148, %esp            # remove locals
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
    #    -15(%ebp)   1  [ $t10      <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <ptr(4) to <array 6 of <array 6 of <array 2 of <array 3 of <array 2 of <bool>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <ptr(4) to <array 8 of <array 9 of <array 1 of <array 6 of <array 4 of <bool>>>>>>> %ebp-48 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    movl    $58905, %eax            #   3:     assign v0 <- 58905
    movl    %eax, v0               
    call    dummyCHARfunc           #   4:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $6499, %eax             #   5:     sub    t2 <- 6499, 19136
    movl    $19136, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     add    t3 <- t2, 27061
    movl    $27061, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $29819, %eax            #   7:     if     29819 < t3 goto 4_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_4_if_true       
    jmp     l_test_5_if_false       #   8:     goto   5_if_false
l_test_4_if_true:
    movl    $99, %eax               #  10:     if     99 < 98 goto 8_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_8_if_true       
    jmp     l_test_9_if_false       #  11:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_7                #  13:     goto   7
l_test_9_if_false:
l_test_7:
    call    ReadInt                 #  16:     call   t4 <- ReadInt
    movl    %eax, -28(%ebp)        
    jmp     l_test_3                #  17:     goto   3
l_test_5_if_false:
l_test_3:
    leal    v3, %eax                #  20:     &()    t5 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     param  3 <- t5
    pushl   %eax                   
    movl    $12532, %eax            #  22:     param  2 <- 12532
    pushl   %eax                   
    movl    $778, %eax              #  23:     div    t6 <- 778, 21010
    movl    $21010, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  24:     div    t7 <- t6, 37476
    movl    $37476, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  25:     div    t8 <- t7, 78480
    movl    $78480, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  26:     param  1 <- t8
    pushl   %eax                   
    leal    v2, %eax                #  27:     &()    t9 <- v2
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  28:     param  0 <- t9
    pushl   %eax                   
    call    f2                      #  29:     call   t10 <- f2
    addl    $16, %esp              
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  30:     assign v1 <- t10
    movb    %al, v1                

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

    # scope: test
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 8 of <array 9 of <array 1 of <array 6 of <array 4 of <bool>>>>>>
    .long    5
    .long    8
    .long    9
    .long    1
    .long    6
    .long    4
    .skip 1728
v3:                                 # <array 6 of <array 6 of <array 2 of <array 3 of <array 2 of <bool>>>>>>
    .long    5
    .long    6
    .long    6
    .long    2
    .long    3
    .long    2
    .skip  432








    # end of global data section
    #-----------------------------------------

    .end
##################################################
