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
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 3 of <array 5 of <array 3 of <array 4 of <char>>>>>>> %ebp+20 ]

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
l_f0_1_while_cond:
    movl    $98, %eax               #   1:     if     98 # 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_0:
l_f0_5_while_cond:
    movl    $97, %eax               #   7:     if     97 # 98 goto 6_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_6_while_body      
    jmp     l_f0_4                  #   8:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #  10:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_9                  #  12:     goto   9
    jmp     l_f0_9                  #  13:     goto   9
l_f0_9:
    movl    $1, %eax                #  15:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_11                 #  16:     goto   11
    movl    $0, %eax                #  17:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_11:
    movzbl  -13(%ebp), %eax         #  19:     return t3
    jmp     l_f0_exit              

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
    #    -56(%ebp)   4  [ $t20      <ptr(4) to <array 7 of <array 3 of <array 5 of <array 3 of <array 4 of <char>>>>>>> %ebp-56 ]
    #    -57(%ebp)   1  [ $t21      <char> %ebp-57 ]
    #    -58(%ebp)   1  [ $t22      <bool> %ebp-58 ]
    #    -59(%ebp)   1  [ $t23      <bool> %ebp-59 ]
    #    -60(%ebp)   1  [ $t3       <char> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 6 of <array 8 of <array 5 of <array 7 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 7 of <array 1 of <array 4 of <array 8 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #    -85(%ebp)   1  [ $v3       <char> %ebp-85 ]
    #    -92(%ebp)   4  [ $v4       <int> %ebp-92 ]
    #   -1376(%ebp)  1284  [ $v5       <array 7 of <array 3 of <array 5 of <array 3 of <array 4 of <char>>>>>> %ebp-1376 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1364, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $341, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1376(%ebp)          # local array 'v5': 5 dimensions
    movl    $7,-1372(%ebp)          #   dimension 1: 7 elements
    movl    $3,-1368(%ebp)          #   dimension 2: 3 elements
    movl    $5,-1364(%ebp)          #   dimension 3: 5 elements
    movl    $3,-1360(%ebp)          #   dimension 4: 3 elements
    movl    $4,-1356(%ebp)          #   dimension 5: 4 elements

    # function body
    movl    $100, %eax              #   0:     return 100
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -60(%ebp)         
    movzbl  -60(%ebp), %eax         #   2:     return t3
    jmp     l_f1_exit              
l_f1_3_while_cond:
    jmp     l_f1_2                  #   4:     goto   2
l_f1_6_while_cond:
    jmp     l_f1_6_while_cond       #   6:     goto   6_while_cond
    movl    $2, %eax                #   7:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   8:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   9:     call   t4 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $12168, %eax            #  10:     mul    t5 <- 12168, t4
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  11:     add    t6 <- t5, 64232
    movl    $64232, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #  12:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  14:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  15:     mul    t8 <- t6, t7
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  16:     add    t9 <- t8, 48608
    movl    $48608, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  17:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  19:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    -84(%ebp), %eax         #  20:     mul    t11 <- t9, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  21:     add    t12 <- t11, 97460
    movl    $97460, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  22:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  24:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  25:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     add    t15 <- t14, 88094
    movl    $88094, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  27:     mul    t16 <- t15, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    8(%ebp), %eax           #  28:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  29:     call   t17 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  30:     add    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    8(%ebp), %eax           #  31:     add    t19 <- v0, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $98, %eax               #  32:     assign @t19 <- 98
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $63919, %eax            #  33:     assign v4 <- 63919
    movl    %eax, -92(%ebp)        
    leal    -1376(%ebp), %eax       #  34:     &()    t20 <- v5
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  35:     param  3 <- t20
    pushl   %eax                   
    movl    $1, %eax                #  36:     param  2 <- 1
    pushl   %eax                   
    call    dummyCHARfunc           #  37:     call   t21 <- dummyCHARfunc
    movb    %al, -57(%ebp)         
    movzbl  -57(%ebp), %eax         #  38:     param  1 <- t21
    pushl   %eax                   
    movl    $62529, %eax            #  39:     if     62529 <= 29932 goto 11
    movl    $29932, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_11                
    jmp     l_f1_12                 #  40:     goto   12
l_f1_11:
    movl    $1, %eax                #  42:     assign t22 <- 1
    movb    %al, -58(%ebp)         
    jmp     l_f1_13                 #  43:     goto   13
l_f1_12:
    movl    $0, %eax                #  45:     assign t22 <- 0
    movb    %al, -58(%ebp)         
l_f1_13:
    movzbl  -58(%ebp), %eax         #  47:     param  0 <- t22
    pushl   %eax                   
    call    f0                      #  48:     call   t23 <- f0
    addl    $16, %esp              
    movb    %al, -59(%ebp)         
    jmp     l_f1_3_while_cond       #  49:     goto   3_while_cond
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $1364, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 9 of <array 4 of <array 4 of <array 10 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    call    ReadInt                 #   0:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $0, %eax                #   1:     if     0 # 0 goto 5
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_5                 
    jmp     l_f2_6                  #   2:     goto   6
l_f2_5:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_7                  #   5:     goto   7
l_f2_6:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -17(%ebp)         
l_f2_7:
    movzbl  -17(%ebp), %eax         #   9:     assign v2 <- t4
    movb    %al, 16(%ebp)          
    jmp     l_f2_1                  #  10:     goto   1
l_f2_1:
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]

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
    jmp     l_test_exit            
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v0 <- t0
    movb    %al, v0                
l_test_3_while_cond:
    jmp     l_test_4_while_body     #   4:     goto   4_while_body
    jmp     l_test_4_while_body     #   5:     goto   4_while_body
    jmp     l_test_4_while_body     #   6:     goto   4_while_body
l_test_4_while_body:
    jmp     l_test_3_while_cond     #   8:     goto   3_while_cond
l_test_9_while_cond:
    movl    $59500, %eax            #  10:     sub    t1 <- 59500, 91571
    movl    $91571, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $1013, %eax             #  11:     add    t2 <- 1013, 4157
    movl    $4157, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  12:     if     t1 < t2 goto 10_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_10_while_body   
    jmp     l_test_8                #  13:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  15:     goto   9_while_cond
l_test_8:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
