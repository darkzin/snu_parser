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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #    -16(%ebp)   1  [ $v2       <char> %ebp-16 ]

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
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   2:     assign v2 <- t4
    movb    %al, -16(%ebp)         
l_f0_3_while_cond:
    call    dummyCHARfunc           #   4:     call   t5 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $100, %eax              #   5:     if     100 < t5 goto 4_while_body
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_4_while_body      
    jmp     l_f0_2                  #   6:     goto   2
l_f0_4_while_body:
    jmp     l_f0_3_while_cond       #   8:     goto   3_while_cond
l_f0_2:

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
    #    -53(%ebp)   1  [ $t20      <bool> %ebp-53 ]
    #    -54(%ebp)   1  [ $t3       <bool> %ebp-54 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 3 of <array 7 of <array 8 of <array 8 of <char>>>>>>> %ebp+8 ]
    #    -81(%ebp)   1  [ $v2       <char> %ebp-81 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -54(%ebp)         
l_f1_2_while_cond:
    jmp     l_f1_3_while_body       #   2:     goto   3_while_body
    jmp     l_f1_3_while_body       #   3:     goto   3_while_body
l_f1_3_while_body:
    movl    $2, %eax                #   5:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   6:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   7:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $52803, %eax            #   8:     mul    t5 <- 52803, t4
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   9:     add    t6 <- t5, 94400
    movl    $94400, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  10:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  11:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  12:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  13:     mul    t8 <- t6, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  14:     add    t9 <- t8, 50338
    movl    $50338, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  15:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  17:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -80(%ebp), %eax         #  18:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     add    t12 <- t11, 45094
    movl    $45094, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  20:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  23:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     add    t15 <- t14, 32613
    movl    $32613, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  25:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  26:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  27:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  28:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  29:     add    t19 <- v1, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $99, %eax               #  30:     assign @t19 <- 99
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_2_while_cond       #  31:     goto   2_while_cond
    movl    $98, %eax               #  32:     if     98 > 99 goto 11_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  33:     goto   12_if_false
l_f1_11_if_true:
l_f1_15_while_cond:
    movl    $0, %eax                #  36:     if     0 = 0 goto 16_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_16_while_body     
    jmp     l_f1_14                 #  37:     goto   14
l_f1_16_while_body:
    jmp     l_f1_15_while_cond      #  39:     goto   15_while_cond
l_f1_14:
    movl    $13544, %eax            #  41:     if     13544 >= 23760 goto 19
    movl    $23760, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_19                
    jmp     l_f1_20                 #  42:     goto   20
l_f1_19:
    movl    $1, %eax                #  44:     assign t20 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f1_21                 #  45:     goto   21
l_f1_20:
    movl    $0, %eax                #  47:     assign t20 <- 0
    movb    %al, -53(%ebp)         
l_f1_21:
    movzbl  -53(%ebp), %eax         #  49:     param  0 <- t20
    pushl   %eax                   
    call    f0                      #  50:     call   f0
    addl    $4, %esp               
    jmp     l_f1_10                 #  51:     goto   10
l_f1_12_if_false:
l_f1_10:

l_f1_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]

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
    movl    $19723, %eax            #   0:     sub    t3 <- 19723, 77640
    movl    $77640, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t4 <- t3, 42797
    movl    $42797, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $39668, %eax            #   2:     div    t5 <- 39668, 92351
    movl    $92351, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     div    t6 <- t5, 25375
    movl    $25375, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t7 <- t4, t6
    movl    -28(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     return t7
    jmp     l_f2_exit              
    jmp     l_f2_6_if_false         #   6:     goto   6_if_false
    movl    $1, %eax                #   7:     if     1 = 1 goto 8
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_8                 
    jmp     l_f2_9                  #   8:     goto   9
l_f2_8:
    movl    $1, %eax                #  10:     assign t8 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f2_10                 #  11:     goto   10
l_f2_9:
    movl    $0, %eax                #  13:     assign t8 <- 0
    movb    %al, -33(%ebp)         
l_f2_10:
    movzbl  -33(%ebp), %eax         #  15:     assign v1 <- t8
    movb    %al, 8(%ebp)           
    jmp     l_f2_4                  #  16:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_1                  #  19:     goto   1
l_f2_1:
    call    dummyINTfunc            #  21:     call   t9 <- dummyINTfunc
    movl    %eax, -40(%ebp)        

l_f2_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

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
    movl    $74722, %eax            #   0:     if     74722 # 36789 goto 1_if_true
    movl    $36789, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $39484, %eax            #   3:     assign v0 <- 39484
    movl    %eax, v0               
l_test_6_while_cond:
    movl    $98, %eax               #   5:     if     98 >= 100 goto 7_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_7_while_body    
    jmp     l_test_5                #   6:     goto   5
l_test_7_while_body:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   9:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_6_while_cond     #  10:     goto   6_while_cond
l_test_5:
    jmp     l_test_0                #  12:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyBOOLfunc           #  15:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    dummyBOOLfunc           #  16:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_19_if_false      #  18:     goto   19_if_false
    jmp     l_test_17               #  19:     goto   17
l_test_19_if_false:
l_test_17:
    jmp     l_test_12               #  22:     goto   12
l_test_12:
    jmp     l_test_22_if_false      #  24:     goto   22_if_false
    movl    $100, %eax              #  25:     assign v1 <- 100
    movb    %al, v1                
    jmp     l_test_20               #  26:     goto   20
l_test_22_if_false:
l_test_20:

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
