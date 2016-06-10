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
    #    -73(%ebp)   1  [ $t25      <bool> %ebp-73 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 2 of <array 9 of <array 10 of <array 4 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 10 of <array 4 of <array 7 of <array 2 of <int>>>>>>> %ebp+12 ]
    #    -96(%ebp)   4  [ $v3       <int> %ebp-96 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $2, %eax                #   0:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   1:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   2:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $42490, %eax            #   3:     mul    t7 <- 42490, t6
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   4:     add    t8 <- t7, 80194
    movl    $80194, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #   5:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   6:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #   7:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #   8:     mul    t10 <- t8, t9
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $82324, %eax            #   9:     add    t11 <- 82324, 94686
    movl    $94686, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     sub    t12 <- t11, 92917
    movl    $92917, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     sub    t13 <- t12, 60970
    movl    $60970, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -16(%ebp), %eax         #  12:     add    t14 <- t10, t13
    movl    -28(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  13:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  14:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  15:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  16:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  17:     add    t17 <- t16, 3288
    movl    $3288, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  18:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  19:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  20:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  21:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  22:     add    t20 <- t19, 13815
    movl    $13815, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  23:     mul    t21 <- t20, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    12(%ebp), %eax          #  24:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  25:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  26:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    12(%ebp), %eax          #  27:     add    t24 <- v2, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $91867, %eax            #  28:     assign @t24 <- 91867
    movl    -72(%ebp), %edi        
    movl    %eax, (%edi)           
    jmp     l_f0_2_if_true          #  29:     goto   2_if_true
l_f0_2_if_true:
    movl    $97, %eax               #  31:     return 97
    jmp     l_f0_exit              
    jmp     l_f0_1                  #  32:     goto   1
l_f0_1:
    jmp     l_f0_11_if_false        #  34:     goto   11_if_false
    jmp     l_f0_9                  #  35:     goto   9
l_f0_11_if_false:
l_f0_9:
    jmp     l_f0_14_if_false        #  38:     goto   14_if_false
    jmp     l_f0_12                 #  39:     goto   12
l_f0_14_if_false:
l_f0_12:
    movl    $99, %eax               #  42:     return 99
    jmp     l_f0_exit              
    call    dummyProcedure          #  43:     call   dummyProcedure
    call    dummyBOOLfunc           #  44:     call   t25 <- dummyBOOLfunc
    movb    %al, -73(%ebp)         
    movl    $1, %eax                #  45:     if     1 # 1 goto 19_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_19_if_true        
    jmp     l_f0_20_if_false        #  46:     goto   20_if_false
l_f0_19_if_true:
    jmp     l_f0_18                 #  48:     goto   18
l_f0_20_if_false:
l_f0_18:
l_f0_23_while_cond:
    movl    $1643, %eax             #  52:     if     1643 # 73065 goto 24_while_body
    movl    $73065, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_24_while_body     
    jmp     l_f0_22                 #  53:     goto   22
l_f0_24_while_body:
    jmp     l_f0_23_while_cond      #  55:     goto   23_while_cond
l_f0_22:
    movl    $0, %eax                #  57:     if     0 = 1 goto 27_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_27_if_true        
    jmp     l_f0_28_if_false        #  58:     goto   28_if_false
l_f0_27_if_true:
    jmp     l_f0_26                 #  60:     goto   26
l_f0_28_if_false:
l_f0_26:
    jmp     l_f0_6                  #  63:     goto   6
l_f0_6:

l_f0_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 2 of <array 1 of <array 1 of <array 9 of <char>>>>>>> %ebp+8 ]
    #    -29(%ebp)   1  [ $v2       <char> %ebp-29 ]

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
l_f1_1_while_cond:
    call    dummyINTfunc            #   1:     call   t6 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f1_1_while_cond       #   2:     goto   1_while_cond
    call    dummyCHARfunc           #   3:     call   t7 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   4:     assign v2 <- t7
    movb    %al, -29(%ebp)         
    movl    $26251, %eax            #   5:     mul    t8 <- 26251, 42732
    movl    $42732, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     div    t9 <- t8, 73037
    movl    $73037, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     if     t9 < 20037 goto 11_if_true
    movl    $20037, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_11_if_true        
    jmp     l_f1_12_if_false        #   8:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_14                 #  10:     goto   14
