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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t6       <char> %ebp-22 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 4 of <array 5 of <array 10 of <array 7 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    call    dummyINTfunc            #   0:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    ReadInt                 #   1:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
l_f0_3_while_cond:
    call    dummyBOOLfunc           #   3:     call   t5 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   4:     if     t5 = 1 goto 4_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_4_while_body      
    jmp     l_f0_2                  #   5:     goto   2
l_f0_4_while_body:
    call    dummyCHARfunc           #   7:     call   t6 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movl    $99, %eax               #   8:     return 99
    jmp     l_f0_exit              
    jmp     l_f0_3_while_cond       #   9:     goto   3_while_cond
l_f0_2:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $t19      <char> %ebp-49 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 8 of <array 5 of <array 8 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -85(%ebp)   1  [ $v2       <bool> %ebp-85 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $78096, %eax            #   0:     if     78096 > 18794 goto 1_if_true
    movl    $18794, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   4:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   5:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $68012, %eax            #   6:     mul    t4 <- 68012, t3
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   7:     add    t5 <- t4, 96176
    movl    $96176, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   9:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  10:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  11:     mul    t7 <- t5, t6
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  12:     add    t8 <- t7, 28311
    movl    $28311, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  14:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  15:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  16:     mul    t10 <- t8, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  17:     add    t11 <- t10, 35154
    movl    $35154, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  19:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  20:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  21:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     add    t14 <- t13, 54184
    movl    $54184, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  23:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    8(%ebp), %eax           #  24:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  25:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  26:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  27:     add    t18 <- v0, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $1, %eax                #  28:     assign @t18 <- 1
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyCHARfunc           #  29:     call   t19 <- dummyCHARfunc
    movb    %al, -49(%ebp)         
l_f1_7_while_cond:
    jmp     l_f1_7_while_cond       #  31:     goto   7_while_cond
    movl    $97810, %eax            #  32:     assign v1 <- 97810
    movl    %eax, 12(%ebp)         
    jmp     l_f1_0                  #  33:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_12_if_false        #  36:     goto   12_if_false
    movl    $0, %eax                #  37:     if     0 = 1 goto 14_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_14_if_true        
    jmp     l_f1_15_if_false        #  38:     goto   15_if_false
l_f1_14_if_true:
    jmp     l_f1_13                 #  40:     goto   13
l_f1_15_if_false:
l_f1_13:
    movl    $86326, %eax            #  43:     assign v1 <- 86326
    movl    %eax, 12(%ebp)         
    movl    $98, %eax               #  44:     return 98
    jmp     l_f1_exit              
l_f1_20_while_cond:
    movl    $97, %eax               #  46:     if     97 > 98 goto 21_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_21_while_body     
    jmp     l_f1_19                 #  47:     goto   19
l_f1_21_while_body:
    jmp     l_f1_20_while_cond      #  49:     goto   20_while_cond
l_f1_19:
    movl    $98, %eax               #  51:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_26_if_false        #  52:     goto   26_if_false
    jmp     l_f1_24                 #  53:     goto   24
l_f1_26_if_false:
l_f1_24:
l_f1_28_while_cond:
    movl    $97, %eax               #  57:     if     97 < 98 goto 29_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_29_while_body     
    jmp     l_f1_27                 #  58:     goto   27
l_f1_29_while_body:
    jmp     l_f1_28_while_cond      #  60:     goto   28_while_cond
l_f1_27:
    jmp     l_f1_10                 #  62:     goto   10
l_f1_12_if_false:
l_f1_10:
    call    dummyINTfunc            #  65:     call   t20 <- dummyINTfunc
    movl    %eax, -56(%ebp)        

l_f1_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 7 of <array 4 of <array 5 of <array 10 of <array 7 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 2 of <array 4 of <array 5 of <array 4 of <int>>>>>>> %ebp+8 ]
    #   -9848(%ebp)  9824  [ $v1       <array 7 of <array 4 of <array 5 of <array 10 of <array 7 of <bool>>>>>> %ebp-9848 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $9836, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2459, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-9848(%ebp)          # local array 'v1': 5 dimensions
    movl    $7,-9844(%ebp)          #   dimension 1: 7 elements
    movl    $4,-9840(%ebp)          #   dimension 2: 4 elements
    movl    $5,-9836(%ebp)          #   dimension 3: 5 elements
    movl    $10,-9832(%ebp)         #   dimension 4: 10 elements
    movl    $7,-9828(%ebp)          #   dimension 5: 7 elements

    # function body
    movl    $97, %eax               #   0:     param  2 <- 97
    pushl   %eax                   
    leal    -9848(%ebp), %eax       #   1:     &()    t3 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  1 <- t3
    pushl   %eax                   
    movl    $98, %eax               #   3:     param  0 <- 98
    pushl   %eax                   
    call    f0                      #   4:     call   t4 <- f0
    addl    $12, %esp              
    movb    %al, -17(%ebp)         
    jmp     l_f2_2                  #   5:     goto   2
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $1, %eax                #   8:     assign t5 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_4                  #   9:     goto   4
l_f2_3:
    movl    $0, %eax                #  11:     assign t5 <- 0
    movb    %al, -18(%ebp)         
