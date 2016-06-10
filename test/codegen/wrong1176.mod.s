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
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t2       <char> %ebp-53 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t3       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t4       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t5       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 44 of <array 40 of <array 100 of <array 61 of <array 88 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 23 of <array 43 of <array 34 of <array 20 of <array 27 of <int>>>>>>> %ebp+20 ]

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
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
l_f0_3_while_cond:
    movl    $99, %eax               #   3:     if     99 >= 98 goto 4_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_4_while_body      
    jmp     l_f0_2                  #   4:     goto   2
l_f0_4_while_body:
    movl    $513, %eax              #   6:     add    t3 <- 513, 45867
    movl    $45867, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #   7:     sub    t4 <- t3, 37696
    movl    $37696, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   8:     sub    t5 <- t4, 35694
    movl    $35694, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $2, %eax                #   9:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  10:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  11:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  12:     mul    t7 <- t5, t6
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  13:     add    t8 <- t7, 7295
    movl    $7295, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #  14:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  16:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  17:     mul    t10 <- t8, t9
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  18:     add    t11 <- t10, 53352
    movl    $53352, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  19:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  21:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  22:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     add    t14 <- t13, 38372
    movl    $38372, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  24:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  25:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  26:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  27:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  28:     add    t17 <- t16, 26635
    movl    $26635, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  29:     mul    t18 <- t17, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  30:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  31:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  32:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  33:     add    t21 <- v1, t20
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $2666, %eax             #  34:     assign @t21 <- 2666
    movl    -64(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f0_3_while_cond       #  35:     goto   3_while_cond
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <char> %ebp-18 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 94 of <array 84 of <array 21 of <array 96 of <array 94 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 65 of <array 34 of <array 53 of <array 49 of <array 79 of <char>>>>>>> %ebp+20 ]
    #    -19(%ebp)   1  [ $v5       <char> %ebp-19 ]
    #    -24(%ebp)   4  [ $v6       <int> %ebp-24 ]

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
    call    dummyINTfunc            #   0:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f1_3_if_false         #   1:     goto   3_if_false
    movl    $97, %eax               #   2:     assign v5 <- 97
    movb    %al, -19(%ebp)         
    movl    $38992, %eax            #   3:     if     38992 <= 34523 goto 6
    movl    $34523, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_6                 
    jmp     l_f1_7                  #   4:     goto   7
l_f1_6:
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_8                  #   7:     goto   8
l_f1_7:
    movl    $0, %eax                #   9:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f1_8:
    movzbl  -17(%ebp), %eax         #  11:     return t3
    jmp     l_f1_exit              
    movl    $4932, %eax             #  12:     assign v6 <- 4932
    movl    %eax, -24(%ebp)        
    movl    $1, %eax                #  13:     assign v2 <- 1
    movb    %al, 12(%ebp)          
    movl    $77662, %eax            #  14:     param  0 <- 77662
    pushl   %eax                   
    call    WriteInt                #  15:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f1_1                  #  16:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyCHARfunc           #  19:     call   t4 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  20:     assign v5 <- t4
    movb    %al, -19(%ebp)         

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t12      <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t14      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t15      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t2       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t3       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t4       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t5       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t6       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t7       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t8       <ptr(4) to <array 65 of <array 34 of <array 53 of <array 49 of <array 79 of <char>>>>>>> %ebp-60 ]
    #    -64(%ebp)   4  [ $t9       <ptr(4) to <array 94 of <array 84 of <array 21 of <array 96 of <array 94 of <int>>>>>>> %ebp-64 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #   -1690327128(%ebp)  1690327064  [ $v3       <array 94 of <array 84 of <array 21 of <array 96 of <array 94 of <int>>>>>> %ebp-1690327128 ]
    #   -2143737384(%ebp)  453410254  [ $v4       <array 65 of <array 34 of <array 53 of <array 49 of <array 79 of <char>>>>>> %ebp-2143737384 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2143737372, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $535934343, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1690327128(%ebp)    # local array 'v3': 5 dimensions
    movl    $94,-1690327124(%ebp)   #   dimension 1: 94 elements
    movl    $84,-1690327120(%ebp)   #   dimension 2: 84 elements
    movl    $21,-1690327116(%ebp)   #   dimension 3: 21 elements
    movl    $96,-1690327112(%ebp)   #   dimension 4: 96 elements
    movl    $94,-1690327108(%ebp)   #   dimension 5: 94 elements
    movl    $5,-2143737384(%ebp)    # local array 'v4': 5 dimensions
    movl    $65,-2143737380(%ebp)   #   dimension 1: 65 elements
    movl    $34,-2143737376(%ebp)   #   dimension 2: 34 elements
    movl    $53,-2143737372(%ebp)   #   dimension 3: 53 elements
    movl    $49,-2143737368(%ebp)   #   dimension 4: 49 elements
    movl    $79,-2143737364(%ebp)   #   dimension 5: 79 elements

    # function body
    movl    $51115, %eax            #   0:     div    t2 <- 51115, 23991
    movl    $23991, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   1:     mul    t3 <- t2, 13640
    movl    $13640, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   2:     div    t4 <- t3, 97990
    movl    $97990, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   3:     mul    t5 <- t4, 69873
    movl    $69873, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   4:     mul    t6 <- t5, 55379
    movl    $55379, %ebx           
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   5:     add    t7 <- t6, 99200
    movl    $99200, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   6:     return t7
    jmp     l_f2_exit              