l_f1_14:
    jmp     l_f1_exit              
l_f1_19_while_cond:
    jmp     l_f1_19_while_cond      #  14:     goto   19_while_cond
    jmp     l_f1_10                 #  15:     goto   10
l_f1_12_if_false:
l_f1_10:

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <ptr(4) to <array 4 of <array 10 of <array 4 of <array 7 of <array 2 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <ptr(4) to <array 5 of <array 2 of <array 9 of <array 10 of <array 4 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <char> %ebp-25 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 4 of <array 2 of <array 6 of <array 8 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 5 of <array 1 of <array 3 of <array 8 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 7 of <array 3 of <array 9 of <array 9 of <char>>>>>>> %ebp+16 ]
    #    -26(%ebp)   1  [ $v4       <bool> %ebp-26 ]
    #   -14452(%ebp)  14424  [ $v5       <array 5 of <array 2 of <array 9 of <array 10 of <array 4 of <int>>>>>> %ebp-14452 ]
    #   -23436(%ebp)  8984  [ $v6       <array 4 of <array 10 of <array 4 of <array 7 of <array 2 of <int>>>>>> %ebp-23436 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $23424, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5856, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-14452(%ebp)         # local array 'v5': 5 dimensions
    movl    $5,-14448(%ebp)         #   dimension 1: 5 elements
    movl    $2,-14444(%ebp)         #   dimension 2: 2 elements
    movl    $9,-14440(%ebp)         #   dimension 3: 9 elements
    movl    $10,-14436(%ebp)        #   dimension 4: 10 elements
    movl    $4,-14432(%ebp)         #   dimension 5: 4 elements
    movl    $5,-23436(%ebp)         # local array 'v6': 5 dimensions
    movl    $4,-23432(%ebp)         #   dimension 1: 4 elements
    movl    $10,-23428(%ebp)        #   dimension 2: 10 elements
    movl    $4,-23424(%ebp)         #   dimension 3: 4 elements
    movl    $7,-23420(%ebp)         #   dimension 4: 7 elements
    movl    $2,-23416(%ebp)         #   dimension 5: 2 elements

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
l_f2_4_while_cond:
    movl    $97, %eax               #   2:     if     97 >= 97 goto 5_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_5_while_body      
    jmp     l_f2_3                  #   3:     goto   3
l_f2_5_while_body:
    jmp     l_f2_4_while_cond       #   5:     goto   4_while_cond
l_f2_3:
    movl    $99, %eax               #   7:     if     99 > 97 goto 8
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_8                 
    jmp     l_f2_9                  #   8:     goto   9
l_f2_8:
    movl    $1, %eax                #  10:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_10                 #  11:     goto   10
l_f2_9:
    movl    $0, %eax                #  13:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f2_10:
    movzbl  -13(%ebp), %eax         #  15:     assign v4 <- t6
    movb    %al, -26(%ebp)         
l_f2_13_while_cond:
    jmp     l_f2_12                 #  17:     goto   12
    jmp     l_f2_13_while_cond      #  18:     goto   13_while_cond
l_f2_12:
l_f2_16_while_cond:
    movl    $100, %eax              #  21:     if     100 >= 98 goto 17_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_17_while_body     
    jmp     l_f2_15                 #  22:     goto   15
l_f2_17_while_body:
    jmp     l_f2_16_while_cond      #  24:     goto   16_while_cond
l_f2_15:
    jmp     l_f2_0                  #  26:     goto   0
