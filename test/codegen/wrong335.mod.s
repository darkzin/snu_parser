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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]

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
    movl    $50220, %eax            #   0:     sub    t10 <- 50220, 14083
    movl    $14083, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     if     t10 >= 99529 goto 1_if_true
    movl    $99529, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
    movl    $5885, %eax             #   4:     assign v1 <- 5885
    movl    %eax, -28(%ebp)        
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    ReadInt                 #   8:     call   t11 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #   9:     call   t12 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  10:     return t12
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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 6 of <array 1 of <array 9 of <array 4 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 9 of <array 1 of <array 9 of <array 7 of <array 2 of <int>>>>>>> %ebp+20 ]

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
    call    dummyINTfunc            #   0:     call   t10 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    ReadInt                 #   1:     call   t11 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $99, %eax               #   2:     if     99 <= 98 goto 3_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   3:     goto   4_if_false
l_f1_3_if_true:
    jmp     l_f1_6                  #   5:     goto   6
l_f1_6:
l_f1_10_while_cond:
    movl    $98, %eax               #   8:     if     98 <= 99 goto 11_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_11_while_body     
    jmp     l_f1_9                  #   9:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  11:     goto   10_while_cond
l_f1_9:
    call    WriteLn                 #  13:     call   WriteLn
    movl    $100, %eax              #  14:     if     100 < 98 goto 15_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  15:     goto   16_if_false
l_f1_15_if_true:
    jmp     l_f1_14                 #  17:     goto   14
l_f1_16_if_false:
l_f1_14:
    movl    $98, %eax               #  20:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_2                  #  21:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 9 of <array 1 of <array 9 of <array 7 of <array 2 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 6 of <array 6 of <array 1 of <array 9 of <array 4 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t14      <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t15      <char> %ebp-27 ]
    #    -28(%ebp)   1  [ $t16      <bool> %ebp-28 ]
    #    -32(%ebp)   4  [ $t17      <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 5 of <array 9 of <array 2 of <array 2 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 9 of <array 7 of <array 6 of <array 1 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 6 of <array 4 of <array 7 of <array 1 of <array 1 of <bool>>>>>>> %ebp+20 ]
    #   -5240(%ebp)  5208  [ $v5       <array 6 of <array 6 of <array 1 of <array 9 of <array 4 of <int>>>>>> %ebp-5240 ]
    #   -9800(%ebp)  4560  [ $v6       <array 9 of <array 1 of <array 9 of <array 7 of <array 2 of <int>>>>>> %ebp-9800 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $9788, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2447, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-5240(%ebp)          # local array 'v5': 5 dimensions
    movl    $6,-5236(%ebp)          #   dimension 1: 6 elements
    movl    $6,-5232(%ebp)          #   dimension 2: 6 elements
    movl    $1,-5228(%ebp)          #   dimension 3: 1 elements
    movl    $9,-5224(%ebp)          #   dimension 4: 9 elements
    movl    $4,-5220(%ebp)          #   dimension 5: 4 elements
    movl    $5,-9800(%ebp)          # local array 'v6': 5 dimensions
    movl    $9,-9796(%ebp)          #   dimension 1: 9 elements
    movl    $1,-9792(%ebp)          #   dimension 2: 1 elements
    movl    $9,-9788(%ebp)          #   dimension 3: 9 elements
    movl    $7,-9784(%ebp)          #   dimension 4: 7 elements
    movl    $2,-9780(%ebp)          #   dimension 5: 2 elements

    # function body
    jmp     l_f2_1                  #   0:     goto   1
    movl    $72893, %eax            #   1:     if     72893 # 13287 goto 1
    movl    $13287, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   9:     return t10
    jmp     l_f2_exit              
    leal    -9800(%ebp), %eax       #  10:     &()    t11 <- v6
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     param  3 <- t11
    pushl   %eax                   
    leal    -5240(%ebp), %eax       #  12:     &()    t12 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     param  2 <- t12
    pushl   %eax                   
    movl    $97, %eax               #  14:     if     97 # 98 goto 11
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_11                
    jmp     l_f2_12                 #  15:     goto   12
l_f2_11:
    movl    $1, %eax                #  17:     assign t13 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_13                 #  18:     goto   13
l_f2_12:
    movl    $0, %eax                #  20:     assign t13 <- 0
    movb    %al, -25(%ebp)         
l_f2_13:
    movzbl  -25(%ebp), %eax         #  22:     param  1 <- t13
    pushl   %eax                   
    jmp     l_f2_16                 #  23:     goto   16
    movl    $1, %eax                #  24:     assign t14 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f2_17                 #  25:     goto   17
l_f2_16:
    movl    $0, %eax                #  27:     assign t14 <- 0
    movb    %al, -26(%ebp)         
l_f2_17:
    movzbl  -26(%ebp), %eax         #  29:     param  0 <- t14
    pushl   %eax                   
    call    f1                      #  30:     call   t15 <- f1
    addl    $16, %esp              
    movb    %al, -27(%ebp)         
    movzbl  -27(%ebp), %eax         #  31:     if     t15 <= 99 goto 7
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_7                 
    jmp     l_f2_8                  #  32:     goto   8
l_f2_7:
    movl    $1, %eax                #  34:     assign t16 <- 1
    movb    %al, -28(%ebp)         
    jmp     l_f2_9                  #  35:     goto   9
