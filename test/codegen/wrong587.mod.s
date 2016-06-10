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
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t13      <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $t14      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t15      <bool> %ebp-18 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 7 of <array 10 of <array 2 of <array 6 of <bool>>>>>>> %ebp+12 ]
    #    -24(%ebp)   4  [ $v3       <int> %ebp-24 ]

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
    call    dummyCHARfunc           #   0:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t11 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t10 > t11 goto 1
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_1                 
    jmp     l_f0_2                  #   3:     goto   2
l_f0_1:
    movl    $1, %eax                #   5:     assign t12 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_3                  #   6:     goto   3
l_f0_2:
    movl    $0, %eax                #   8:     assign t12 <- 0
    movb    %al, -15(%ebp)         
l_f0_3:
    movzbl  -15(%ebp), %eax         #  10:     return t12
    jmp     l_f0_exit              
    movl    $41318, %eax            #  11:     assign v3 <- 41318
    movl    %eax, -24(%ebp)        
    call    dummyCHARfunc           #  12:     call   t13 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    jmp     l_f0_5                  #  13:     goto   5
l_f0_5:
    call    dummyBOOLfunc           #  15:     call   t14 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  16:     if     t14 = 1 goto 11
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_11                
l_f0_11:
    movl    $1, %eax                #  18:     assign t15 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_13                 #  19:     goto   13
    movl    $0, %eax                #  20:     assign t15 <- 0
    movb    %al, -18(%ebp)         
l_f0_13:
    movzbl  -18(%ebp), %eax         #  22:     return t15
    jmp     l_f0_exit              

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
    movl    $71567, %eax            #   0:     div    t10 <- 71567, 6813
    movl    $6813, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t11 <- t10, 19717
    movl    $19717, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t12 <- t11, 70968
    movl    $70968, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t13 <- t12, 72747
    movl    $72747, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     return t13
    jmp     l_f1_exit              
    movl    $47903, %eax            #   5:     sub    t14 <- 47903, 99230
    movl    $99230, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     sub    t15 <- t14, 43892
    movl    $43892, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     sub    t16 <- t15, 41950
    movl    $41950, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   8:     sub    t17 <- t16, 95819
    movl    $95819, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   9:     sub    t18 <- t17, 15794
    movl    $15794, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  10:     return t18
    jmp     l_f1_exit              
    movl    $100, %eax              #  11:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  12:     call   WriteChar
    addl    $4, %esp               

l_f1_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t12      <ptr(4) to <array 2 of <array 7 of <array 10 of <array 2 of <array 6 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 10 of <array 9 of <array 8 of <array 3 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 1 of <array 7 of <array 8 of <array 8 of <array 1 of <int>>>>>>> %ebp+20 ]
    #   -1732(%ebp)  1704  [ $v5       <array 2 of <array 7 of <array 10 of <array 2 of <array 6 of <bool>>>>>> %ebp-1732 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1720, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $430, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1732(%ebp)          # local array 'v5': 5 dimensions
    movl    $2,-1728(%ebp)          #   dimension 1: 2 elements
    movl    $7,-1724(%ebp)          #   dimension 2: 7 elements
    movl    $10,-1720(%ebp)         #   dimension 3: 10 elements
    movl    $2,-1716(%ebp)          #   dimension 4: 2 elements
    movl    $6,-1712(%ebp)          #   dimension 5: 6 elements

    # function body
    call    f1                      #   0:     call   t10 <- f1
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t11 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   2:     if     t11 > 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   3:     goto   3_if_false
l_f2_2_if_true:
    jmp     l_f2_1                  #   5:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_6_while_cond:
    jmp     l_f2_7_while_body       #   9:     goto   7_while_body
    leal    -1732(%ebp), %eax       #  10:     &()    t12 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     param  1 <- t12
    pushl   %eax                   
    movl    $0, %eax                #  12:     param  0 <- 0
    pushl   %eax                   
    call    f0                      #  13:     call   t13 <- f0
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  14:     if     t13 = 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_7_while_body      
    jmp     l_f2_5                  #  15:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  17:     goto   6_while_cond
