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
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 63 of <array 81 of <array 85 of <array 2 of <array 3 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 58 of <array 36 of <array 96 of <array 55 of <array 39 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <char> %ebp+20 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    movl    $72449, %eax            #   1:     if     72449 <= 93162 goto 4
    movl    $93162, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_4                 
    jmp     l_f0_5                  #   2:     goto   5
l_f0_4:
    movl    $1, %eax                #   4:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   5:     goto   6
l_f0_5:
    movl    $0, %eax                #   7:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    movzbl  -13(%ebp), %eax         #   9:     assign v4 <- t6
    movb    %al, 16(%ebp)          
    movl    $99, %eax               #  10:     return 99
    jmp     l_f0_exit              
    jmp     l_f0_0                  #  11:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_10_while_cond:
    jmp     l_f0_11_while_body      #  15:     goto   11_while_body
    jmp     l_f0_9                  #  16:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  18:     goto   10_while_cond
l_f0_9:
    movl    $97, %eax               #  20:     assign v5 <- 97
    movb    %al, 20(%ebp)          

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
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t26      <bool> %ebp-77 ]
    #    -84(%ebp)   4  [ $t27      <ptr(4) to <array 58 of <array 36 of <array 96 of <array 55 of <array 39 of <bool>>>>>>> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <ptr(4) to <array 63 of <array 81 of <array 85 of <array 2 of <array 3 of <int>>>>>>> %ebp-88 ]
    #    -89(%ebp)   1  [ $t29      <char> %ebp-89 ]
    #    -96(%ebp)   4  [ $t6       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t7       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t8       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t9       <int> %ebp-108 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 60 of <array 51 of <array 74 of <array 27 of <array 75 of <bool>>>>>>> %ebp+20 ]
    #   -109(%ebp)   1  [ $v6       <char> %ebp-109 ]
    #   -10410256(%ebp)  10410144  [ $v7       <array 63 of <array 81 of <array 85 of <array 2 of <array 3 of <int>>>>>> %ebp-10410256 ]
    #   -440371240(%ebp)  429960984  [ $v8       <array 58 of <array 36 of <array 96 of <array 55 of <array 39 of <bool>>>>>> %ebp-440371240 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $440371228, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $110092807, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-10410256(%ebp)      # local array 'v7': 5 dimensions
    movl    $63,-10410252(%ebp)     #   dimension 1: 63 elements
    movl    $81,-10410248(%ebp)     #   dimension 2: 81 elements
    movl    $85,-10410244(%ebp)     #   dimension 3: 85 elements
    movl    $2,-10410240(%ebp)      #   dimension 4: 2 elements
    movl    $3,-10410236(%ebp)      #   dimension 5: 3 elements
    movl    $5,-440371240(%ebp)     # local array 'v8': 5 dimensions
    movl    $58,-440371236(%ebp)    #   dimension 1: 58 elements
    movl    $36,-440371232(%ebp)    #   dimension 2: 36 elements
    movl    $96,-440371228(%ebp)    #   dimension 3: 96 elements
    movl    $55,-440371224(%ebp)    #   dimension 4: 55 elements
    movl    $39,-440371220(%ebp)    #   dimension 5: 39 elements

    # function body
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    movl    $40066, %eax            #   2:     assign v4 <- 40066
    movl    %eax, 16(%ebp)         
    call    WriteLn                 #   3:     call   WriteLn
    movl    $97, %eax               #   4:     assign v6 <- 97
    movb    %al, -109(%ebp)        
    movl    $99, %eax               #   5:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   6:     call   WriteChar
    addl    $4, %esp               
    call    dummyProcedure          #   7:     call   dummyProcedure
    jmp     l_f1_1_while_cond       #   8:     goto   1_while_cond
l_f1_0:
    movl    $36562, %eax            #  10:     div    t6 <- 36562, 95846
    movl    $95846, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  11:     div    t7 <- t6, 32614
    movl    $32614, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  12:     mul    t8 <- t7, 89085
    movl    $89085, %ebx           
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    $28910, %eax            #  13:     sub    t9 <- 28910, t8
    movl    -104(%ebp), %ebx       
    subl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $2, %eax                #  14:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  15:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  16:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -108(%ebp), %eax        #  17:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     add    t12 <- t11, 21004
    movl    $21004, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  19:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  20:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  21:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  22:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  23:     add    t15 <- t14, 47370
    movl    $47370, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  24:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  25:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  26:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  27:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  28:     add    t18 <- t17, 52941
    movl    $52941, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  29:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  30:     param  0 <- v5
    pushl   %eax                   
    call    DIM                     #  31:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  32:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  33:     add    t21 <- t20, 92039
    movl    $92039, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  34:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    20(%ebp), %eax          #  35:     param  0 <- v5
    pushl   %eax                   
    call    DOFS                    #  36:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  37:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    20(%ebp), %eax          #  38:     add    t25 <- v5, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $1, %eax                #  39:     assign @t25 <- 1
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_11_if_false        #  40:     goto   11_if_false
    jmp     l_f1_12                 #  41:     goto   12
