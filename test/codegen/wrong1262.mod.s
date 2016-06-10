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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $v0       <int> %ebp-20 ]

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
l_f0_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   2:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t5 # t6 goto 2_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
    movl    $99, %eax               #   8:     return 99
    jmp     l_f0_exit              
    movl    $92887, %eax            #   9:     assign v0 <- 92887
    movl    %eax, -20(%ebp)        

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -61(%ebp)   1  [ $t22      <char> %ebp-61 ]
    #    -62(%ebp)   1  [ $t23      <char> %ebp-62 ]
    #    -63(%ebp)   1  [ $t5       <char> %ebp-63 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t8       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 72 of <array 22 of <array 46 of <array 7 of <array 37 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $68, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $17, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -63(%ebp)         
    movl    $100, %eax              #   1:     if     100 >= t5 goto 1_if_true
    movzbl  -63(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    movl    $2, %eax                #   4:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   5:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   6:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $76999, %eax            #   7:     mul    t7 <- 76999, t6
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   8:     add    t8 <- t7, 16303
    movl    $16303, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  10:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  11:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  12:     mul    t10 <- t8, t9
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     add    t11 <- t10, 48082
    movl    $48082, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  15:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  16:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  17:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     add    t14 <- t13, 33388
    movl    $33388, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  20:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  21:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  22:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  23:     add    t17 <- t16, 11204
    movl    $11204, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  24:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    16(%ebp), %eax          #  25:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  26:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  27:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    16(%ebp), %eax          #  28:     add    t21 <- v2, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $100, %eax              #  29:     assign @t21 <- 100
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $98360, %eax            #  30:     assign v0 <- 98360
    movl    %eax, 8(%ebp)          
    jmp     l_f1_0                  #  31:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    f0                      #  34:     call   t22 <- f0
    movb    %al, -61(%ebp)         
    movzbl  -61(%ebp), %eax         #  35:     return t22
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  36:     call   t23 <- dummyCHARfunc
    movb    %al, -62(%ebp)         
    movzbl  -62(%ebp), %eax         #  37:     return t23
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $68, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 72 of <array 22 of <array 46 of <array 7 of <array 37 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 35 of <array 79 of <array 25 of <array 62 of <array 12 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 61 of <array 4 of <array 38 of <array 33 of <array 15 of <int>>>>>>> %ebp+12 ]
    #   -18871840(%ebp)  18871800  [ $v2       <array 72 of <array 22 of <array 46 of <array 7 of <array 37 of <char>>>>>> %ebp-18871840 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $18871828, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $4717957, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-18871840(%ebp)      # local array 'v2': 5 dimensions
    movl    $72,-18871836(%ebp)     #   dimension 1: 72 elements
    movl    $22,-18871832(%ebp)     #   dimension 2: 22 elements
    movl    $46,-18871828(%ebp)     #   dimension 3: 46 elements
    movl    $7,-18871824(%ebp)      #   dimension 4: 7 elements
    movl    $37,-18871820(%ebp)     #   dimension 5: 37 elements

    # function body
    movl    $98, %eax               #   0:     param  3 <- 98
    pushl   %eax                   
    leal    -18871840(%ebp), %eax   #   1:     &()    t5 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     param  2 <- t5
    pushl   %eax                   
    movl    $0, %eax                #   3:     param  1 <- 0
    pushl   %eax                   
    movl    $96867, %eax            #   4:     div    t6 <- 96867, 26028
    movl    $26028, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     add    t7 <- t6, 48398
    movl    $48398, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     add    t8 <- t7, 85376
    movl    $85376, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     sub    t9 <- t8, 77147
    movl    $77147, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   8:     add    t10 <- t9, 31560
    movl    $31560, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     param  0 <- t10
    pushl   %eax                   
    call    f1                      #  10:     call   t11 <- f1
    addl    $16, %esp              
    movb    %al, -17(%ebp)         
l_f2_2_while_cond:
    movl    $97, %eax               #  12:     if     97 <= 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_3_while_body      
    jmp     l_f2_1                  #  13:     goto   1
l_f2_3_while_body:
l_f2_6_while_cond:
    movl    $97, %eax               #  16:     if     97 # 97 goto 9_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  17:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  19:     goto   8
l_f2_10_if_false:
l_f2_8:
    jmp     l_f2_6_while_cond       #  22:     goto   6_while_cond
    jmp     l_f2_2_while_cond       #  23:     goto   2_while_cond
l_f2_1:
    jmp     l_f2_13_if_true         #  25:     goto   13_if_true
    jmp     l_f2_13_if_true         #  26:     goto   13_if_true
    jmp     l_f2_14_if_false        #  27:     goto   14_if_false
l_f2_13_if_true:
    jmp     l_f2_12                 #  29:     goto   12
l_f2_14_if_false:
l_f2_12:

l_f2_exit:
    # epilogue
    addl    $18871828, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 72 of <array 22 of <array 46 of <array 7 of <array 37 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <char> %ebp-25 ]

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
    call    WriteLn                 #   0:     call   WriteLn
    jmp     l_test_exit            
    movl    $99, %eax               #   2:     param  3 <- 99
    pushl   %eax                   
    leal    v0, %eax                #   3:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  2 <- t0
    pushl   %eax                   
    call    f0                      #   5:     call   t1 <- f0
    movb    %al, -17(%ebp)         
    movl    $99, %eax               #   6:     if     99 >= t1 goto 3
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_3               
    jmp     l_test_4                #   7:     goto   4
l_test_3:
    movl    $1, %eax                #   9:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_5                #  10:     goto   5
l_test_4:
    movl    $0, %eax                #  12:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_5:
    movzbl  -18(%ebp), %eax         #  14:     param  1 <- t2
    pushl   %eax                   
    movl    $31717, %eax            #  15:     add    t3 <- 31717, 82792
    movl    $82792, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  17:     call   t4 <- f1
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
l_test_8_while_cond:
    jmp     l_test_9_while_body     #  19:     goto   9_while_body
    jmp     l_test_7                #  20:     goto   7
l_test_9_while_body:
l_test_13_while_cond:
    movl    $99, %eax               #  23:     if     99 < 97 goto 14_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_14_while_body   
    jmp     l_test_12               #  24:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  26:     goto   13_while_cond
l_test_12:
    jmp     l_test_8_while_cond     #  28:     goto   8_while_cond
l_test_7:
    movl    $4626, %eax             #  30:     assign v1 <- 4626
    movl    %eax, v1               
    jmp     l_test_16               #  31:     goto   16
l_test_16:

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
v0:                                 # <array 72 of <array 22 of <array 46 of <array 7 of <array 37 of <char>>>>>>
    .long    5
    .long   72
    .long   22
    .long   46
    .long    7
    .long   37
    .skip 18871776
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
