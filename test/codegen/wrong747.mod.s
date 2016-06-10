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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 2 of <array 8 of <array 3 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 9 of <array 10 of <array 4 of <array 9 of <int>>>>>>> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   1:     call   t8 <- ReadInt
    movl    %eax, -20(%ebp)        
l_f0_3_while_cond:
    call    dummyCHARfunc           #   3:     call   t9 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   4:     if     t9 > 98 goto 4_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_4_while_body      
    jmp     l_f0_2                  #   5:     goto   2
l_f0_4_while_body:
    movl    $50637, %eax            #   7:     if     50637 >= 48295 goto 7_if_true
    movl    $48295, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   8:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #  10:     goto   6
l_f0_8_if_false:
l_f0_6:
l_f0_11_while_cond:
    movl    $1, %eax                #  14:     if     1 # 0 goto 12_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_12_while_body     
    jmp     l_f0_10                 #  15:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  17:     goto   11_while_cond
l_f0_10:
    jmp     l_f0_3_while_cond       #  19:     goto   3_while_cond
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
    #    -24(%ebp)   4  [ $t7       <ptr(4) to <array 2 of <array 9 of <array 10 of <array 4 of <array 9 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <ptr(4) to <array 5 of <array 2 of <array 8 of <array 3 of <array 5 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]
    #   -1256(%ebp)  1224  [ $v5       <array 5 of <array 2 of <array 8 of <array 3 of <array 5 of <bool>>>>>> %ebp-1256 ]
    #   -27200(%ebp)  25944  [ $v6       <array 2 of <array 9 of <array 10 of <array 4 of <array 9 of <int>>>>>> %ebp-27200 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $27188, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6797, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1256(%ebp)          # local array 'v5': 5 dimensions
    movl    $5,-1252(%ebp)          #   dimension 1: 5 elements
    movl    $2,-1248(%ebp)          #   dimension 2: 2 elements
    movl    $8,-1244(%ebp)          #   dimension 3: 8 elements
    movl    $3,-1240(%ebp)          #   dimension 4: 3 elements
    movl    $5,-1236(%ebp)          #   dimension 5: 5 elements
    movl    $5,-27200(%ebp)         # local array 'v6': 5 dimensions
    movl    $2,-27196(%ebp)         #   dimension 1: 2 elements
    movl    $9,-27192(%ebp)         #   dimension 2: 9 elements
    movl    $10,-27188(%ebp)        #   dimension 3: 10 elements
    movl    $4,-27184(%ebp)         #   dimension 4: 4 elements
    movl    $9,-27180(%ebp)         #   dimension 5: 9 elements

    # function body
l_f1_1_while_cond:
    movl    $100, %eax              #   1:     if     100 <= 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $1202, %eax             #   4:     return 1202
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
l_f1_6_while_cond:
    leal    -27200(%ebp), %eax      #   8:     &()    t7 <- v6
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     param  2 <- t7
    pushl   %eax                   
    movl    $98, %eax               #  10:     param  1 <- 98
    pushl   %eax                   
    leal    -1256(%ebp), %eax       #  11:     &()    t8 <- v5
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  13:     call   t9 <- f0
    addl    $12, %esp              
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  14:     if     t9 = 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_7_while_body      
    jmp     l_f1_5                  #  15:     goto   5
l_f1_7_while_body:
    movl    $99, %eax               #  17:     if     99 >= 99 goto 9_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_9_if_true         
    jmp     l_f1_10_if_false        #  18:     goto   10_if_false
l_f1_9_if_true:
    jmp     l_f1_8                  #  20:     goto   8
l_f1_10_if_false:
l_f1_8:
    call    ReadInt                 #  23:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f1_6_while_cond       #  24:     goto   6_while_cond
l_f1_5:
    call    dummyINTfunc            #  26:     call   t11 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  27:     assign v4 <- t11
    movl    %eax, 20(%ebp)         

l_f1_exit:
    # epilogue
    addl    $27188, %esp            # remove locals
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
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 2 of <array 1 of <array 3 of <array 3 of <bool>>>>>>> %ebp+8 ]

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
    movl    $94422, %eax            #   0:     mul    t7 <- 94422, 15170
    movl    $15170, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     mul    t8 <- t7, 30288
    movl    $30288, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   2:     div    t9 <- t8, 62877
    movl    $62877, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   3:     sub    t10 <- t9, 32056
    movl    $32056, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     return t10
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $97, %eax               #   6:     if     97 >= 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_3_while_body      
    jmp     l_f2_1                  #   7:     goto   1