l_f1_12:
    movl    $99, %eax               #  43:     param  3 <- 99
    pushl   %eax                   
    movl    $4973, %eax             #  44:     if     4973 = 97041 goto 16
    movl    $97041, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_16                
    jmp     l_f1_17                 #  45:     goto   17
l_f1_16:
    movl    $1, %eax                #  47:     assign t26 <- 1
    movb    %al, -77(%ebp)         
    jmp     l_f1_18                 #  48:     goto   18
l_f1_17:
    movl    $0, %eax                #  50:     assign t26 <- 0
    movb    %al, -77(%ebp)         
l_f1_18:
    movzbl  -77(%ebp), %eax         #  52:     param  2 <- t26
    pushl   %eax                   
    leal    -440371240(%ebp), %eax  #  53:     &()    t27 <- v8
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  54:     param  1 <- t27
    pushl   %eax                   
    leal    -10410256(%ebp), %eax   #  55:     &()    t28 <- v7
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  56:     param  0 <- t28
    pushl   %eax                   
    call    f0                      #  57:     call   t29 <- f0
    addl    $16, %esp              
    movb    %al, -89(%ebp)         
    jmp     l_f1_9                  #  58:     goto   9
l_f1_11_if_false:
l_f1_9:

l_f1_exit:
    # epilogue
    addl    $440371228, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #    -14(%ebp)   1  [ $v3       <char> %ebp-14 ]

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
    movl    $100, %eax              #   0:     assign v3 <- 100
    movb    %al, -14(%ebp)         
l_f2_2_while_cond:
    jmp     l_f2_1                  #   2:     goto   1
    movl    $20233, %eax            #   3:     param  0 <- 20233
    pushl   %eax                   
    call    WriteInt                #   4:     call   WriteInt
    addl    $4, %esp               
l_f2_6_while_cond:
    jmp     l_f2_5                  #   6:     goto   5
    jmp     l_f2_6_while_cond       #   7:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_2_while_cond       #   9:     goto   2_while_cond
l_f2_1:
    movl    $99, %eax               #  11:     if     99 # 99 goto 9
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_9                 
    jmp     l_f2_10                 #  12:     goto   10
l_f2_9:
    movl    $1, %eax                #  14:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_11                 #  15:     goto   11
l_f2_10:
    movl    $0, %eax                #  17:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f2_11:
    movzbl  -13(%ebp), %eax         #  19:     assign v2 <- t6
    movb    %al, 8(%ebp)           

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 58 of <array 36 of <array 96 of <array 55 of <array 39 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 63 of <array 81 of <array 85 of <array 2 of <array 3 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <char> %ebp-26 ]
    #    -27(%ebp)   1  [ $t5       <bool> %ebp-27 ]

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
    movl    $30971, %eax            #   0:     if     30971 >= 92039 goto 4
    movl    $92039, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_4               
    jmp     l_test_5                #   1:     goto   5
l_test_4:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_6                #   4:     goto   6
l_test_5:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_6:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
    movl    $74009, %eax            #   9:     assign v1 <- 74009
    movl    %eax, v1               
    jmp     l_test_0                #  10:     goto   0
l_test_0:
    jmp     l_test_exit            
    movl    $100, %eax              #  13:     param  3 <- 100
    pushl   %eax                   
    movl    $0, %eax                #  14:     param  2 <- 0
    pushl   %eax                   
    leal    v4, %eax                #  15:     &()    t1 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     param  1 <- t1
    pushl   %eax                   
    leal    v3, %eax                #  17:     &()    t2 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  19:     call   t3 <- f0
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  20:     assign v2 <- t3
    movb    %al, v2                
    call    dummyCHARfunc           #  21:     call   t4 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    jmp     l_test_14               #  22:     goto   14
    movl    $1, %eax                #  23:     assign t5 <- 1
    movb    %al, -27(%ebp)         
    jmp     l_test_15               #  24:     goto   15
l_test_14:
    movl    $0, %eax                #  26:     assign t5 <- 0
    movb    %al, -27(%ebp)         
l_test_15:
    movzbl  -27(%ebp), %eax         #  28:     assign v0 <- t5
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v1:                                 # <int>
    .skip    4
v2:                                 # <char>
    .skip    1
    .align   4
v3:                                 # <array 63 of <array 81 of <array 85 of <array 2 of <array 3 of <int>>>>>>
    .long    5
    .long   63
    .long   81
    .long   85
    .long    2
    .long    3
    .skip 10410120
v4:                                 # <array 58 of <array 36 of <array 96 of <array 55 of <array 39 of <bool>>>>>>
    .long    5
    .long   58
    .long   36
    .long   96
    .long   55
    .long   39
    .skip 429960960








    # end of global data section
    #-----------------------------------------

    .end
##################################################