l_f2_2_while_cond:
    jmp     l_f2_3_while_body       #   8:     goto   3_while_body
    leal    -2143737384(%ebp), %eax #   9:     &()    t8 <- v4
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  10:     param  3 <- t8
    pushl   %eax                   
    leal    -1690327128(%ebp), %eax #  11:     &()    t9 <- v3
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  12:     param  2 <- t9
    pushl   %eax                   
    movl    $1, %eax                #  13:     param  1 <- 1
    pushl   %eax                   
    movl    $61878, %eax            #  14:     div    t10 <- 61878, 41139
    movl    $41139, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     if     t10 # 33258 goto 5
    movl    $33258, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_5                 
    jmp     l_f2_6                  #  16:     goto   6
l_f2_5:
    movl    $1, %eax                #  18:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_7                  #  19:     goto   7
l_f2_6:
    movl    $0, %eax                #  21:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f2_7:
    movzbl  -17(%ebp), %eax         #  23:     param  0 <- t11
    pushl   %eax                   
    call    f1                      #  24:     call   t12 <- f1
    addl    $16, %esp              
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  25:     if     t12 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_3_while_body      
    jmp     l_f2_1                  #  26:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #  28:     goto   2_while_cond
l_f2_1:
    movl    $91047, %eax            #  30:     mul    t13 <- 91047, 9050
    movl    $9050, %ebx            
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  31:     sub    t14 <- t13, 9262
    movl    $9262, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  32:     add    t15 <- t14, 58728
    movl    $58728, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  33:     return t15
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $2143737372, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]

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
    movl    $97, %eax               #   1:     if     97 = 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_4                #   4:     goto   4
l_test_4:
    movl    $97, %eax               #   6:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
    movl    $17416, %eax            #  10:     if     17416 <= 78786 goto 10_if_true
    movl    $78786, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_10_if_true      
    jmp     l_test_11_if_false      #  11:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_15_if_false      #  13:     goto   15_if_false
    jmp     l_test_13               #  14:     goto   13
l_test_15_if_false:
l_test_13:
l_test_17_while_cond:
    jmp     l_test_16               #  18:     goto   16
    jmp     l_test_17_while_cond    #  19:     goto   17_while_cond
l_test_16:
l_test_20_while_cond:
    jmp     l_test_20_while_cond    #  22:     goto   20_while_cond
l_test_23_while_cond:
    movl    $26502, %eax            #  24:     if     26502 > 21350 goto 24_while_body
    movl    $21350, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_24_while_body   
    jmp     l_test_22               #  25:     goto   22
l_test_24_while_body:
    jmp     l_test_23_while_cond    #  27:     goto   23_while_cond
l_test_22:
    jmp     l_test_9                #  29:     goto   9
l_test_11_if_false:
l_test_9:
    movl    $26985, %eax            #  32:     sub    t0 <- 26985, 85913
    movl    $85913, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  33:     assign v1 <- t0
    movl    %eax, v1               
    movl    $99, %eax               #  34:     assign v0 <- 99
    movb    %al, v0                
    call    dummyCHARfunc           #  35:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  36:     assign v0 <- t1
    movb    %al, v0                

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
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