l_f2_2_if_false:
l_f2_0:
    leal    -23436(%ebp), %eax      #  29:     &()    t7 <- v6
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  30:     param  1 <- t7
    pushl   %eax                   
    leal    -14452(%ebp), %eax      #  31:     &()    t8 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  32:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  33:     call   t9 <- f0
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $23424, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 4 of <array 10 of <array 4 of <array 7 of <array 2 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <array 2 of <array 9 of <array 10 of <array 4 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <bool> %ebp-30 ]

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
    movl    $77058, %eax            #   0:     if     77058 >= 41698 goto 1_if_true
    movl    $41698, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $60608, %eax            #   3:     assign v0 <- 60608
    movl    %eax, v0               
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   5:     goto   6_while_cond
    leal    _str_1, %eax            #   6:     &()    t0 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     param  0 <- t0
    pushl   %eax                   
    call    WriteStr                #   8:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_0                #   9:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_13               #  12:     goto   13
    jmp     l_test_13               #  13:     goto   13
    jmp     l_test_13               #  14:     goto   13
    jmp     l_test_14               #  15:     goto   14
l_test_13:
    movl    $1, %eax                #  17:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_15               #  18:     goto   15
l_test_14:
    movl    $0, %eax                #  20:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_15:
    movzbl  -17(%ebp), %eax         #  22:     if     t1 = 0 goto 10_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_10_if_true      
    jmp     l_test_11_if_false      #  23:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #  25:     goto   9
l_test_11_if_false:
l_test_9:
    movl    $86037, %eax            #  28:     if     86037 > 1159 goto 23_if_true
    movl    $1159, %ebx            
    cmpl    %ebx, %eax             
    jg      l_test_23_if_true      
    jmp     l_test_24_if_false      #  29:     goto   24_if_false
l_test_23_if_true:
    movl    $0, %eax                #  31:     assign v1 <- 0
    movb    %al, v1                
    leal    v3, %eax                #  32:     &()    t2 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  33:     param  1 <- t2
    pushl   %eax                   
    leal    v2, %eax                #  34:     &()    t3 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  35:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  36:     call   t4 <- f0
    addl    $8, %esp               
    movb    %al, -29(%ebp)         
    jmp     l_test_28               #  37:     goto   28
l_test_28:
    jmp     l_test_22               #  39:     goto   22
l_test_24_if_false:
l_test_22:
    jmp     l_test_exit            
l_test_33_while_cond:
    jmp     l_test_32               #  44:     goto   32
    movl    $0, %eax                #  45:     if     0 # 0 goto 36_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_36_if_true      
    jmp     l_test_37_if_false      #  46:     goto   37_if_false
l_test_36_if_true:
    jmp     l_test_35               #  48:     goto   35
l_test_37_if_false:
l_test_35:
    call    dummyBOOLfunc           #  51:     call   t5 <- dummyBOOLfunc
    movb    %al, -30(%ebp)         
    jmp     l_test_42_if_false      #  52:     goto   42_if_false
    jmp     l_test_40               #  53:     goto   40
l_test_42_if_false:
l_test_40:
    jmp     l_test_45_if_false      #  56:     goto   45_if_false
    jmp     l_test_43               #  57:     goto   43
l_test_45_if_false:
l_test_43:
    movl    $100, %eax              #  60:     assign v4 <- 100
    movb    %al, v4                
    jmp     l_test_33_while_cond    #  61:     goto   33_while_cond
l_test_32:

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <array 5 of <array 2 of <array 9 of <array 10 of <array 4 of <int>>>>>>
    .long    5
    .long    5
    .long    2
    .long    9
    .long   10
    .long    4
    .skip 14400
v3:                                 # <array 4 of <array 10 of <array 4 of <array 7 of <array 2 of <int>>>>>>
    .long    5
    .long    4
    .long   10
    .long    4
    .long    7
    .long    2
    .skip 8960
v4:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
