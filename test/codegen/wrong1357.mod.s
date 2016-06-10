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
    #    -13(%ebp)   1  [ $t15      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t16      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t17      <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t18      <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t19      <char> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 61 of <array 67 of <array 35 of <array 66 of <array 56 of <bool>>>>>>> %ebp+12 ]

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
    jmp     l_f0_4                  #   0:     goto   4
    jmp     l_f0_5                  #   1:     goto   5
l_f0_4:
    movl    $1, %eax                #   3:     assign t15 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   4:     goto   6
l_f0_5:
    movl    $0, %eax                #   6:     assign t15 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    movzbl  -13(%ebp), %eax         #   8:     return t15
    jmp     l_f0_exit              
    jmp     l_f0_0                  #   9:     goto   0
l_f0_0:
    call    dummyCHARfunc           #  11:     call   t16 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #  12:     call   t17 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -14(%ebp), %eax         #  13:     if     t16 = t17 goto 9
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_9                 
    jmp     l_f0_10                 #  14:     goto   10
l_f0_9:
    movl    $1, %eax                #  16:     assign t18 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_11                 #  17:     goto   11
l_f0_10:
    movl    $0, %eax                #  19:     assign t18 <- 0
    movb    %al, -16(%ebp)         
l_f0_11:
    movzbl  -16(%ebp), %eax         #  21:     return t18
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  22:     call   t19 <- dummyCHARfunc
    movb    %al, -17(%ebp)         

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
    #    -16(%ebp)   4  [ $t15      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t16      <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t17      <char> %ebp-18 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 53 of <array 46 of <array 14 of <array 11 of <array 1 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 59 of <array 44 of <array 61 of <array 52 of <array 92 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
    call    ReadInt                 #   0:     call   t15 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f1_2_while_cond:
    call    dummyCHARfunc           #   2:     call   t16 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    call    dummyCHARfunc           #   3:     call   t17 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -17(%ebp), %eax         #   4:     if     t16 <= t17 goto 3_while_body
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_3_while_body      
    jmp     l_f1_1                  #   5:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   7:     goto   2_while_cond
l_f1_1:
    movl    $32023, %eax            #   9:     if     32023 = 18418 goto 6_if_true
    movl    $18418, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  10:     goto   7_if_false
l_f1_6_if_true:
l_f1_10_while_cond:
    jmp     l_f1_10_while_cond      #  13:     goto   10_while_cond
    movl    $100, %eax              #  14:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  15:     call   WriteChar
    addl    $4, %esp               
    movl    $98, %eax               #  16:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_5                  #  17:     goto   5
l_f1_7_if_false:
l_f1_5:

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
    #    -13(%ebp)   1  [ $t15      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t16      <ptr(4) to <array 59 of <array 44 of <array 61 of <array 52 of <array 92 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t17      <ptr(4) to <array 53 of <array 46 of <array 14 of <array 11 of <array 1 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t18      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t19      <char> %ebp-26 ]
    #    -32(%ebp)   4  [ $t20      <ptr(4) to <array 61 of <array 67 of <array 35 of <array 66 of <array 56 of <bool>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t21      <char> %ebp-33 ]
    #    -34(%ebp)   1  [ $t22      <bool> %ebp-34 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 42 of <array 26 of <array 73 of <array 94 of <array 66 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 84 of <array 51 of <array 56 of <array 2 of <array 94 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 58 of <array 40 of <array 68 of <array 63 of <array 85 of <int>>>>>>> %ebp+20 ]
    #    -35(%ebp)   1  [ $v4       <bool> %ebp-35 ]
    #   -375512(%ebp)  375476  [ $v5       <array 53 of <array 46 of <array 14 of <array 11 of <array 1 of <bool>>>>>> %ebp-375512 ]
    #   -757950640(%ebp)  757575128  [ $v6       <array 59 of <array 44 of <array 61 of <array 52 of <array 92 of <char>>>>>> %ebp-757950640 ]
    #   -1286644984(%ebp)  528694344  [ $v7       <array 61 of <array 67 of <array 35 of <array 66 of <array 56 of <bool>>>>>> %ebp-1286644984 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1286644972, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $321661243, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-375512(%ebp)        # local array 'v5': 5 dimensions
    movl    $53,-375508(%ebp)       #   dimension 1: 53 elements
    movl    $46,-375504(%ebp)       #   dimension 2: 46 elements
    movl    $14,-375500(%ebp)       #   dimension 3: 14 elements
    movl    $11,-375496(%ebp)       #   dimension 4: 11 elements
    movl    $1,-375492(%ebp)        #   dimension 5: 1 elements
    movl    $5,-757950640(%ebp)     # local array 'v6': 5 dimensions
    movl    $59,-757950636(%ebp)    #   dimension 1: 59 elements
    movl    $44,-757950632(%ebp)    #   dimension 2: 44 elements
    movl    $61,-757950628(%ebp)    #   dimension 3: 61 elements
    movl    $52,-757950624(%ebp)    #   dimension 4: 52 elements
    movl    $92,-757950620(%ebp)    #   dimension 5: 92 elements
    movl    $5,-1286644984(%ebp)    # local array 'v7': 5 dimensions
    movl    $61,-1286644980(%ebp)   #   dimension 1: 61 elements
    movl    $67,-1286644976(%ebp)   #   dimension 2: 67 elements
    movl    $35,-1286644972(%ebp)   #   dimension 3: 35 elements
    movl    $66,-1286644968(%ebp)   #   dimension 4: 66 elements
    movl    $56,-1286644964(%ebp)   #   dimension 5: 56 elements

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $39578, %eax            #   1:     if     39578 >= 36949 goto 4_if_true
    movl    $36949, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_4_if_true         
    jmp     l_f2_5_if_false         #   2:     goto   5_if_false
