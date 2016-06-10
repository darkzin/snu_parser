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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 8 of <array 4 of <array 6 of <array 1 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 6 of <array 4 of <array 2 of <array 4 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]

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
    call    dummyINTfunc            #   0:     call   t6 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $74402, %eax            #   1:     add    t7 <- 74402, 48746
    movl    $48746, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     sub    t8 <- t7, 49767
    movl    $49767, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     add    t9 <- t8, 88834
    movl    $88834, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     if     t9 >= 62128 goto 2_if_true
    movl    $62128, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   5:     goto   3_if_false
l_f0_2_if_true:
l_f0_6_while_cond:
    movl    $55032, %eax            #   8:     if     55032 = 67110 goto 7_while_body
    movl    $67110, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_7_while_body      
    jmp     l_f0_5                  #   9:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #  11:     goto   6_while_cond
l_f0_5:
    jmp     l_f0_1                  #  13:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyBOOLfunc           #  16:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 10 of <array 6 of <array 4 of <array 2 of <array 4 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 4 of <array 8 of <array 4 of <array 6 of <array 1 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t13      <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t14      <bool> %ebp-23 ]
    #    -24(%ebp)   1  [ $t6       <char> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t8       <char> %ebp-26 ]
    #    -27(%ebp)   1  [ $t9       <bool> %ebp-27 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 5 of <array 10 of <array 8 of <array 3 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 10 of <array 1 of <array 9 of <array 10 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 7 of <array 7 of <array 5 of <array 10 of <array 10 of <bool>>>>>>> %ebp+20 ]
    #   -820(%ebp)  792  [ $v5       <array 4 of <array 8 of <array 4 of <array 6 of <array 1 of <bool>>>>>> %ebp-820 ]
    #   -8524(%ebp)  7704  [ $v6       <array 10 of <array 6 of <array 4 of <array 2 of <array 4 of <int>>>>>> %ebp-8524 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8512, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2128, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-820(%ebp)           # local array 'v5': 5 dimensions
    movl    $4,-816(%ebp)           #   dimension 1: 4 elements
    movl    $8,-812(%ebp)           #   dimension 2: 8 elements
    movl    $4,-808(%ebp)           #   dimension 3: 4 elements
    movl    $6,-804(%ebp)           #   dimension 4: 6 elements
    movl    $1,-800(%ebp)           #   dimension 5: 1 elements
    movl    $5,-8524(%ebp)          # local array 'v6': 5 dimensions
    movl    $10,-8520(%ebp)         #   dimension 1: 10 elements
    movl    $6,-8516(%ebp)          #   dimension 2: 6 elements
    movl    $4,-8512(%ebp)          #   dimension 3: 4 elements
    movl    $2,-8508(%ebp)          #   dimension 4: 2 elements
    movl    $4,-8504(%ebp)          #   dimension 5: 4 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -24(%ebp)         
    movzbl  -24(%ebp), %eax         #   1:     if     t6 < 98 goto 1
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_1                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t7 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t7 <- 0
    movb    %al, -25(%ebp)         
l_f1_3:
    movzbl  -25(%ebp), %eax         #   9:     return t7
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  10:     call   t8 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  11:     if     t8 < 99 goto 6
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_6                 
    jmp     l_f1_7                  #  12:     goto   7
l_f1_6:
    movl    $1, %eax                #  14:     assign t9 <- 1
    movb    %al, -27(%ebp)         
    jmp     l_f1_8                  #  15:     goto   8
l_f1_7:
    movl    $0, %eax                #  17:     assign t9 <- 0
    movb    %al, -27(%ebp)         