l_f2_5:

l_f2_exit:
    # epilogue
    addl    $1720, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $t4       <char> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 1 of <array 7 of <array 8 of <array 8 of <array 1 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <ptr(4) to <array 7 of <array 10 of <array 9 of <array 8 of <array 3 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $6934, %eax             #   1:     if     6934 = t0 goto 1
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_1               
    jmp     l_test_2                #   2:     goto   2
l_test_1:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_3                #   5:     goto   3
l_test_2:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_3:
    movzbl  -17(%ebp), %eax         #   9:     assign v0 <- t1
    movb    %al, v0                
    call    dummyCHARfunc           #  10:     call   t2 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movl    $98, %eax               #  11:     if     98 = t2 goto 6
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_6               
    jmp     l_test_7                #  12:     goto   7
l_test_6:
    movl    $1, %eax                #  14:     assign t3 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_test_8                #  15:     goto   8
l_test_7:
    movl    $0, %eax                #  17:     assign t3 <- 0
    movb    %al, -19(%ebp)         
l_test_8:
    movzbl  -19(%ebp), %eax         #  19:     assign v0 <- t3
    movb    %al, v0                
    call    dummyCHARfunc           #  20:     call   t4 <- dummyCHARfunc
    movb    %al, -20(%ebp)         
l_test_12_while_cond:
    movl    $71649, %eax            #  22:     if     71649 <= 65338 goto 13_while_body
    movl    $65338, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_13_while_body   
    jmp     l_test_11               #  23:     goto   11
l_test_13_while_body:
    leal    v2, %eax                #  25:     &()    t5 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  26:     param  3 <- t5
    pushl   %eax                   
    movl    $72619, %eax            #  27:     param  2 <- 72619
    pushl   %eax                   
    leal    v1, %eax                #  28:     &()    t6 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  29:     param  1 <- t6
    pushl   %eax                   
    movl    $83818, %eax            #  30:     param  0 <- 83818
    pushl   %eax                   
    call    f2                      #  31:     call   f2
    addl    $16, %esp              
l_test_17_while_cond:
    movl    $19993, %eax            #  33:     if     19993 > 54167 goto 18_while_body
    movl    $54167, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_18_while_body   
    jmp     l_test_16               #  34:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  36:     goto   17_while_cond
l_test_16:
    jmp     l_test_exit            
    jmp     l_test_12_while_cond    #  39:     goto   12_while_cond
l_test_11:
    movl    $97, %eax               #  41:     if     97 > 97 goto 22
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_22              
    jmp     l_test_23               #  42:     goto   23
l_test_22:
    movl    $1, %eax                #  44:     assign t7 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_24               #  45:     goto   24
l_test_23:
    movl    $0, %eax                #  47:     assign t7 <- 0
    movb    %al, -29(%ebp)         
l_test_24:
    movzbl  -29(%ebp), %eax         #  49:     assign v0 <- t7
    movb    %al, v0                
    movl    $12455, %eax            #  50:     mul    t8 <- 12455, 55169
    movl    $55169, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  51:     sub    t9 <- t8, 66849
    movl    $66849, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  52:     param  0 <- t9
    pushl   %eax                   
    call    WriteInt                #  53:     call   WriteInt
    addl    $4, %esp               

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
v1:                                 # <array 7 of <array 10 of <array 9 of <array 8 of <array 3 of <int>>>>>>
    .long    5
    .long    7
    .long   10
    .long    9
    .long    8
    .long    3
    .skip 60480
v2:                                 # <array 1 of <array 7 of <array 8 of <array 8 of <array 1 of <int>>>>>>
    .long    5
    .long    1
    .long    7
    .long    8
    .long    8
    .long    1
    .skip 1792








    # end of global data section
    #-----------------------------------------

    .end
##################################################
