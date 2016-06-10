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
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t27      <bool> %ebp-81 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $t6       <bool> %ebp-93 ]
    #   -100(%ebp)   4  [ $t7       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t8       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t9       <int> %ebp-108 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 3 of <array 8 of <array 4 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 9 of <array 2 of <array 5 of <array 7 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 8 of <array 1 of <array 6 of <array 7 of <char>>>>>>> %ebp+20 ]
    #   -109(%ebp)   1  [ $v4       <char> %ebp-109 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $100, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $25, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t6 <- dummyBOOLfunc
    movb    %al, -93(%ebp)         
    movl    $86708, %eax            #   1:     add    t7 <- 86708, 9330
    movl    $9330, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   2:     sub    t8 <- t7, 27316
    movl    $27316, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   3:     add    t9 <- t8, 99964
    movl    $99964, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #   4:     add    t10 <- t9, 17398
    movl    $17398, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $68163, %eax            #   5:     if     68163 <= t10 goto 2_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   6:     goto   3_if_false
l_f0_2_if_true:
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   9:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  10:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $96685, %eax            #  11:     mul    t12 <- 96685, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     add    t13 <- t12, 25924
    movl    $25924, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  13:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  14:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  15:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  16:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  17:     add    t16 <- t15, 62289
    movl    $62289, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  18:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  19:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  20:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  21:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  22:     add    t19 <- t18, 55209
    movl    $55209, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  23:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  24:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  25:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  26:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  27:     add    t22 <- t21, 53642
    movl    $53642, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  28:     mul    t23 <- t22, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    20(%ebp), %eax          #  29:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  30:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  31:     add    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    20(%ebp), %eax          #  32:     add    t26 <- v3, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $99, %eax               #  33:     assign @t26 <- 99
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyBOOLfunc           #  34:     call   t27 <- dummyBOOLfunc
    movb    %al, -81(%ebp)         
    jmp     l_f0_1                  #  35:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyINTfunc            #  38:     call   t28 <- dummyINTfunc
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  39:     sub    t29 <- t28, 76878
    movl    $76878, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  40:     return t29
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $100, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $v0       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

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
    movl    $100, %eax              #   0:     assign v0 <- 100
    movb    %al, -14(%ebp)         
    jmp     l_f1_exit              
    jmp     l_f1_1                  #   2:     goto   1
l_f1_1:
    call    dummyCHARfunc           #   4:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   5:     if     t6 > 100 goto 7_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_7_if_true         
    jmp     l_f1_8_if_false         #   6:     goto   8_if_false
l_f1_7_if_true:
l_f1_11_while_cond:
    movl    $100, %eax              #   9:     if     100 < 99 goto 12_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_12_while_body     
    jmp     l_f1_10                 #  10:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  12:     goto   11_while_cond
l_f1_10:
    movl    $20986, %eax            #  14:     assign v1 <- 20986
    movl    %eax, -20(%ebp)        
    jmp     l_f1_exit              
    jmp     l_f1_6                  #  16:     goto   6
l_f1_8_if_false:
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t7       <ptr(4) to <array 1 of <array 8 of <array 1 of <array 6 of <array 7 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <ptr(4) to <array 7 of <array 9 of <array 2 of <array 5 of <array 7 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <ptr(4) to <array 3 of <array 3 of <array 8 of <array 4 of <array 4 of <bool>>>>>>> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 7 of <array 8 of <array 8 of <array 8 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 9 of <array 9 of <array 3 of <array 5 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #    -36(%ebp)   4  [ $v4       <int> %ebp-36 ]
    #   -1212(%ebp)  1176  [ $v5       <array 3 of <array 3 of <array 8 of <array 4 of <array 4 of <bool>>>>>> %ebp-1212 ]
    #   -5648(%ebp)  4434  [ $v6       <array 7 of <array 9 of <array 2 of <array 5 of <array 7 of <bool>>>>>> %ebp-5648 ]
    #   -6008(%ebp)  360  [ $v7       <array 1 of <array 8 of <array 1 of <array 6 of <array 7 of <char>>>>>> %ebp-6008 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $5996, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1499, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1212(%ebp)          # local array 'v5': 5 dimensions
    movl    $3,-1208(%ebp)          #   dimension 1: 3 elements
    movl    $3,-1204(%ebp)          #   dimension 2: 3 elements
    movl    $8,-1200(%ebp)          #   dimension 3: 8 elements
    movl    $4,-1196(%ebp)          #   dimension 4: 4 elements
    movl    $4,-1192(%ebp)          #   dimension 5: 4 elements
    movl    $5,-5648(%ebp)          # local array 'v6': 5 dimensions
    movl    $7,-5644(%ebp)          #   dimension 1: 7 elements
    movl    $9,-5640(%ebp)          #   dimension 2: 9 elements
    movl    $2,-5636(%ebp)          #   dimension 3: 2 elements
    movl    $5,-5632(%ebp)          #   dimension 4: 5 elements
    movl    $7,-5628(%ebp)          #   dimension 5: 7 elements
    movl    $5,-6008(%ebp)          # local array 'v7': 5 dimensions
    movl    $1,-6004(%ebp)          #   dimension 1: 1 elements
    movl    $8,-6000(%ebp)          #   dimension 2: 8 elements
    movl    $1,-5996(%ebp)          #   dimension 3: 1 elements
    movl    $6,-5992(%ebp)          #   dimension 4: 6 elements
    movl    $7,-5988(%ebp)          #   dimension 5: 7 elements

    # function body
    call    f1                      #   0:     call   f1
