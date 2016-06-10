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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <ptr(4) to <array 7 of <char>>> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 10 of <array 10 of <array 6 of <array 8 of <bool>>>>>>> %ebp+12 ]

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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    jmp     l_f0_exit              
    movl    $2, %eax                #   3:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   4:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   5:     call   t1 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $7016, %eax             #   6:     mul    t2 <- 7016, t1
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   7:     add    t3 <- t2, 3831
    movl    $3831, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $3, %eax                #   8:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   9:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  10:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  11:     mul    t5 <- t3, t4
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  12:     add    t6 <- t5, 30745
    movl    $30745, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  14:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  15:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  16:     mul    t8 <- t6, t7
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  17:     add    t9 <- t8, 83404
    movl    $83404, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  20:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -84(%ebp), %eax         #  21:     mul    t11 <- t9, t10
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  22:     add    t12 <- t11, 9745
    movl    $9745, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     mul    t13 <- t12, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    12(%ebp), %eax          #  24:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  25:     call   t14 <- DOFS
    addl    $4, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  26:     add    t15 <- t13, t14
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    12(%ebp), %eax          #  27:     add    t16 <- v2, t15
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $0, %eax                #  28:     assign @t16 <- 0
    movl    -44(%ebp), %edi        
    movb    %al, (%edi)            
l_f0_6_while_cond:
    movl    $82163, %eax            #  30:     if     82163 < 9602 goto 7_while_body
    movl    $9602, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f0_7_while_body      
    jmp     l_f0_5                  #  31:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #  33:     goto   6_while_cond
l_f0_5:
    movl    $57818, %eax            #  35:     div    t17 <- 57818, 90154
    movl    $90154, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  36:     param  0 <- t17
    pushl   %eax                   
    call    WriteInt                #  37:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f0_1_while_cond       #  38:     goto   1_while_cond
l_f0_0:
    leal    _str_1, %eax            #  40:     &()    t18 <- _str_1
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  41:     param  0 <- t18
    pushl   %eax                   
    call    WriteStr                #  42:     call   WriteStr
    addl    $4, %esp               
l_f0_12_while_cond:
    movl    $5718, %eax             #  44:     if     5718 <= 76536 goto 16_if_true
    movl    $76536, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_16_if_true        
    jmp     l_f0_17_if_false        #  45:     goto   17_if_false
l_f0_16_if_true:
    jmp     l_f0_15                 #  47:     goto   15
l_f0_17_if_false:
l_f0_15:
    jmp     l_f0_12_while_cond      #  50:     goto   12_while_cond

l_f0_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t2       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t3       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t4       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 7 of <array 2 of <array 3 of <array 7 of <char>>>>>>> %ebp+8 ]
    #    -81(%ebp)   1  [ $v2       <char> %ebp-81 ]
    #    -88(%ebp)   4  [ $v3       <int> %ebp-88 ]

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
l_f1_4_while_cond:
    jmp     l_f1_4_while_cond       #   1:     goto   4_while_cond
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   3:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   4:     call   t1 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $48456, %eax            #   5:     mul    t2 <- 48456, t1
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   6:     add    t3 <- t2, 15238
    movl    $15238, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   8:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   9:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  10:     mul    t5 <- t3, t4
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  11:     add    t6 <- t5, 90486
    movl    $90486, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  14:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  15:     mul    t8 <- t6, t7
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  16:     add    t9 <- t8, 33067
    movl    $33067, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -80(%ebp), %eax         #  20:     mul    t11 <- t9, t10
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     add    t12 <- t11, 49609
    movl    $49609, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     mul    t13 <- t12, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    8(%ebp), %eax           #  23:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  24:     call   t14 <- DOFS
    addl    $4, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  25:     add    t15 <- t13, t14
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  26:     add    t16 <- v1, t15
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $100, %eax              #  27:     assign @t16 <- 100
    movl    -44(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f1_0                  #  28:     goto   0
l_f1_0:
    call    dummyINTfunc            #  30:     call   t17 <- dummyINTfunc
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  31:     assign v3 <- t17
    movl    %eax, -88(%ebp)        
    jmp     l_f1_10_if_false        #  32:     goto   10_if_false
    movl    $99, %eax               #  33:     return 99
    jmp     l_f1_exit              
    movl    $99, %eax               #  34:     return 99
    jmp     l_f1_exit              
    movl    $100, %eax              #  35:     assign v2 <- 100
    movb    %al, -81(%ebp)         
    movl    $100, %eax              #  36:     if     100 >= 100 goto 15_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  37:     goto   16_if_false
l_f1_15_if_true:
    jmp     l_f1_14                 #  39:     goto   14
l_f1_16_if_false:
l_f1_14:
l_f1_19_while_cond:
    movl    $98, %eax               #  43:     if     98 < 97 goto 20_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_20_while_body     
    jmp     l_f1_18                 #  44:     goto   18
l_f1_20_while_body:
    jmp     l_f1_19_while_cond      #  46:     goto   19_while_cond
l_f1_18:
    jmp     l_f1_8                  #  48:     goto   8
l_f1_10_if_false:
l_f1_8:

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
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <array 7 of <array 2 of <array 3 of <array 7 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t3       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t4       <bool> %ebp-19 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #   -2104(%ebp)  2082  [ $v3       <array 7 of <array 7 of <array 2 of <array 3 of <array 7 of <char>>>>>> %ebp-2104 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2092, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $523, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2104(%ebp)          # local array 'v3': 5 dimensions
    movl    $7,-2100(%ebp)          #   dimension 1: 7 elements
    movl    $7,-2096(%ebp)          #   dimension 2: 7 elements
    movl    $2,-2092(%ebp)          #   dimension 3: 2 elements
    movl    $3,-2088(%ebp)          #   dimension 4: 3 elements
    movl    $7,-2084(%ebp)          #   dimension 5: 7 elements

    # function body
    leal    -2104(%ebp), %eax       #   0:     &()    t1 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #   2:     call   t2 <- f1
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     return t2
    jmp     l_f2_exit              
l_f2_2_while_cond:
    call    dummyCHARfunc           #   5:     call   t3 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movl    $99, %eax               #   6:     if     99 <= t3 goto 3_while_body
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_3_while_body      
    jmp     l_f2_1                  #   7:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #   9:     goto   2_while_cond
l_f2_1:
    call    dummyBOOLfunc           #  11:     call   t4 <- dummyBOOLfunc
    movb    %al, -19(%ebp)         

l_f2_exit:
    # epilogue
    addl    $2092, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    movl    $98, %eax               #   2:     if     98 # 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    movl    $98, %eax               #   5:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_2_while_cond     #   6:     goto   2_while_cond
l_test_1:
    movl    $98, %eax               #   8:     assign v0 <- 98
    movb    %al, v0                
l_test_8_while_cond:
    movl    $53216, %eax            #  10:     if     53216 = 22519 goto 11_if_true
    movl    $22519, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_11_if_true      
    jmp     l_test_12_if_false      #  11:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  13:     goto   10
l_test_12_if_false:
l_test_10:
    movl    $4237, %eax             #  16:     assign v1 <- 4237
    movl    %eax, v1               
    jmp     l_test_8_while_cond     #  17:     goto   8_while_cond
l_test_16_while_cond:
    call    dummyCHARfunc           #  19:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  20:     if     t0 >= 97 goto 17_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_17_while_body   
    jmp     l_test_15               #  21:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  23:     goto   16_while_cond
l_test_15:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <char>
    .skip    1
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