l_f2_3_while_body:
    movl    $0, %eax                #   9:     if     0 # 0 goto 6_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_6_if_true         
    jmp     l_f2_7_if_false         #  10:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #  12:     goto   5
l_f2_7_if_false:
l_f2_5:
    jmp     l_f2_2_while_cond       #  15:     goto   2_while_cond
l_f2_1:
    call    ReadInt                 #  17:     call   t11 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     sub    t12 <- t11, 29820
    movl    $29820, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     return t12
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 2 of <array 9 of <array 10 of <array 4 of <array 9 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 5 of <array 2 of <array 8 of <array 3 of <array 5 of <bool>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $100, %eax              #   0:     if     100 # 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    movl    $98268, %eax            #   4:     param  0 <- 98268
    pushl   %eax                   
    call    WriteInt                #   5:     call   WriteInt
    addl    $4, %esp               
l_test_7_while_cond:
    movl    $0, %eax                #   7:     if     0 # 1 goto 8_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_8_while_body    
    jmp     l_test_6                #   8:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  10:     goto   7_while_cond
l_test_6:
    jmp     l_test_exit            
    jmp     l_test_0                #  13:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $1, %eax                #  16:     if     1 # 0 goto 12
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_12              
    jmp     l_test_13               #  17:     goto   13
l_test_12:
    movl    $1, %eax                #  19:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_14               #  20:     goto   14
l_test_13:
    movl    $0, %eax                #  22:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_14:
    movzbl  -13(%ebp), %eax         #  24:     assign v0 <- t0
    movb    %al, v0                
    movl    $35847, %eax            #  25:     sub    t1 <- 35847, 19264
    movl    $19264, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $28893, %eax            #  26:     if     28893 < t1 goto 17_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_17_if_true      
    jmp     l_test_18_if_false      #  27:     goto   18_if_false
l_test_17_if_true:
    call    dummyINTfunc            #  29:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_test_16               #  30:     goto   16
l_test_18_if_false:
l_test_16:
    movl    $50215, %eax            #  33:     if     50215 >= 8228 goto 22_if_true
    movl    $8228, %ebx            
    cmpl    %ebx, %eax             
    jge     l_test_22_if_true      
    jmp     l_test_23_if_false      #  34:     goto   23_if_false
l_test_22_if_true:
    movl    $91917, %eax            #  36:     if     91917 = 81263 goto 26_if_true
    movl    $81263, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_26_if_true      
    jmp     l_test_27_if_false      #  37:     goto   27_if_false
l_test_26_if_true:
    jmp     l_test_25               #  39:     goto   25
l_test_27_if_false:
l_test_25:
    jmp     l_test_21               #  42:     goto   21
l_test_23_if_false:
l_test_21:
    jmp     l_test_31               #  45:     goto   31
    movl    $1, %eax                #  46:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_32               #  47:     goto   32
l_test_31:
    movl    $0, %eax                #  49:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_32:
    movzbl  -25(%ebp), %eax         #  51:     assign v0 <- t3
    movb    %al, v0                
    leal    v2, %eax                #  52:     &()    t4 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  53:     param  2 <- t4
    pushl   %eax                   
    movl    $97, %eax               #  54:     param  1 <- 97
    pushl   %eax                   
    leal    v1, %eax                #  55:     &()    t5 <- v1
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  56:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  57:     call   t6 <- f0
    addl    $12, %esp              
    movb    %al, -37(%ebp)         

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
v1:                                 # <array 5 of <array 2 of <array 8 of <array 3 of <array 5 of <bool>>>>>>
    .long    5
    .long    5
    .long    2
    .long    8
    .long    3
    .long    5
    .skip 1200
v2:                                 # <array 2 of <array 9 of <array 10 of <array 4 of <array 9 of <int>>>>>>
    .long    5
    .long    2
    .long    9
    .long   10
    .long    4
    .long    9
    .skip 25920








    # end of global data section
    #-----------------------------------------

    .end
##################################################
