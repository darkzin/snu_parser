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
    #    -33(%ebp)   1  [ $t15      <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 4 of <array 8 of <array 8 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 6 of <array 7 of <array 5 of <array 9 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]
    #    -56(%ebp)   4  [ $v5       <int> %ebp-56 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $85181, %eax            #   0:     div    t6 <- 85181, 41575
    movl    $41575, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   1:     assign v5 <- t6
    movl    %eax, -56(%ebp)        
    movl    $60806, %eax            #   2:     sub    t7 <- 60806, 92159
    movl    $92159, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   3:     add    t8 <- t7, 92072
    movl    $92072, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   4:     sub    t9 <- t8, 33517
    movl    $33517, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   5:     sub    t10 <- t9, 12270
    movl    $12270, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     sub    t11 <- t10, 88364
    movl    $88364, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     sub    t12 <- t11, 21500
    movl    $21500, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     add    t13 <- t12, 66728
    movl    $66728, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     if     t13 < 5879 goto 2_if_true
    movl    $5879, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #  10:     goto   3_if_false
l_f0_2_if_true:
    call    dummyINTfunc            #  12:     call   t14 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    jmp     l_f0_6                  #  13:     goto   6
l_f0_6:
    movl    $97, %eax               #  15:     assign v4 <- 97
    movb    %al, 20(%ebp)          
    jmp     l_f0_1                  #  16:     goto   1
l_f0_3_if_false:
l_f0_1:
    jmp     l_f0_15                 #  19:     goto   15
    movl    $1, %eax                #  20:     assign t15 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f0_16                 #  21:     goto   16
l_f0_15:
    movl    $0, %eax                #  23:     assign t15 <- 0
    movb    %al, -33(%ebp)         
l_f0_16:
    movzbl  -33(%ebp), %eax         #  25:     if     t15 # 1 goto 11_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  26:     goto   12_if_false
l_f0_11_if_true:
    movl    $25026, %eax            #  28:     assign v5 <- 25026
    movl    %eax, -56(%ebp)        
    jmp     l_f0_10                 #  29:     goto   10
l_f0_12_if_false:
l_f0_10:

l_f0_exit:
    # epilogue
    addl    $44, %esp               # remove locals
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
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t26      <bool> %ebp-77 ]
    #    -84(%ebp)   4  [ $t27      <ptr(4) to <array 4 of <array 6 of <array 7 of <array 5 of <array 9 of <bool>>>>>>> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <ptr(4) to <array 5 of <array 4 of <array 8 of <array 8 of <array 8 of <int>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -93(%ebp)   1  [ $t6       <char> %ebp-93 ]
    #    -94(%ebp)   1  [ $t7       <char> %ebp-94 ]
    #   -100(%ebp)   4  [ $t8       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t9       <int> %ebp-104 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 4 of <array 1 of <array 7 of <array 3 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 9 of <array 7 of <array 4 of <array 2 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 7 of <array 4 of <array 3 of <array 3 of <array 3 of <char>>>>>>> %ebp+20 ]
    #   -41088(%ebp)  40984  [ $v5       <array 5 of <array 4 of <array 8 of <array 8 of <array 8 of <int>>>>>> %ebp-41088 ]
    #   -48672(%ebp)  7584  [ $v6       <array 4 of <array 6 of <array 7 of <array 5 of <array 9 of <bool>>>>>> %ebp-48672 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $48660, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $12165, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-41088(%ebp)         # local array 'v5': 5 dimensions
    movl    $5,-41084(%ebp)         #   dimension 1: 5 elements
    movl    $4,-41080(%ebp)         #   dimension 2: 4 elements
    movl    $8,-41076(%ebp)         #   dimension 3: 8 elements
    movl    $8,-41072(%ebp)         #   dimension 4: 8 elements
    movl    $8,-41068(%ebp)         #   dimension 5: 8 elements
    movl    $5,-48672(%ebp)         # local array 'v6': 5 dimensions
    movl    $4,-48668(%ebp)         #   dimension 1: 4 elements
    movl    $6,-48664(%ebp)         #   dimension 2: 6 elements
    movl    $7,-48660(%ebp)         #   dimension 3: 7 elements
    movl    $5,-48656(%ebp)         #   dimension 4: 5 elements
    movl    $9,-48652(%ebp)         #   dimension 5: 9 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -93(%ebp)         
    call    dummyCHARfunc           #   1:     call   t7 <- dummyCHARfunc
    movb    %al, -94(%ebp)         
    movl    $2, %eax                #   2:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #   3:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #   4:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -100(%ebp)       
    movl    $15604, %eax            #   5:     mul    t9 <- 15604, t8
    movl    -100(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   6:     add    t10 <- t9, 61694
    movl    $61694, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #   8:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #   9:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  10:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     add    t13 <- t12, 56713
    movl    $56713, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  13:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  14:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  15:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    $65445, %eax            #  16:     add    t16 <- 65445, 89736
    movl    $89736, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  17:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  19:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  20:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  21:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  22:     add    t20 <- t19, 13206
    movl    $13206, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  23:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    20(%ebp), %eax          #  24:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  25:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  26:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    20(%ebp), %eax          #  27:     add    t24 <- v4, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movzbl  -94(%ebp), %eax         #  28:     assign @t24 <- t7
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $100, %eax              #  29:     param  3 <- 100
    pushl   %eax                   
    movl    $17753, %eax            #  30:     div    t25 <- 17753, 6127
    movl    $6127, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  31:     if     t25 >= 49615 goto 3
    movl    $49615, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_3                 
    jmp     l_f1_4                  #  32:     goto   4
l_f1_3:
    movl    $1, %eax                #  34:     assign t26 <- 1
    movb    %al, -77(%ebp)         
    jmp     l_f1_5                  #  35:     goto   5
l_f1_4:
    movl    $0, %eax                #  37:     assign t26 <- 0
    movb    %al, -77(%ebp)         
l_f1_5:
    movzbl  -77(%ebp), %eax         #  39:     param  2 <- t26
    pushl   %eax                   
    leal    -48672(%ebp), %eax      #  40:     &()    t27 <- v6
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  41:     param  1 <- t27
    pushl   %eax                   
    leal    -41088(%ebp), %eax      #  42:     &()    t28 <- v5
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  43:     param  0 <- t28
    pushl   %eax                   
    call    f0                      #  44:     call   t29 <- f0
    addl    $16, %esp              
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  45:     return t29
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $48660, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v1       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $v2       <char> %ebp-22 ]

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
    movl    $43148, %eax            #   0:     if     43148 = 27579 goto 5
    movl    $27579, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_5                 
    jmp     l_f2_6                  #   1:     goto   6
l_f2_5:
    movl    $1, %eax                #   3:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_7                  #   4:     goto   7
l_f2_6:
    movl    $0, %eax                #   6:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f2_7:
    movzbl  -13(%ebp), %eax         #   8:     assign v1 <- t6
    movb    %al, -21(%ebp)         
    movl    $97, %eax               #   9:     assign v2 <- 97
    movb    %al, -22(%ebp)         
    jmp     l_f2_0                  #  10:     goto   0
l_f2_0:
    jmp     l_f2_11                 #  12:     goto   11
l_f2_11:
    movl    $1, %eax                #  14:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_13                 #  15:     goto   13
    movl    $0, %eax                #  16:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f2_13:
    movzbl  -14(%ebp), %eax         #  18:     assign v1 <- t7
    movb    %al, -21(%ebp)         
    call    ReadInt                 #  19:     call   t8 <- ReadInt
    movl    %eax, -20(%ebp)        

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <char> %ebp-30 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    movl    $98, %eax               #   2:     assign v0 <- 98
    movb    %al, v0                
    movl    $52018, %eax            #   3:     sub    t1 <- 52018, 60161
    movl    $60161, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     sub    t2 <- t1, 18585
    movl    $18585, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     add    t3 <- t2, 79100
    movl    $79100, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $56082, %eax            #   6:     if     56082 # t3 goto 4
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_4               
    jmp     l_test_5                #   7:     goto   5
l_test_4:
    movl    $1, %eax                #   9:     assign t4 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_6                #  10:     goto   6
l_test_5:
    movl    $0, %eax                #  12:     assign t4 <- 0
    movb    %al, -29(%ebp)         
l_test_6:
    movzbl  -29(%ebp), %eax         #  14:     assign v1 <- t4
    movb    %al, v1                
l_test_9_while_cond:
    call    dummyCHARfunc           #  16:     call   t5 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
    movl    $100, %eax              #  17:     if     100 > t5 goto 10_while_body
    movzbl  -30(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_10_while_body   
    jmp     l_test_8                #  18:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  20:     goto   9_while_cond
l_test_8:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