l_f2_2_while_cond:
    movl    $99, %eax               #   2:     if     99 = 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
l_f2_6_while_cond:
    jmp     l_f2_5                  #   6:     goto   5
    jmp     l_f2_6_while_cond       #   7:     goto   6_while_cond
l_f2_5:
    call    dummyCHARfunc           #   9:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_f2_2_while_cond       #  10:     goto   2_while_cond
l_f2_1:
    movl    $97, %eax               #  12:     if     97 >= 97 goto 10_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  13:     goto   11_if_false
l_f2_10_if_true:
    movl    $96927, %eax            #  15:     assign v4 <- 96927
    movl    %eax, -36(%ebp)        
    leal    -6008(%ebp), %eax       #  16:     &()    t7 <- v7
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     param  3 <- t7
    pushl   %eax                   
    leal    -5648(%ebp), %eax       #  18:     &()    t8 <- v6
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     param  2 <- t8
    pushl   %eax                   
    leal    -1212(%ebp), %eax       #  20:     &()    t9 <- v5
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     param  1 <- t9
    pushl   %eax                   
    movl    $93638, %eax            #  22:     param  0 <- 93638
    pushl   %eax                   
    call    f0                      #  23:     call   t10 <- f0
    addl    $16, %esp              
    movl    %eax, -16(%ebp)        
    jmp     l_f2_9                  #  24:     goto   9
l_f2_11_if_false:
l_f2_9:

l_f2_exit:
    # epilogue
    addl    $5996, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 1 of <array 8 of <array 1 of <array 6 of <array 7 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <array 9 of <array 2 of <array 5 of <array 7 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 3 of <array 3 of <array 8 of <array 4 of <array 4 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]

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
l_test_1_while_cond:
    jmp     l_test_exit            
    call    dummyINTfunc            #   2:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_1_while_cond     #   3:     goto   1_while_cond
    jmp     l_test_exit            
l_test_7_while_cond:
    leal    v2, %eax                #   6:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     param  3 <- t1
    pushl   %eax                   
    leal    v1, %eax                #   8:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     param  2 <- t2
    pushl   %eax                   
    leal    v0, %eax                #  10:     &()    t3 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     param  1 <- t3
    pushl   %eax                   
    movl    $76876, %eax            #  12:     param  0 <- 76876
    pushl   %eax                   
    call    f0                      #  13:     call   t4 <- f0
    addl    $16, %esp              
    movl    %eax, -32(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_7_while_cond     #  15:     goto   7_while_cond
    jmp     l_test_13_if_false      #  16:     goto   13_if_false
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  18:     call   t5 <- dummyBOOLfunc
    movb    %al, -33(%ebp)         
    jmp     l_test_11               #  19:     goto   11
l_test_13_if_false:
l_test_11:

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v0:                                 # <array 3 of <array 3 of <array 8 of <array 4 of <array 4 of <bool>>>>>>
    .long    5
    .long    3
    .long    3
    .long    8
    .long    4
    .long    4
    .skip 1152
v1:                                 # <array 7 of <array 9 of <array 2 of <array 5 of <array 7 of <bool>>>>>>
    .long    5
    .long    7
    .long    9
    .long    2
    .long    5
    .long    7
    .skip 4410
    .align   4
v2:                                 # <array 1 of <array 8 of <array 1 of <array 6 of <array 7 of <char>>>>>>
    .long    5
    .long    1
    .long    8
    .long    1
    .long    6
    .long    7
    .skip  336








    # end of global data section
    #-----------------------------------------

    .end
##################################################