l_f2_4_if_true:
    jmp     l_f2_3                  #   4:     goto   3
l_f2_5_if_false:
l_f2_3:
    movl    $1, %eax                #   7:     if     1 = 0 goto 8
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_8                 
    jmp     l_f2_9                  #   8:     goto   9
l_f2_8:
    movl    $1, %eax                #  10:     assign t15 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_10                 #  11:     goto   10
l_f2_9:
    movl    $0, %eax                #  13:     assign t15 <- 0
    movb    %al, -13(%ebp)         
l_f2_10:
    movzbl  -13(%ebp), %eax         #  15:     assign v4 <- t15
    movb    %al, -35(%ebp)         
l_f2_13_while_cond:
    jmp     l_f2_13_while_cond      #  17:     goto   13_while_cond
    jmp     l_f2_15                 #  18:     goto   15
l_f2_15:
    jmp     l_f2_0                  #  20:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_19_while_cond:
    movl    $56039, %eax            #  24:     param  3 <- 56039
    pushl   %eax                   
    leal    -757950640(%ebp), %eax  #  25:     &()    t16 <- v6
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     param  2 <- t16
    pushl   %eax                   
    leal    -375512(%ebp), %eax     #  27:     &()    t17 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  28:     param  1 <- t17
    pushl   %eax                   
    movl    $100, %eax              #  29:     if     100 > 99 goto 22
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_22                
    jmp     l_f2_23                 #  30:     goto   23
l_f2_22:
    movl    $1, %eax                #  32:     assign t18 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_24                 #  33:     goto   24
l_f2_23:
    movl    $0, %eax                #  35:     assign t18 <- 0
    movb    %al, -25(%ebp)         
l_f2_24:
    movzbl  -25(%ebp), %eax         #  37:     param  0 <- t18
    pushl   %eax                   
    call    f1                      #  38:     call   t19 <- f1
    addl    $16, %esp              
    movb    %al, -26(%ebp)         
    movl    $97, %eax               #  39:     if     97 < t19 goto 20_while_body
    movzbl  -26(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_20_while_body     
    jmp     l_f2_18                 #  40:     goto   18
l_f2_20_while_body:
    jmp     l_f2_26                 #  42:     goto   26
l_f2_26:
    jmp     l_f2_19_while_cond      #  44:     goto   19_while_cond
l_f2_18:
    leal    -1286644984(%ebp), %eax #  46:     &()    t20 <- v7
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  47:     param  1 <- t20
    pushl   %eax                   
    call    dummyCHARfunc           #  48:     call   t21 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  49:     param  0 <- t21
    pushl   %eax                   
    call    f0                      #  50:     call   t22 <- f0
    addl    $8, %esp               
    movb    %al, -34(%ebp)         

l_f2_exit:
    # epilogue
    addl    $1286644972, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <ptr(4) to <array 61 of <array 67 of <array 35 of <array 66 of <array 56 of <bool>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t14      <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $t2       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t3       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t4       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t5       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t6       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t7       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t8       <int> %ebp-68 ]
    #    -69(%ebp)   1  [ $t9       <char> %ebp-69 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $60, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $15, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $43184, %eax            #   0:     sub    t0 <- 43184, 44415
    movl    $44415, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t1 <- t0, 89161
    movl    $89161, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t2 <- t1, 83858
    movl    $83858, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   3:     sub    t3 <- t2, 59970
    movl    $59970, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   4:     sub    t4 <- t3, 84039
    movl    $84039, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   5:     sub    t5 <- t4, 49477
    movl    $49477, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   6:     sub    t6 <- t5, 6334
    movl    $6334, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   7:     add    t7 <- t6, 41013
    movl    $41013, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   8:     sub    t8 <- t7, 21372
    movl    $21372, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #   9:     param  0 <- t8
    pushl   %eax                   
    call    WriteInt                #  10:     call   WriteInt
    addl    $4, %esp               
l_test_2_while_cond:
    jmp     l_test_3_while_body     #  12:     goto   3_while_body
l_test_3_while_body:
    jmp     l_test_2_while_cond     #  14:     goto   2_while_cond
    call    dummyCHARfunc           #  15:     call   t9 <- dummyCHARfunc
    movb    %al, -69(%ebp)         
    call    dummyINTfunc            #  16:     call   t10 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     div    t11 <- t10, 98724
    movl    $98724, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     mul    t12 <- t11, 88647
    movl    $88647, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     assign v0 <- t12
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_11_if_false      #  21:     goto   11_if_false
    jmp     l_test_12               #  22:     goto   12
l_test_12:
    leal    v1, %eax                #  24:     &()    t13 <- v1
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  25:     param  1 <- t13
    pushl   %eax                   
    movl    $99, %eax               #  26:     param  0 <- 99
    pushl   %eax                   
    call    f0                      #  27:     call   t14 <- f0
    addl    $8, %esp               
    movb    %al, -37(%ebp)         
    movl    $6123, %eax             #  28:     assign v0 <- 6123
    movl    %eax, v0               
    jmp     l_test_exit            
    movl    $14881, %eax            #  30:     assign v0 <- 14881
    movl    %eax, v0               
    jmp     l_test_9                #  31:     goto   9
l_test_11_if_false:
l_test_9:

l_test_exit:
    # epilogue
    addl    $60, %esp               # remove locals
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
v1:                                 # <array 61 of <array 67 of <array 35 of <array 66 of <array 56 of <bool>>>>>>
    .long    5
    .long   61
    .long   67
    .long   35
    .long   66
    .long   56
    .skip 528694320








    # end of global data section
    #-----------------------------------------

    .end
##################################################
