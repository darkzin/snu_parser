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
    #    -13(%ebp)   1  [ $t13      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t14      <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 7 of <array 9 of <array 5 of <array 5 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]

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
    movl    $0, %eax                #   0:     assign v2 <- 0
    movb    %al, 12(%ebp)          
    call    dummyCHARfunc           #   1:     call   t13 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     return t13
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   3:     call   t14 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

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
    #    -16(%ebp)   4  [ $t13      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t14      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t15      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t16      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t17      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t18      <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 9 of <array 5 of <array 1 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #    -40(%ebp)   4  [ $v3       <int> %ebp-40 ]

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
l_f1_1_while_cond:
    movl    $83612, %eax            #   1:     sub    t13 <- 83612, 32659
    movl    $32659, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    call    ReadInt                 #   2:     call   t14 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   3:     if     t13 >= t14 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_2_while_body      
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    movl    $40687, %eax            #   8:     add    t15 <- 40687, 38983
    movl    $38983, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     sub    t16 <- t15, 89910
    movl    $89910, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     assign v3 <- t16
    movl    %eax, -40(%ebp)        
l_f1_6_while_cond:
    call    dummyINTfunc            #  12:     call   t17 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    movl    $67665, %eax            #  13:     sub    t18 <- 67665, t17
    movl    -32(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4372, %eax             #  14:     if     4372 > t18 goto 7_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_7_while_body      
    jmp     l_f1_5                  #  15:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  17:     goto   6_while_cond
l_f1_5:

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t13      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t14      <ptr(4) to <array 2 of <array 9 of <array 5 of <array 1 of <array 1 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t15      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t16      <bool> %ebp-22 ]
    #   -136(%ebp)  114  [ $v1       <array 2 of <array 9 of <array 5 of <array 1 of <array 1 of <char>>>>>> %ebp-136 ]
    #   -140(%ebp)   4  [ $v2       <int> %ebp-140 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $128, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $32, %ecx              
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-136(%ebp)           # local array 'v1': 5 dimensions
    movl    $2,-132(%ebp)           #   dimension 1: 2 elements
    movl    $9,-128(%ebp)           #   dimension 2: 9 elements
    movl    $5,-124(%ebp)           #   dimension 3: 5 elements
    movl    $1,-120(%ebp)           #   dimension 4: 1 elements
    movl    $1,-116(%ebp)           #   dimension 5: 1 elements

    # function body
    movl    $100, %eax              #   0:     if     100 <= 98 goto 3
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_3                 
    jmp     l_f2_4                  #   1:     goto   4
l_f2_3:
    movl    $1, %eax                #   3:     assign t13 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_5                  #   4:     goto   5
l_f2_4:
    movl    $0, %eax                #   6:     assign t13 <- 0
    movb    %al, -13(%ebp)         
l_f2_5:
    movzbl  -13(%ebp), %eax         #   8:     param  1 <- t13
    pushl   %eax                   
    leal    -136(%ebp), %eax        #   9:     &()    t14 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  0 <- t14
    pushl   %eax                   
    call    f1                      #  11:     call   t15 <- f1
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  12:     if     t15 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #  13:     goto   2_if_false
l_f2_1_if_true:
l_f2_8_while_cond:
    jmp     l_f2_7                  #  16:     goto   7
    jmp     l_f2_8_while_cond       #  17:     goto   8_while_cond
l_f2_7:
    jmp     l_f2_0                  #  19:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $71452, %eax            #  22:     if     71452 # 97602 goto 11_if_true
    movl    $97602, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  23:     goto   12_if_false
l_f2_11_if_true:
    movl    $92950, %eax            #  25:     assign v2 <- 92950
    movl    %eax, -140(%ebp)       
    call    dummyBOOLfunc           #  26:     call   t16 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    jmp     l_f2_16                 #  27:     goto   16
l_f2_16:
    jmp     l_f2_10                 #  29:     goto   10
l_f2_12_if_false:
l_f2_10:
    movl    $98, %eax               #  32:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  33:     call   WriteChar
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $128, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t10      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t11      <ptr(4) to <array 3 of <array 7 of <array 9 of <array 5 of <array 5 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t12      <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $t2       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t3       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t4       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t5       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t6       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t7       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t8       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t9       <int> %ebp-64 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $52, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $13, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
l_test_2_while_cond:
    movl    $97, %eax               #   3:     if     97 = 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_3_while_body    
    jmp     l_test_1                #   4:     goto   1
l_test_3_while_body:
l_test_6_while_cond:
    movl    $30296, %eax            #   7:     if     30296 < 54048 goto 7_while_body
    movl    $54048, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_7_while_body    
    jmp     l_test_5                #   8:     goto   5
l_test_7_while_body:
l_test_10_while_cond:
    movl    $0, %eax                #  11:     if     0 = 0 goto 11_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_11_while_body   
    jmp     l_test_9                #  12:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  14:     goto   10_while_cond
l_test_9:
    jmp     l_test_6_while_cond     #  16:     goto   6_while_cond
l_test_5:
    jmp     l_test_2_while_cond     #  18:     goto   2_while_cond
l_test_1:
    call    dummyINTfunc            #  20:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_13               #  21:     goto   13
l_test_13:
l_test_18_while_cond:
    movl    $22256, %eax            #  24:     mul    t2 <- 22256, 55127
    movl    $55127, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  25:     mul    t3 <- t2, 53564
    movl    $53564, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  26:     mul    t4 <- t3, 19069
    movl    $19069, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  27:     div    t5 <- t4, 46436
    movl    $46436, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  28:     sub    t6 <- t5, 80467
    movl    $80467, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  29:     sub    t7 <- t6, 79381
    movl    $79381, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  30:     sub    t8 <- t7, 4673
    movl    $4673, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  31:     add    t9 <- t8, 90584
    movl    $90584, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $91044, %eax            #  32:     if     91044 < t9 goto 19_while_body
    movl    -64(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_19_while_body   
    jmp     l_test_17               #  33:     goto   17
l_test_19_while_body:
    jmp     l_test_18_while_cond    #  35:     goto   18_while_cond
l_test_17:
    movl    $7179, %eax             #  37:     assign v1 <- 7179
    movl    %eax, v1               
l_test_23_while_cond:
    jmp     l_test_24_while_body    #  39:     goto   24_while_body
    jmp     l_test_24_while_body    #  40:     goto   24_while_body
l_test_24_while_body:
    movl    $99, %eax               #  42:     if     99 = 97 goto 29
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_29              
    jmp     l_test_30               #  43:     goto   30
l_test_29:
    movl    $1, %eax                #  45:     assign t10 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_31               #  46:     goto   31
l_test_30:
    movl    $0, %eax                #  48:     assign t10 <- 0
    movb    %al, -21(%ebp)         
l_test_31:
    movzbl  -21(%ebp), %eax         #  50:     param  1 <- t10
    pushl   %eax                   
    leal    v2, %eax                #  51:     &()    t11 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  52:     param  0 <- t11
    pushl   %eax                   
    call    f0                      #  53:     call   t12 <- f0
    addl    $8, %esp               
    movb    %al, -29(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_23_while_cond    #  57:     goto   23_while_cond

l_test_exit:
    # epilogue
    addl    $52, %esp               # remove locals
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
v1:                                 # <int>
    .skip    4
v2:                                 # <array 3 of <array 7 of <array 9 of <array 5 of <array 5 of <char>>>>>>
    .long    5
    .long    3
    .long    7
    .long    9
    .long    5
    .long    5
    .skip 4725








    # end of global data section
    #-----------------------------------------

    .end
##################################################
