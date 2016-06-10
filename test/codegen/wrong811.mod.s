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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 1 of <array 5 of <array 5 of <array 7 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 10 of <array 1 of <array 2 of <array 9 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 9 of <array 1 of <array 6 of <array 8 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_6_while_cond:
    movl    $1, %eax                #   6:     return 1
    jmp     l_f0_exit              
    jmp     l_f0_6_while_cond       #   7:     goto   6_while_cond
    jmp     l_f0_12                 #   8:     goto   12
    movl    $1, %eax                #   9:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_13                 #  10:     goto   13
l_f0_12:
    movl    $0, %eax                #  12:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f0_13:
    movzbl  -13(%ebp), %eax         #  14:     return t0
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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 10 of <array 9 of <array 1 of <array 6 of <array 8 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 3 of <array 10 of <array 1 of <array 2 of <array 9 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 7 of <array 1 of <array 5 of <array 5 of <array 7 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #   -4968(%ebp)  4924  [ $v1       <array 7 of <array 1 of <array 5 of <array 5 of <array 7 of <int>>>>>> %ebp-4968 ]
    #   -5532(%ebp)  564  [ $v2       <array 3 of <array 10 of <array 1 of <array 2 of <array 9 of <bool>>>>>> %ebp-5532 ]
    #   -22836(%ebp)  17304  [ $v3       <array 10 of <array 9 of <array 1 of <array 6 of <array 8 of <int>>>>>> %ebp-22836 ]
    #   -22840(%ebp)   4  [ $v4       <int> %ebp-22840 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $22828, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5707, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-4968(%ebp)          # local array 'v1': 5 dimensions
    movl    $7,-4964(%ebp)          #   dimension 1: 7 elements
    movl    $1,-4960(%ebp)          #   dimension 2: 1 elements
    movl    $5,-4956(%ebp)          #   dimension 3: 5 elements
    movl    $5,-4952(%ebp)          #   dimension 4: 5 elements
    movl    $7,-4948(%ebp)          #   dimension 5: 7 elements
    movl    $5,-5532(%ebp)          # local array 'v2': 5 dimensions
    movl    $3,-5528(%ebp)          #   dimension 1: 3 elements
    movl    $10,-5524(%ebp)         #   dimension 2: 10 elements
    movl    $1,-5520(%ebp)          #   dimension 3: 1 elements
    movl    $2,-5516(%ebp)          #   dimension 4: 2 elements
    movl    $9,-5512(%ebp)          #   dimension 5: 9 elements
    movl    $5,-22836(%ebp)         # local array 'v3': 5 dimensions
    movl    $10,-22832(%ebp)        #   dimension 1: 10 elements
    movl    $9,-22828(%ebp)         #   dimension 2: 9 elements
    movl    $1,-22824(%ebp)         #   dimension 3: 1 elements
    movl    $6,-22820(%ebp)         #   dimension 4: 6 elements
    movl    $8,-22816(%ebp)         #   dimension 5: 8 elements

    # function body
    movl    $98, %eax               #   0:     if     98 <= 98 goto 1
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_1                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     param  3 <- t0
    pushl   %eax                   
    leal    -22836(%ebp), %eax      #   9:     &()    t1 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  2 <- t1
    pushl   %eax                   
    leal    -5532(%ebp), %eax       #  11:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     param  1 <- t2
    pushl   %eax                   
    leal    -4968(%ebp), %eax       #  13:     &()    t3 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  15:     call   t4 <- f0
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
    call    dummyINTfunc            #  16:     call   t5 <- dummyINTfunc
    movl    %eax, -36(%ebp)        
    movl    $77655, %eax            #  17:     sub    t6 <- 77655, 4539
    movl    $4539, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  18:     add    t7 <- t6, 37801
    movl    $37801, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  19:     assign v4 <- t7
    movl    %eax, -22840(%ebp)     

l_f1_exit:
    # epilogue
    addl    $22828, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t3       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t4       <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t5       <bool> %ebp-77 ]
    #    -84(%ebp)   4  [ $t6       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 3 of <array 9 of <array 10 of <array 7 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 7 of <array 3 of <array 6 of <array 9 of <bool>>>>>>> %ebp+12 ]
    #    -97(%ebp)   1  [ $v2       <bool> %ebp-97 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $88, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $22, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyProcedure          #   0:     call   dummyProcedure
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   2:     if     97 < t0 goto 2
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_2                 
    jmp     l_f2_3                  #   3:     goto   3
l_f2_2:
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_4                  #   6:     goto   4
l_f2_3:
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_f2_4:
    movzbl  -14(%ebp), %eax         #  10:     return t1
    jmp     l_f2_exit              
    movl    $32477, %eax            #  11:     sub    t2 <- 32477, 58584
    movl    $58584, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  12:     add    t3 <- t2, 85470
    movl    $85470, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $91709, %eax            #  13:     add    t4 <- 91709, 18685
    movl    $18685, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  14:     if     t3 <= t4 goto 7
    movl    -76(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_7                 
    jmp     l_f2_8                  #  15:     goto   8
l_f2_7:
    movl    $1, %eax                #  17:     assign t5 <- 1
    movb    %al, -77(%ebp)         
    jmp     l_f2_9                  #  18:     goto   9
l_f2_8:
    movl    $0, %eax                #  20:     assign t5 <- 0
    movb    %al, -77(%ebp)         
l_f2_9:
    movl    $2, %eax                #  22:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  23:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  24:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    $84892, %eax            #  25:     mul    t7 <- 84892, t6
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  26:     add    t8 <- t7, 91464
    movl    $91464, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $3, %eax                #  27:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  28:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  29:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  30:     mul    t10 <- t8, t9
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  31:     add    t11 <- t10, 88715
    movl    $88715, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4, %eax                #  32:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  33:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  34:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  35:     mul    t13 <- t11, t12
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  36:     add    t14 <- t13, 60862
    movl    $60862, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $5, %eax                #  37:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  38:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  39:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  40:     mul    t16 <- t14, t15
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  41:     add    t17 <- t16, 1598
    movl    $1598, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  42:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    12(%ebp), %eax          #  43:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  44:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  45:     add    t20 <- t18, t19
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  46:     add    t21 <- v1, t20
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movzbl  -77(%ebp), %eax         #  47:     assign @t21 <- t5
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $88, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    movl    $31739, %eax            #   1:     assign v0 <- 31739
    movl    %eax, v0               
    movl    $99, %eax               #   2:     assign v1 <- 99
    movb    %al, v1                
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   4:     goto   6_while_cond
    movl    $97, %eax               #   5:     assign v1 <- 97
    movb    %al, v1                
    jmp     l_test_exit            
l_test_11_while_cond:
    movl    $68863, %eax            #   8:     if     68863 # 65563 goto 12_while_body
    movl    $65563, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_12_while_body   
    jmp     l_test_10               #   9:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  11:     goto   11_while_cond
l_test_10:
    jmp     l_test_exit            
    jmp     l_test_0                #  14:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $98, %eax               #  17:     assign v1 <- 98
    movb    %al, v1                
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
