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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 4 of <array 8 of <array 5 of <array 1 of <array 6 of <bool>>>>>>> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyINTfunc            #   1:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $83473, %eax            #   2:     sub    t6 <- 83473, 94997
    movl    $94997, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t7 <- t6, 88568
    movl    $88568, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     return t7
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 4 of <array 8 of <array 5 of <array 1 of <array 6 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <ptr(4) to <array 4 of <array 8 of <array 5 of <array 1 of <array 6 of <bool>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <ptr(4) to <array 4 of <array 8 of <array 5 of <array 1 of <array 6 of <bool>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <ptr(4) to <array 4 of <array 8 of <array 5 of <array 1 of <array 6 of <bool>>>>>>> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t27      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t28      <ptr(4) to <array 4 of <array 8 of <array 5 of <array 1 of <array 6 of <bool>>>>>>> %ebp-88 ]
    #    -92(%ebp)   4  [ $t29      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t30      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t31      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t4       <ptr(4) to <array 4 of <array 8 of <array 5 of <array 1 of <array 6 of <bool>>>>>>> %ebp-104 ]
    #   -105(%ebp)   1  [ $t5       <bool> %ebp-105 ]
    #   -112(%ebp)   4  [ $t6       <int> %ebp-112 ]
    #   -113(%ebp)   1  [ $t7       <bool> %ebp-113 ]
    #   -114(%ebp)   1  [ $t8       <bool> %ebp-114 ]
    #   -120(%ebp)   4  [ $t9       <ptr(4) to <array 4 of <array 8 of <array 5 of <array 1 of <array 6 of <bool>>>>>>> %ebp-120 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 2 of <array 3 of <array 2 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 3 of <array 4 of <array 5 of <array 3 of <int>>>>>>> %ebp+12 ]
    #   -1104(%ebp)  984  [ $v3       <array 4 of <array 8 of <array 5 of <array 1 of <array 6 of <bool>>>>>> %ebp-1104 ]
    #   -1105(%ebp)   1  [ $v4       <bool> %ebp-1105 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1096, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $274, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1104(%ebp)          # local array 'v3': 5 dimensions
    movl    $4,-1100(%ebp)          #   dimension 1: 4 elements
    movl    $8,-1096(%ebp)          #   dimension 2: 8 elements
    movl    $5,-1092(%ebp)          #   dimension 3: 5 elements
    movl    $1,-1088(%ebp)          #   dimension 4: 1 elements
    movl    $6,-1084(%ebp)          #   dimension 5: 6 elements

    # function body
    leal    -1104(%ebp), %eax       #   0:     &()    t4 <- v3
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #   1:     param  3 <- t4
    pushl   %eax                   
    movl    $99, %eax               #   2:     param  2 <- 99
    pushl   %eax                   
    movl    $100, %eax              #   3:     param  1 <- 100
    pushl   %eax                   
    jmp     l_f1_7                  #   4:     goto   7
    jmp     l_f1_1                  #   5:     goto   1
l_f1_7:
    jmp     l_f1_1                  #   7:     goto   1
l_f1_1:
    movl    $1, %eax                #   9:     assign t5 <- 1
    movb    %al, -105(%ebp)        
    jmp     l_f1_3                  #  10:     goto   3
    movl    $0, %eax                #  11:     assign t5 <- 0
    movb    %al, -105(%ebp)        
l_f1_3:
    movzbl  -105(%ebp), %eax        #  13:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  14:     call   t6 <- f0
    addl    $16, %esp              
    movl    %eax, -112(%ebp)       
    call    dummyBOOLfunc           #  15:     call   t7 <- dummyBOOLfunc
    movb    %al, -113(%ebp)        
    movzbl  -113(%ebp), %eax        #  16:     if     t7 = 1 goto 11_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  17:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_10                 #  19:     goto   10
l_f1_12_if_false:
l_f1_10:
    movl    $99, %eax               #  22:     if     99 = 98 goto 14
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_14                
    jmp     l_f1_15                 #  23:     goto   15
l_f1_14:
    movl    $1, %eax                #  25:     assign t8 <- 1
    movb    %al, -114(%ebp)        
    jmp     l_f1_16                 #  26:     goto   16
l_f1_15:
    movl    $0, %eax                #  28:     assign t8 <- 0
    movb    %al, -114(%ebp)        