l_f1_8:
    movzbl  -27(%ebp), %eax         #  19:     return t9
    jmp     l_f1_exit              
    movl    $99, %eax               #  20:     param  3 <- 99
    pushl   %eax                   
    leal    -8524(%ebp), %eax       #  21:     &()    t10 <- v6
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  22:     param  2 <- t10
    pushl   %eax                   
    leal    -820(%ebp), %eax        #  23:     &()    t11 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     param  1 <- t11
    pushl   %eax                   
    movl    $1, %eax                #  25:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_17                 #  26:     goto   17
    movl    $0, %eax                #  27:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f1_17:
    movzbl  -21(%ebp), %eax         #  29:     param  0 <- t12
    pushl   %eax                   
    call    f0                      #  30:     call   t13 <- f0
    addl    $16, %esp              
    movb    %al, -22(%ebp)         
    movl    $97, %eax               #  31:     if     97 > t13 goto 11
    movzbl  -22(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_11                
    jmp     l_f1_12                 #  32:     goto   12
l_f1_11:
    movl    $1, %eax                #  34:     assign t14 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f1_13                 #  35:     goto   13
l_f1_12:
    movl    $0, %eax                #  37:     assign t14 <- 0
    movb    %al, -23(%ebp)         
l_f1_13:
    movzbl  -23(%ebp), %eax         #  39:     return t14
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $8512, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
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
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t32      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t33      <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t34      <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t6       <ptr(4) to <array 7 of <array 7 of <array 5 of <array 10 of <array 10 of <bool>>>>>>> %ebp-116 ]
    #   -120(%ebp)   4  [ $t7       <ptr(4) to <array 4 of <array 10 of <array 1 of <array 9 of <array 10 of <bool>>>>>>> %ebp-120 ]
    #   -124(%ebp)   4  [ $t8       <ptr(4) to <array 3 of <array 5 of <array 10 of <array 8 of <array 3 of <char>>>>>>> %ebp-124 ]
    #   -125(%ebp)   1  [ $t9       <bool> %ebp-125 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 9 of <array 1 of <array 8 of <array 1 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 10 of <array 5 of <array 6 of <array 6 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 4 of <array 8 of <array 1 of <array 3 of <bool>>>>>>> %ebp+16 ]
    #   -3752(%ebp)  3624  [ $v4       <array 3 of <array 5 of <array 10 of <array 8 of <array 3 of <char>>>>>> %ebp-3752 ]
    #   -7376(%ebp)  3624  [ $v5       <array 4 of <array 10 of <array 1 of <array 9 of <array 10 of <bool>>>>>> %ebp-7376 ]
    #   -31900(%ebp)  24524  [ $v6       <array 7 of <array 7 of <array 5 of <array 10 of <array 10 of <bool>>>>>> %ebp-31900 ]
    #   -31901(%ebp)   1  [ $v7       <bool> %ebp-31901 ]
    #   -31908(%ebp)   4  [ $v8       <int> %ebp-31908 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $31896, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7974, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3752(%ebp)          # local array 'v4': 5 dimensions
    movl    $3,-3748(%ebp)          #   dimension 1: 3 elements
    movl    $5,-3744(%ebp)          #   dimension 2: 5 elements
    movl    $10,-3740(%ebp)         #   dimension 3: 10 elements
    movl    $8,-3736(%ebp)          #   dimension 4: 8 elements
    movl    $3,-3732(%ebp)          #   dimension 5: 3 elements
    movl    $5,-7376(%ebp)          # local array 'v5': 5 dimensions
    movl    $4,-7372(%ebp)          #   dimension 1: 4 elements
    movl    $10,-7368(%ebp)         #   dimension 2: 10 elements
    movl    $1,-7364(%ebp)          #   dimension 3: 1 elements
    movl    $9,-7360(%ebp)          #   dimension 4: 9 elements
    movl    $10,-7356(%ebp)         #   dimension 5: 10 elements
    movl    $5,-31900(%ebp)         # local array 'v6': 5 dimensions
    movl    $7,-31896(%ebp)         #   dimension 1: 7 elements
    movl    $7,-31892(%ebp)         #   dimension 2: 7 elements
    movl    $5,-31888(%ebp)         #   dimension 3: 5 elements
    movl    $10,-31884(%ebp)        #   dimension 4: 10 elements
    movl    $10,-31880(%ebp)        #   dimension 5: 10 elements

    # function body
    leal    -31900(%ebp), %eax      #   0:     &()    t6 <- v6
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #   1:     param  3 <- t6
    pushl   %eax                   
    leal    -7376(%ebp), %eax       #   2:     &()    t7 <- v5
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #   3:     param  2 <- t7
    pushl   %eax                   
    movl    $99, %eax               #   4:     param  1 <- 99
    pushl   %eax                   
    leal    -3752(%ebp), %eax       #   5:     &()    t8 <- v4
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #   6:     param  0 <- t8
    pushl   %eax                   
    call    f1                      #   7:     call   t9 <- f1
    addl    $16, %esp              
    movb    %al, -125(%ebp)        
    movl    $2, %eax                #   8:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #   9:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  10:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $80992, %eax            #  11:     mul    t11 <- 80992, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $47297, %eax            #  12:     div    t12 <- 47297, 51473
    movl    $51473, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     mul    t13 <- t12, 95658
    movl    $95658, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     div    t14 <- t13, 61913
    movl    $61913, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -20(%ebp), %eax         #  15:     add    t15 <- t11, t14
    movl    -32(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  16:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  17:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  18:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  19:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  20:     add    t18 <- t17, 91124
    movl    $91124, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  21:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  22:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  23:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  24:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  25:     add    t21 <- t20, 22624
    movl    $22624, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $5, %eax                #  26:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  27:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  28:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  29:     mul    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  30:     add    t24 <- t23, 12200
    movl    $12200, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  31:     mul    t25 <- t24, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    16(%ebp), %eax          #  32:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  33:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  34:     add    t27 <- t25, t26
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    16(%ebp), %eax          #  35:     add    t28 <- v3, t27
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $1, %eax                #  36:     assign @t28 <- 1
    movl    -88(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $75582, %eax            #  37:     div    t29 <- 75582, 59183
    movl    $59183, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  38:     mul    t30 <- t29, 37033
    movl    $37033, %ebx           
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  39:     div    t31 <- t30, 30047
    movl    $30047, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #  40:     mul    t32 <- t31, 76609
    movl    $76609, %ebx           
    imull   %ebx                   
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  41:     div    t33 <- t32, 95604
    movl    $95604, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  42:     div    t34 <- t33, 83660
    movl    $83660, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  43:     assign v8 <- t34
    movl    %eax, -31908(%ebp)     

l_f2_exit:
    # epilogue
    addl    $31896, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 10 of <array 6 of <array 4 of <array 2 of <array 4 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 4 of <array 8 of <array 4 of <array 6 of <array 1 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t4       <char> %ebp-23 ]
    #    -24(%ebp)   1  [ $t5       <bool> %ebp-24 ]

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
    movl    $93935, %eax            #   0:     assign v0 <- 93935
    movl    %eax, v0               
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #   4:     goto   2_while_cond
l_test_1:
    movl    $97, %eax               #   6:     param  3 <- 97
    pushl   %eax                   
    leal    v3, %eax                #   7:     &()    t0 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     param  2 <- t0
    pushl   %eax                   
    leal    v2, %eax                #   9:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  1 <- t1
    pushl   %eax                   
    call    dummyBOOLfunc           #  11:     call   t2 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  12:     if     t2 = 1 goto 9
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_9               
    jmp     l_test_7                #  13:     goto   7
l_test_9:
    jmp     l_test_7                #  15:     goto   7
    movl    $1, %eax                #  16:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_8                #  17:     goto   8
l_test_7:
    movl    $0, %eax                #  19:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_8:
    movzbl  -22(%ebp), %eax         #  21:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  22:     call   t4 <- f0
    addl    $16, %esp              
    movb    %al, -23(%ebp)         
    movzbl  -23(%ebp), %eax         #  23:     assign v1 <- t4
    movb    %al, v1                
    call    dummyBOOLfunc           #  24:     call   t5 <- dummyBOOLfunc
    movb    %al, -24(%ebp)         
    call    WriteLn                 #  25:     call   WriteLn

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 4 of <array 8 of <array 4 of <array 6 of <array 1 of <bool>>>>>>
    .long    5
    .long    4
    .long    8
    .long    4
    .long    6
    .long    1
    .skip  768
v3:                                 # <array 10 of <array 6 of <array 4 of <array 2 of <array 4 of <int>>>>>>
    .long    5
    .long   10
    .long    6
    .long    4
    .long    2
    .long    4
    .skip 7680








    # end of global data section
    #-----------------------------------------

    .end
##################################################