l_f2_8:
    movl    $0, %eax                #  37:     assign t16 <- 0
    movb    %al, -28(%ebp)         
l_f2_9:
    movzbl  -28(%ebp), %eax         #  39:     return t16
    jmp     l_f2_exit              
    call    dummyINTfunc            #  40:     call   t17 <- dummyINTfunc
    movl    %eax, -32(%ebp)        

l_f2_exit:
    # epilogue
    addl    $9788, %esp             # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 6 of <array 4 of <array 7 of <array 1 of <array 1 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <ptr(4) to <array 5 of <array 9 of <array 7 of <array 6 of <array 1 of <bool>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <ptr(4) to <array 1 of <array 5 of <array 9 of <array 2 of <array 2 of <int>>>>>>> %ebp-44 ]
    #    -45(%ebp)   1  [ $t8       <bool> %ebp-45 ]
    #    -46(%ebp)   1  [ $t9       <bool> %ebp-46 ]

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
    movl    $98, %eax               #   0:     if     98 > 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
l_test_6_while_cond:
    movl    $19864, %eax            #  10:     if     19864 > 62430 goto 9_if_true
    movl    $62430, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_9_if_true       
    jmp     l_test_10_if_false      #  11:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #  13:     goto   8
l_test_10_if_false:
l_test_8:
    call    ReadInt                 #  16:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_6_while_cond     #  17:     goto   6_while_cond
    movl    $100, %eax              #  18:     if     100 < 100 goto 14_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_14_if_true      
    jmp     l_test_15_if_false      #  19:     goto   15_if_false
l_test_14_if_true:
l_test_18_while_cond:
    movl    $55985, %eax            #  22:     if     55985 >= 55123 goto 19_while_body
    movl    $55123, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_19_while_body   
    jmp     l_test_17               #  23:     goto   17
l_test_19_while_body:
    jmp     l_test_18_while_cond    #  25:     goto   18_while_cond
l_test_17:
    call    dummyINTfunc            #  27:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_test_22               #  28:     goto   22
l_test_22:
l_test_26_while_cond:
    jmp     l_test_25               #  31:     goto   25
    jmp     l_test_26_while_cond    #  32:     goto   26_while_cond
l_test_25:
    jmp     l_test_30_if_false      #  34:     goto   30_if_false
    jmp     l_test_28               #  35:     goto   28
l_test_30_if_false:
l_test_28:
    movl    $0, %eax                #  38:     assign v0 <- 0
    movb    %al, v0                
    call    ReadInt                 #  39:     call   t3 <- ReadInt
    movl    %eax, -28(%ebp)        
l_test_34_while_cond:
    movl    $36530, %eax            #  41:     if     36530 > 68797 goto 35_while_body
    movl    $68797, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_35_while_body   
    jmp     l_test_33               #  42:     goto   33
l_test_35_while_body:
    jmp     l_test_34_while_cond    #  44:     goto   34_while_cond
l_test_33:
    call    dummyINTfunc            #  46:     call   t4 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    movl    $98, %eax               #  47:     assign v1 <- 98
    movb    %al, v1                
    jmp     l_test_13               #  48:     goto   13
l_test_15_if_false:
l_test_13:
l_test_40_while_cond:
    leal    v4, %eax                #  52:     &()    t5 <- v4
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  53:     param  3 <- t5
    pushl   %eax                   
    leal    v3, %eax                #  54:     &()    t6 <- v3
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  55:     param  2 <- t6
    pushl   %eax                   
    leal    v2, %eax                #  56:     &()    t7 <- v2
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  57:     param  1 <- t7
    pushl   %eax                   
    movl    $1, %eax                #  58:     assign t8 <- 1
    movb    %al, -45(%ebp)         
    jmp     l_test_44               #  59:     goto   44
    movl    $0, %eax                #  60:     assign t8 <- 0
    movb    %al, -45(%ebp)         
l_test_44:
    movzbl  -45(%ebp), %eax         #  62:     param  0 <- t8
    pushl   %eax                   
    call    f2                      #  63:     call   t9 <- f2
    addl    $16, %esp              
    movb    %al, -46(%ebp)         
    movzbl  -46(%ebp), %eax         #  64:     if     t9 = 1 goto 41_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_41_while_body   
    jmp     l_test_39               #  65:     goto   39
l_test_41_while_body:
    jmp     l_test_46               #  67:     goto   46
l_test_46:
    jmp     l_test_40_while_cond    #  69:     goto   40_while_cond
l_test_39:

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 1 of <array 5 of <array 9 of <array 2 of <array 2 of <int>>>>>>
    .long    5
    .long    1
    .long    5
    .long    9
    .long    2
    .long    2
    .skip  720
v3:                                 # <array 5 of <array 9 of <array 7 of <array 6 of <array 1 of <bool>>>>>>
    .long    5
    .long    5
    .long    9
    .long    7
    .long    6
    .long    1
    .skip 1890
    .align   4
v4:                                 # <array 6 of <array 4 of <array 7 of <array 1 of <array 1 of <bool>>>>>>
    .long    5
    .long    6
    .long    4
    .long    7
    .long    1
    .long    1
    .skip  168








    # end of global data section
    #-----------------------------------------

    .end
##################################################