l_f2_4:
    movzbl  -18(%ebp), %eax         #  13:     return t5
    jmp     l_f2_exit              
    call    ReadInt                 #  14:     call   t6 <- ReadInt
    movl    %eax, -24(%ebp)        

l_f2_exit:
    # epilogue
    addl    $9836, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 4 of <array 8 of <array 5 of <array 8 of <array 5 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]

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
l_test_1_while_cond:
    movl    $85215, %eax            #   1:     if     85215 > 43279 goto 4_if_true
    movl    $43279, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_4_if_true       
    jmp     l_test_5_if_false       #   2:     goto   5_if_false
l_test_4_if_true:
    jmp     l_test_3                #   4:     goto   3
l_test_5_if_false:
l_test_3:
    jmp     l_test_7                #   7:     goto   7
l_test_7:
    movl    $98, %eax               #   9:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_exit            
l_test_13_while_cond:
    movl    $1, %eax                #  12:     if     1 = 1 goto 14_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_14_while_body   
    jmp     l_test_12               #  13:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  15:     goto   13_while_cond
l_test_12:
    jmp     l_test_1_while_cond     #  17:     goto   1_while_cond
l_test_17_while_cond:
    movl    $29404, %eax            #  19:     param  1 <- 29404
    pushl   %eax                   
    leal    v1, %eax                #  20:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  21:     param  0 <- t0
    pushl   %eax                   
    call    f1                      #  22:     call   t1 <- f1
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  23:     if     t1 # 98 goto 18_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_18_while_body   
    jmp     l_test_16               #  24:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  26:     goto   17_while_cond
l_test_16:
    movl    $100, %eax              #  28:     if     100 >= 100 goto 21_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_21_if_true      
    jmp     l_test_22_if_false      #  29:     goto   22_if_false
l_test_21_if_true:
l_test_25_while_cond:
    movl    $98921, %eax            #  32:     if     98921 > 79467 goto 26_while_body
    movl    $79467, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_26_while_body   
    jmp     l_test_24               #  33:     goto   24
l_test_26_while_body:
    jmp     l_test_25_while_cond    #  35:     goto   25_while_cond
l_test_24:
    jmp     l_test_30_if_false      #  37:     goto   30_if_false
    jmp     l_test_28               #  38:     goto   28
l_test_30_if_false:
l_test_28:
    movl    $98, %eax               #  41:     if     98 # 99 goto 32
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_32              
    jmp     l_test_33               #  42:     goto   33
l_test_32:
    movl    $1, %eax                #  44:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_34               #  45:     goto   34
l_test_33:
    movl    $0, %eax                #  47:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_34:
    movzbl  -18(%ebp), %eax         #  49:     assign v2 <- t2
    movb    %al, v2                
    movl    $31350, %eax            #  50:     assign v3 <- 31350
    movl    %eax, v3               
    jmp     l_test_20               #  51:     goto   20
l_test_22_if_false:
l_test_20:

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
    .align   4
v1:                                 # <array 4 of <array 8 of <array 5 of <array 8 of <array 5 of <bool>>>>>>
    .long    5
    .long    4
    .long    8
    .long    5
    .long    8
    .long    5
    .skip 6400
v2:                                 # <bool>
    .skip    1
    .align   4
v3:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