l_f1_16:
    leal    -1104(%ebp), %eax       #  30:     &()    t9 <- v3
    movl    %eax, -120(%ebp)       
    movl    $2, %eax                #  31:     param  1 <- 2
    pushl   %eax                   
    leal    -1104(%ebp), %eax       #  32:     &()    t10 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  33:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  34:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $84444, %eax            #  35:     mul    t12 <- 84444, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  36:     add    t13 <- t12, 56258
    movl    $56258, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  37:     param  1 <- 3
    pushl   %eax                   
    leal    -1104(%ebp), %eax       #  38:     &()    t14 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  39:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  40:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -28(%ebp), %eax         #  41:     mul    t16 <- t13, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  42:     add    t17 <- t16, 53736
    movl    $53736, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  43:     param  1 <- 4
    pushl   %eax                   
    leal    -1104(%ebp), %eax       #  44:     &()    t18 <- v3
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  45:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  46:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -44(%ebp), %eax         #  47:     mul    t20 <- t17, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    $26252, %eax            #  48:     add    t21 <- 26252, 40244
    movl    $40244, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  49:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $5, %eax                #  50:     param  1 <- 5
    pushl   %eax                   
    leal    -1104(%ebp), %eax       #  51:     &()    t23 <- v3
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  52:     param  0 <- t23
    pushl   %eax                   
    call    DIM                     #  53:     call   t24 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -64(%ebp), %eax         #  54:     mul    t25 <- t22, t24
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  55:     add    t26 <- t25, 74536
    movl    $74536, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  56:     mul    t27 <- t26, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    leal    -1104(%ebp), %eax       #  57:     &()    t28 <- v3
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  58:     param  0 <- t28
    pushl   %eax                   
    call    DOFS                    #  59:     call   t29 <- DOFS
    addl    $4, %esp               
    movl    %eax, -92(%ebp)        
    movl    -84(%ebp), %eax         #  60:     add    t30 <- t27, t29
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -120(%ebp), %eax        #  61:     add    t31 <- t9, t30
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movzbl  -114(%ebp), %eax        #  62:     assign @t31 <- t8
    movl    -100(%ebp), %edi       
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $1096, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 10 of <array 4 of <array 9 of <array 3 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]

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
    call    dummyINTfunc            #   0:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t5 <- t4, 60415
    movl    $60415, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     div    t6 <- t5, 7519
    movl    $7519, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t6
    jmp     l_f2_exit              
    movl    $41084, %eax            #   4:     div    t7 <- 41084, 18580
    movl    $18580, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     mul    t8 <- t7, 58427
    movl    $58427, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    $19803, %eax            #   6:     add    t9 <- 19803, t8
    movl    -32(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     return t9
    jmp     l_f2_exit              
l_f2_3_while_cond:
    jmp     l_f2_4_while_body       #   9:     goto   4_while_body
l_f2_4_while_body:
l_f2_8_while_cond:
    jmp     l_f2_7                  #  12:     goto   7
    jmp     l_f2_8_while_cond       #  13:     goto   8_while_cond
l_f2_7:
    movl    $34124, %eax            #  15:     if     34124 > 96897 goto 11_if_true
    movl    $96897, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  16:     goto   12_if_false
l_f2_11_if_true:
    jmp     l_f2_10                 #  18:     goto   10
l_f2_12_if_false:
l_f2_10:
    jmp     l_f2_3_while_cond       #  21:     goto   3_while_cond

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

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
    movl    $76953, %eax            #   0:     assign v0 <- 76953
    movl    %eax, v0               
    leal    _str_1, %eax            #   1:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   3:     call   WriteStr
    addl    $4, %esp               
l_test_3_while_cond:
    movl    $18325, %eax            #   5:     div    t1 <- 18325, 19402
    movl    $19402, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     mul    t2 <- t1, 79065
    movl    $79065, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     div    t3 <- t2, 17100
    movl    $17100, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $12231, %eax            #   8:     if     12231 < t3 goto 4_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_4_while_body    
    jmp     l_test_2                #   9:     goto   2
l_test_4_while_body:
    jmp     l_test_exit            
    movl    $100, %eax              #  12:     if     100 >= 97 goto 8_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_8_if_true       
    jmp     l_test_9_if_false       #  13:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_7                #  15:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_3_while_cond     #  18:     goto   3_while_cond
l_test_2:
    movl    $35726, %eax            #  20:     if     35726 <= 6014 goto 12_if_true
    movl    $6014, %ebx            
    cmpl    %ebx, %eax             
    jle     l_test_12_if_true      
    jmp     l_test_13_if_false      #  21:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_exit            
    jmp     l_test_11               #  24:     goto   11
l_test_13_if_false:
l_test_11:
    call    WriteLn                 #  27:     call   WriteLn

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
